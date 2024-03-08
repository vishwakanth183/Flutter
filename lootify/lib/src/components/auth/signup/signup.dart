import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lootify/src/components/auth/lootify_auth_card.dart';
import 'package:lootify/src/components/auth/lootify_auth_header.dart';

var format = DateFormat.yMMMd();

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<StatefulWidget> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // get formatDate{
  //   return format.format(_dateController.value as DateTime);
  // }

  final _firstnameController = TextEditingController(text: "Vishwakanth");
  final _lastnameController = TextEditingController(text: "S");
  final _phoneNumberController = TextEditingController(text: "6380272457");
  final _passwordController = TextEditingController(text: "Password@123");
  final _confirmPasswordController = TextEditingController(text: "Password@123");
  final _emailController = TextEditingController(text: "vishwavirat774@gmail.com");
  final _dateController = TextEditingController(text: format.format(DateTime.now()).toString());
  // String? _selectedGender;
  // final List _genderList = ["Male", "Female", "Others"];
  DateTime selectedDOB = DateTime.now();
  bool showPassword = false;
  bool showConfirmPassword = false;

  void handleDOB() {
    // print("inside handleDOB");
    final DateTime initialDate = selectedDOB;
    final DateTime lastDate = DateTime.now();
    final DateTime firstDate = DateTime(lastDate.year - 2, lastDate.month, lastDate.day);
    showDatePicker(context: context, firstDate: firstDate, lastDate: lastDate, initialDate: initialDate)
        .then((value) => {selectedDOB = value as DateTime, _dateController.text = format.format(value)});
  }

  void handlePasswordVisbility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  void handleConfirmPasswordVisbility() {
    setState(() {
      showConfirmPassword = !showConfirmPassword;
    });
  }

  @override
  void dispose() {
    _firstnameController.dispose();
    _lastnameController.dispose();
    _emailController.dispose();
    _dateController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Signup",
          style: TextStyle(fontFamily: "Poppins"),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const LootifyAuthHeader(),
              LootifyAuthCard(
                child: Column(
                  children: [
                    TextField(
                      controller: _firstnameController,
                      // maxLength: 20,
                      decoration: const InputDecoration(
                        label: Text("Firstname"),
                        // hintText: "Enter your first name"
                      ),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextField(
                      controller: _lastnameController,
                      // maxLength: 20,
                      decoration: const InputDecoration(
                        label: Text("Lastname"),
                      ),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    // Row(
                    //   children: [
                    //     DropdownButton(
                    //         style: Theme.of(context).textTheme.bodyMedium,
                    //         value: _selectedGender,
                    //         items: _genderList.map((listValue) => DropdownMenuItem(value: listValue, child: Text(listValue.toString()))).toList(),
                    //         hint: const Text("Select Gender"),
                    //         onChanged: (value) {
                    //           setState(() {
                    //             _selectedGender = value.toString();
                    //           });
                    //         }),
                    //   ],
                    // ),
                    TextField(
                      controller: _emailController,
                      style: Theme.of(context).textTheme.bodyMedium,
                      decoration: const InputDecoration(
                        label: Text("Email"),
                      ),
                    ),
                    TextField(
                      controller: _phoneNumberController,
                      style: Theme.of(context).textTheme.bodyMedium,
                      decoration: const InputDecoration(
                        label: Text("Contact"),
                      ),
                    ),
                    TextField(
                        controller: _passwordController,
                        obscureText: showPassword,
                        decoration: const InputDecoration(
                          label: Text("Password"),
                          // suffix: IconButton(
                          //   onPressed: handlePasswordVisbility,
                          //   icon: Icon(
                          //     !showPassword
                          //         ? Icons.no_encryption_gmailerrorred_rounded
                          //         : Icons.remove_red_eye,
                          //     color: Colors.purple,
                          //   ),
                          // ),
                        ),
                        style: Theme.of(context).textTheme.bodyMedium),
                    TextField(
                      controller: _confirmPasswordController,
                      obscureText: showConfirmPassword,
                      decoration: const InputDecoration(
                        label: Text("Confirm Password"),
                        // suffix: IconButton(
                        //   onPressed: handleConfirmPasswordVisbility,
                        //   style: ButtonStyle(
                        //     padding: MaterialStateProperty.all(EdgeInsets.zero),
                        //     // backgroundColor: MaterialStateColor.resolveWith(
                        //     //     (states) => Colors.amber),
                        //   ),
                        //   alignment: Alignment.center,
                        //   icon: Icon(
                        //       !showPassword
                        //           ? Icons.no_encryption_gmailerrorred_rounded
                        //           : Icons.remove_red_eye,
                        //       color: Colors.purple),
                        // ),
                      ),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextField(
                      readOnly: true,
                      controller: _dateController,
                      decoration: InputDecoration(
                          label: const Text("DOB"),
                          suffixIcon: IconButton(
                              onPressed: handleDOB,
                              icon: const Icon(
                                Icons.calendar_month_sharp,
                                color: Colors.purple,
                              ))),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Container(margin: const EdgeInsets.only(top: 10), child: ElevatedButton(onPressed: () {}, child: const Text("Register")))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
