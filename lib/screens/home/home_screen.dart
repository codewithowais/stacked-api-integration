import 'package:flutter/material.dart';
import "package:learn_api_integration/app/app.router.dart";
import "package:learn_api_integration/screens/home/home_viewmodel.dart";
import "package:stacked/stacked.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewmodell, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: [
              const Text(
                "Home Screen",
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                onPressed: () {
                  viewmodell.navigatioService.navigateToAboutScreen();
                },
                child: const Text("Go To About"),
              ),
              ElevatedButton(
                onPressed: () {
                  viewmodell.navigatioService.navigateToContactScreen();
                },
                child: const Text("Go To Contact"),
              ),
              ElevatedButton(
                onPressed: () {
                  viewmodell.getUsers();
                },
                child: const Text("Get Users Data"),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: viewmodell.users.length,
                  itemBuilder: (context, index) {
                    return Text("${viewmodell.users[index]['name']}");
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
