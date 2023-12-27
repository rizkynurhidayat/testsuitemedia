import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testsuitemedia/user_model.dart';

class MyController extends GetxController {
  TextEditingController nama = TextEditingController();
  TextEditingController isPalindrome = TextEditingController();

  var userSelected = "Selected user Name".obs;


void selecUser(Data user){
userSelected.value = "${user.firstName}  ${user.lastName}";
}

  void checkPoli() {
    List<String> letters = isPalindrome.text.split('');
    List<String> reversedLetters = letters.reversed.toList();
    print(letters);
    print(reversedLetters);
    // print(letters.first == reversedLetters.first && letters.last == reversedLetters.last);

    if (letters.first == reversedLetters.first) {
      Get.defaultDialog(
          title: "Check Polindrome",
          middleText: "Is Polindrome",
          // onCancel: () {
          //   Get.back();

          // },
          onConfirm: () {
            Get.back();
          });
    } else {
      Get.defaultDialog(
          title: "Check Polindrome",
          middleText: "Is Not Polindrome",
          // onCancel: () {
          //   Get.back();

          // },
          onConfirm: () {
            Get.back();
          });
    }
  }

}
