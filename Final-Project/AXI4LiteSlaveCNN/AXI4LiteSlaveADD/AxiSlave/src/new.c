#include "xparameters.h"
#include "xil_io.h"

volatile unsigned int *AXIAddr0 = (volatile unsigned int *) XPAR_AXI4_LITE_SLAVE_0_BASEADDR;

int main()
{
	int i;
	unsigned int out;

	xil_printf("Start ... ");
	for(;;)
	{
		xil_printf("---------Revised sum of Registers ---------\n\r");
		for(i = 0; i < 32;i ++)
		{
			Xil_Out32((UINTPTR)(AXIAddr0+i), 1000+i);
			xil_printf("Write %d --> Addr[%d}\n\r", 1000+i, i);
		}
		sleep(1);
		for(i =0; i < 32;i ++)
		{
			out = Xil_In32((UINTPTR)(AXIAddr0+i));
			xil_printf("Read  %d --> Addr[%d]\n\r",out, i);
		}
		sleep(1);

		xil_printf("Send start\n\r");
		Xil_Out32((UINTPTR)(AXIAddr0+32), 0);
		int done = 0;
		while (done == 0){
			done= Xil_In32((UINTPTR)(AXIAddr0+33));
		}
		xil_printf("Done received.\n\r");

		out = Xil_In32((UINTPTR)(AXIAddr0+34));
		xil_printf("Result %d\n\r", out);
	}
		xil_printf("Finished.\n\r");

}
