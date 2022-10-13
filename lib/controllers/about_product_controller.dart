import 'package:get/get.dart';

class AboutProductController extends GetxController {
  var productcount = 0.obs;
  RxDouble prices = 0.0.obs;

  
  int get sum=>productcount.value;

  increment() {
    productcount.value++;
    
    double temp = prices.value + 450;
    prices(temp);

  }
  
  decrement() {
    if(productcount.value <=0){

    }else{
      productcount.value--;
    }

    double temp = prices.value - 450;
    prices(temp);
    
  }

}
