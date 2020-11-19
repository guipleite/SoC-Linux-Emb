#include <stdio.h>
#include "system.h"
#include <alt_types.h>
#include <io.h> /* Leiutura e escrita no Avalon */

int delay(int n){
      unsigned int delay = 0 ;
      while(delay < n){
          delay++;
      }
}

int main(void){
  unsigned int led = 0;
  int vel;


  while(1){

	  if ((IORD_32DIRECT(PIO_SWITCHES_BASE,0) & 0x01) && !(IORD_32DIRECT(PIO_SWITCHES_BASE,0) & 0x02)){
		  vel = 50000;
	  }
	  else if (!(IORD_32DIRECT(PIO_SWITCHES_BASE,0) & 0x01) && (IORD_32DIRECT(PIO_SWITCHES_BASE,0) & 0x02)){
		  vel = 100000;
	  }
	  else if (IORD_32DIRECT(PIO_SWITCHES_BASE,0) & 0x03){
		  vel = 5000;
	  }
	  else{
		  vel = 3000;
	  }


	  if (IORD_32DIRECT(PIO_SWITCHES_BASE,0) & 0x08){

			  if (led <= 3){
				  if(IORD_32DIRECT(PIO_SWITCHES_BASE,0) & 0x04){
					  IOWR_32DIRECT(PIO_MOTOR_BASE, 0, 0x08 >> led++);

				  }
				  else{
					  IOWR_32DIRECT(PIO_MOTOR_BASE, 0, 0x01 << led++);

				  }
				  usleep(vel);
			  }
			  else{
				  led = 0;
			  }
	  }
  };

  return 0;
}
