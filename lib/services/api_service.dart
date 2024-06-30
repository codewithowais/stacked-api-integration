import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_api_integration/models/product_model.dart';
import 'package:learn_api_integration/models/user_model.dart';

class ApiService {
  // String baseUrl = 'https://fakestoreapi.com/products/';
  String baseUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<List<UserModel>> getUsersData() async {
    var url = Uri.parse(baseUrl);
    var response = await http.get(url);
    var users = jsonDecode(response.body);
    // var userss = users.map((user) => UserModel.fromJson(user)).toList();
    List<UserModel> listOfUsers = [];
    for (var user in users) {
      listOfUsers.add(UserModel.fromJson(user));
    }
    print(users);
    return listOfUsers;
  }

  getUsersDataById(id) async {
    var url = Uri.parse('${baseUrl}/${id}');
    var response = await http.get(url);
    var users = jsonDecode(response.body);
    return users;
  }

  postUsersData(data) async {
    var url = Uri.parse(baseUrl);
    var response = await http.post(url, body: data);
    var users = jsonDecode(response.body);
    return users;
  }
}
