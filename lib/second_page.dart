import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testsuitemedia/third_page.dart';

import 'controller.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    var c = Get.put(MyController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Wellcome",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              subtitle: Text(
                c.nama.text,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Expanded(
                child: Center(
              child: Obx(
                ()=> Text(
                 c.userSelected.value,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            )),
             ElevatedButton(
                  onPressed: () {
                   Get.to(ThirdPage());
                  },
                  child: Text("Chose a user"),
                  style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      backgroundColor:
                         MaterialStatePropertyAll(Color.fromRGBO( 49, 99, 123, 1)),
                      fixedSize:
                          MaterialStatePropertyAll(Size(Get.width, 30)))),
          ],
        ),
      ),
    );
  }
}
