import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testsuitemedia/controller.dart';
import 'package:testsuitemedia/service.dart';
import 'package:testsuitemedia/user_model.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    var api = Get.put(Service());
    var c = Get.put(MyController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: FutureBuilder(
            future: api.getUser(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var a = snapshot.data!.body as Map<String, dynamic>;
                var us = User.fromJson(a);
                var listD = us.data!;

                return SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                        listD.length,
                        (index) => ListTile(
                          onTap: (){
                            c.selecUser(listD[index]);
                            Get.back();
                          },
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Image.network(listD[index].avatar!),
                              ),
                              title: Text("${listD[index].firstName} ${listD[index].lastName}"),
                              subtitle: Text(listD[index].email!),
                            )),
                  ),
                );
              }
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                title: Text("Name"),
                subtitle: Text("Email"),
              );
            }),
      ),
    );
  }
}
