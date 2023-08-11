import 'dart:math';

class BmiBrain {
  final int height;

  final int weight;
 late double result ;
  BmiBrain(this.height, this.weight);


  double calculateBMI() {
    result =weight / pow(height / 100, 2);
    return result ;
  }
  String checkBMI(){
    if(result >25 ){
      return 'Over weight';
    }
    if(result>=18.5){
      return 'Normal';
    }
    return 'Under weight';
  }
}
