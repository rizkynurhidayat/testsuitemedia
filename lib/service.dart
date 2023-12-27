import 'package:get/get.dart';

class Service extends GetConnect{
  Future<Response> getUser({int id = 50}) => get('https://reqres.in/api/users?page=1&per_page=$id');
}