import 'package:get/get.dart';

class PaymentController extends GetxController {
  var products = 0.obs;
  RxDouble pricess = 0.0.obs;
  
  int get sum=>products.value;

  increment() {
    products.value++;

    double temp = pricess.value + 450;
    pricess(temp);

  }
  
  decrement() {
    if(products.value <=0){

    }else{
      products.value--;
    }

    double temp = pricess.value - 450;
    pricess(temp);
    
  }

}
