import 'package:flutter/material.dart';
import 'package:learn_api_integration/screens/about/about_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AboutViewmodel(),
      builder: (context, viewmodell, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: [
              const Text(
                "About Screen",
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Go To Contact"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Go To Home"),
              )
            ],
          ),
        );
      },
    );
  }
}
