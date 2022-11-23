import 'package:get/get.dart';

class ViewCartController extends GetxController {
  var product = 0.obs;
  RxDouble price = 0.0.obs;

  int get sum => product.value;

  increment() {
    product.value++;

    double temp = price.value + 450;
    price(temp);
    
  }

  decrement() {
    if (product.value <= 0) {
    } else {
      product.value--;

      double temp = price.value - 450;
      price(temp);
    }
  }
}
