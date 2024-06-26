import 'package:flutter/material.dart';

import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:pattip/components/circle_button.dart';
import 'package:pattip/components/colors.dart';
import 'package:pattip/components/constants.dart';
import 'package:pattip/pages/login_page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPattern.gr,
        body: ListView(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 15, vertical: 20),
            children: [
              Text(
                " P R O F I L E",
                style: Values.txtstyle4,
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Stack(
                  children: [
                    InstaImageViewer(
                      backgroundColor: const Color.fromRGBO(235, 241, 239, 1),
                      child: CircleAvatar(
                        radius: 75,
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(75)),
                              image: DecorationImage(
                                  image: AssetImage('assets/shibin.jpg'))),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: IconButton.filled(
                        style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(ColorPattern.rd)),
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) => Container(
                                    height: 150,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(18),
                                            topRight: Radius.circular(18))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Profile photo",
                                          style: Values.txtstyle3,
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            CircleButton(
                                                size: 55,
                                                icons:
                                                    Icons.camera_alt_outlined),
                                            CircleButton(
                                                size: 55, icons: Icons.image),
                                            CircleButton(
                                                size: 55, icons: Icons.delete),
                                          ],
                                        )
                                      ],
                                    ),
                                  ));
                        },
                        icon: const Icon(
                          size: 30,
                          Icons.camera_alt_outlined,
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              //  NAME

              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: const Expanded(
                        child: TextField(
                          decoration: InputDecoration(hintText: "Name"),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17)),
                      title: const Text(" ENTER YOUR NAME"),
                      titleTextStyle:
                          const TextStyle(fontSize: 17, color: Colors.black),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel")),
                        TextButton(onPressed: () {}, child: const Text("Save"))
                      ],
                    ),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 50,
                      child: const Icon(
                        Icons.person,
                        size: 30,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Name',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "Monayi",
                            style: Values.txtstyle3,
                          ),
                          const Text(
                            'This is not your username or pin.This name will be visible to your DeptTrack',
                            style: TextStyle(
                                color: Color.fromARGB(255, 96, 96, 96)),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.edit_outlined,
                      size: 25,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: const Text("Are you sure??"),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Cancel")),
                          TextButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  )),
                              child: const Text("Yes"))
                        ],
                      );
                    },
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      size: 26,
                    ),
                    Text(
                      "Logout",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              )
            ]));
  }
}
