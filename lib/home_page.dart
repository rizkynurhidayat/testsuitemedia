import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testsuitemedia/controller.dart';
import 'package:testsuitemedia/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var c = Get.put(MyController());
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: Get.width,
          height: Get.height,
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(colors: [
          //   Colors.lightBlueAccent,
          //   Colors.blue,
          // ], begin: Alignment.topRight, end: Alignment.bottomRight)),
child:  Image.asset(
          "assets/background.png",
          width: Get.width,
          height: Get.height,
          fit: BoxFit.cover,
        ),
        ),
       
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 50,
              // ),
              CircleAvatar(
                radius: 60,
                child: Icon(
                  Icons.person_add_alt_1,
                  size: 40,
                  color: Colors.white,
                ),
                backgroundColor: Colors.white.withOpacity(0.4),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "nama",
                    // fillColor: Colors.white
                  ),
                  keyboardType: TextInputType.name,
                  controller: c.nama,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIconColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Polindrome",
                      fillColor: Colors.white),
                  keyboardType: TextInputType.text,
                  controller: c.isPalindrome,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    c.checkPoli();
                  },
                  child: Text("check"),
                  style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      backgroundColor:
                          MaterialStatePropertyAll(Color.fromRGBO( 49, 99, 123, 1)),
                      fixedSize:
                          MaterialStatePropertyAll(Size(Get.width, 30)))),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(SecondPage());
                },
                child: Text("Next"),
                style: ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    backgroundColor:
                        MaterialStatePropertyAll(Color.fromRGBO( 49, 99, 123, 1)),
                    fixedSize: MaterialStatePropertyAll(Size(Get.width, 30))),
              ),
              // SizedBox(
              //   height: 80,
              // ),
            ],
          ),
        ),
      ],
    ));
  }
}
