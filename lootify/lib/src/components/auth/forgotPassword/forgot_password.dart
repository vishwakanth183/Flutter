import 'package:flutter/material.dart';
import 'package:lootify/src/components/auth/lootify_auth_card.dart';
import 'package:lootify/src/components/auth/lootify_auth_header.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<StatefulWidget> createState() => ForgotPasswordComponent();
}

class ForgotPasswordComponent extends State<ForgotPassword> {
  final _resetMailController = TextEditingController(text: "vishwavirat774@gmail.com");

  @override
  void dispose() {
    super.dispose();
    _resetMailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forgot Password")),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(5),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const LootifyAuthHeader(),
                LootifyAuthCard(
                  child: Column(
                    children: [
                      TextField(
                        controller: _resetMailController,
                        // maxLength: 20,
                        decoration: const InputDecoration(
                          label: Text("Registered Email"),
                          // hintText: "Enter your first name"
                        ),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Container(margin: const EdgeInsets.only(top: 15, bottom: 15), child: ElevatedButton(onPressed: () {}, child: const Text("Forgot Password")))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
