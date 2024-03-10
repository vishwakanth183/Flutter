import 'package:flutter/material.dart';
import 'package:lootify/src/components/auth/lootify_auth_card.dart';
import 'package:lootify/src/components/auth/signin/signin.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<StatefulWidget> createState() => ProfileComponent();
}

class ProfileComponent extends State<Profile> {
  handleIconPress(String name) {
    if (name == "Logout") {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => const Signin()));
    }
  }

  final sampleUrl =
      "https://images.pexels.com/photos/1040880/pexels-photo-1040880.jpeg?auto=compress&cs=tinysrgb&w=600";

  // ignore: non_constant_identifier_names
  Widget SettingsSection(String sectionName, IconData sectionIcon) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(sectionName),
            IconButton(
                onPressed: () {
                  handleIconPress(sectionName);
                },
                icon: Icon(sectionIcon))
          ],
        ),
        const Divider()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        offset: const Offset(1.0, 1.0),
                        blurRadius:90.0,
                        spreadRadius: 2.0,
                      ),
                    ]),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(sampleUrl),
                      radius: 60,
                    ),
                  ),
                ),
                Positioned(
                    top: 90,
                    left: 75,
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.black),
                        child: IconButton(
                            style: const ButtonStyle(
                                elevation: MaterialStatePropertyAll(9)),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera,
                              color: Colors.white,
                              size: 25,
                            ))))
              ],
            ),
            LootifyAuthCard(
                child: Column(
              children: [
                SettingsSection("Manage Address", Icons.edit_location_outlined),
                SettingsSection("Wishlist", Icons.favorite_border),
                SettingsSection("Coupons", Icons.discount_outlined),
                SettingsSection("My Orders", Icons.history),
                SettingsSection("FAQ", Icons.question_mark_outlined),
                SettingsSection("Contact us", Icons.phone),
                SettingsSection("Terms & Conditions", Icons.info_outlined),
                SettingsSection("Logout", Icons.logout_outlined)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
