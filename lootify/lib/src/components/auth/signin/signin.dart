import 'package:flutter/material.dart';
import 'package:lootify/src/components/auth/forgotPassword/forgot_password.dart';
import 'package:lootify/src/components/auth/lootify_auth_card.dart';
import 'package:lootify/src/components/auth/lootify_auth_header.dart';
import 'package:lootify/src/components/auth/signup/signup.dart';
import 'package:lootify/stacks/bottomTab/bottom_tab.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<StatefulWidget> createState() => SigninComponent();
}

class SigninComponent extends State<Signin> {
  final _userNameController = TextEditingController(text: "Vishwakanth");
  final _passwordController = TextEditingController(text: "Password@123");
  bool showPassword = false;

  @override
  void dispose() {
    super.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
  }

  void _handleForgotPasswordTap() {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const ForgotPassword()));
  }

  void _handleSignupTap() {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const Signup()));
  }

  void _handleSignin() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => const LootifyBottomTab()));
    // Navigator.of(context).replace(oldRoute: MaterialPageRoute(builder: (ctx) => const Signin()), newRoute: MaterialPageRoute(builder: (ctx) => const LootifyBottomTab()));
  }

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lootify"),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(5),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const LootifyAuthHeader(),
                LootifyAuthCard(
                  child: Column(children: [
                    TextField(
                      controller: _userNameController,
                      // maxLength: 20,
                      decoration: const InputDecoration(
                        label: Text("Username/Email"),
                        // hintText: "Enter your first name"
                      ),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextField(
                      controller: _passwordController,
                      obscureText: showPassword,
                      decoration: const InputDecoration(
                        label: Text("Password"),
                      ),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: _handleForgotPasswordTap,
                          child: Text(
                            "Forgot Password?",
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.black, fontSize: 14),
                          )),
                    ),
                    Container(margin: const EdgeInsets.only(top: 15, bottom: 0), child: ElevatedButton(onPressed: _handleSignin, child: const Text("Signin"))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                        ),
                        TextButton(
                            onPressed: _handleSignupTap,
                            child: Text(
                              "Signup",
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.green, fontSize: 14),
                            ))
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
