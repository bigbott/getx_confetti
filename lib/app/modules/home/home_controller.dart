import 'package:confetti/confetti.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  late ConfettiController confettiController;

  @override
  void onInit() {
    confettiController = ConfettiController(duration: const Duration(seconds: 2));
    super.onInit();
  }

  void confirmOrder() {
    // imagine logic here

    bool success = placeOrder();
    if (success){
      confettiController.play();
    }
  }
  
  bool placeOrder() {
    // imagine logic here
    return true; 
  }

  @override
  void onClose() {
    confettiController.dispose();
    super.onClose();
  }

}
