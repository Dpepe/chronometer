class CounterCronometro {

  int counter = 0, counterMiliLeft = 5, counterMiliRight = 9, counterSegLeft = 4, counterSegRight = 9, counterMinLeft = 8, counterMinRight = 8, counterHoraLeft = 2, counterHoraRight = 1; 

  reset(){
    counterMiliLeft = 0;
    counterMiliRight = 0;
    counterSegLeft = 0;
    counterSegRight = 0; 
    counterMinLeft = 0;
    counterMinRight = 0; 
    counterHoraLeft = 0;
    counterHoraRight = 0; 
  }

  incrementCounter() {
    
    if(counterMiliRight<9){
      counterMiliRight++;
    }else{
      counterMiliRight = 0;
      /*if(counterMiliLeft<9){
        counterMiliLeft++;
      } else{
        counterMiliLeft = 0;*/
      if(counterSegRight<9){
      counterSegRight++;
      } else {
        counterSegRight=0;
        if(counterSegLeft < 5){
          counterSegLeft++; 
        } else {
          counterSegLeft = 0;
          if(counterMinRight<9){
            counterMinRight++;
          } else {
            counterMinRight = 0;
            if(counterMinLeft<5){
              counterMinLeft++;
            } else {
              counterMinLeft = 0;
              if(counterHoraRight<3){
                counterHoraRight++; 
              }else {
                counterHoraRight = 0; 
                if(counterHoraLeft<2){
                  counterHoraLeft++;
                }else{
                  counterHoraLeft = 0;
                }
              }
            }
          }
        } 
      }
    }
  }
}