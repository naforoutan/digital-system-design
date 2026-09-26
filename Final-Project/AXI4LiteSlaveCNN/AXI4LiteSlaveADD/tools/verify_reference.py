from pathlib import Path

IMAGE_W = 64
IMAGE_H = 64
WINDOW_W = 9
WINDOW_H = 12
THRESHOLD = 160

TEMPLATE_4 = int("10180C0FE7F198D87C3C1C0E020", 16)
TEMPLATE_5 = int("001F1F8C060301F8FC06031F8F8", 16)

# Palette-index to grayscale mapping used by the supplied BMP.
PALETTE_TO_GRAY = {
    0x00: 0,
    0x07: 192,
    0x08: 208,
    0x49: 36,
    0x52: 64,
    0x5B: 92,
    0x9B: 100,
    0xA4: 128,
    0xF6: 251,
    0xF7: 160,
    0xFF: 255,
}


def load_image(path: Path) -> list[list[int]]:
    lines = [line.strip() for line in path.read_text().splitlines() if line.strip()]
    assert len(lines) == IMAGE_H
    image = []
    for line in lines:
        indices = [int(line[i : i + 2], 16) for i in range(0, 128, 2)]
        image.append([PALETTE_TO_GRAY[value] for value in indices])
    return image


def pack_window(image: list[list[int]], x: int, y: int) -> int:
    value = 0
    for row in range(WINDOW_H):
        for col in range(WINDOW_W):
            bit = row * WINDOW_W + col
            if image[y + row][x + col] < THRESHOLD:
                value |= 1 << bit
    return value


def score(window: int, template: int) -> int:
    total = 0
    for bit in range(WINDOW_W * WINDOW_H):
        if (window >> bit) & 1:
            total += 2 if ((template >> bit) & 1) else -1
    return total


def main() -> None:
    default_input = Path(__file__).resolve().parents[1] / "input-64x64.txt"
    import sys
    image_path = Path(sys.argv[1]) if len(sys.argv) > 1 else default_input
    image = load_image(image_path)

    for label, template in ((4, TEMPLATE_4), (5, TEMPLATE_5)):
        best = (-32768, 0, 0)
        for y in range(IMAGE_H - WINDOW_H + 1):
            for x in range(IMAGE_W - WINDOW_W + 1):
                current = score(pack_window(image, x, y), template)
                if current > best[0]:
                    best = (current, x, y)
        print(f"digit {label}: score={best[0]}, top-left=({best[1]},{best[2]})")


if __name__ == "__main__":
    main()
