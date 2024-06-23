import 'package:flutter/material.dart';
import 'package:learn_api_integration/screens/contact/contact_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ContactViewmodel(),
      builder: (context, viewmodell, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: [
              const Text(
                "Contact Screen",
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Go To Home"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Go To About"),
              )
            ],
          ),
        );
      },
    );
  }
}
