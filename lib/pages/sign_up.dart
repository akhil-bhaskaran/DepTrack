import 'package:flutter/material.dart';
import 'package:pattip/components/colors.dart';
import 'package:pattip/components/elv_button.dart';
import 'package:pattip/components/txt_feild.dart';

import 'package:pattip/pages/nav.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  String? groupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPattern.rd,
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .17,
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
                const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                const SizedBox(
                  width: 37,
                )
              ],
            )),
          ),
          Container(
            padding: const EdgeInsets.only(left: 23,right: 23,top: 23),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .82,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 226, 225, 225),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70))),
            child: ListView(
              children: [
                const SizedBox(
                width: double.maxFinite,
                height: 90*5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 4,
                    ),
                    TxtFeild(hintText: 'First Name'),
                    TxtFeild(hintText: 'Second Name'),
                    TxtFeild(hintText: 'Email'),
                    TxtFeild(
                      hintText: 'Password',
                      isOb: true,
                    ),
                    TxtFeild(
                      hintText: 'Confirm Password',
                      isOb: true,
                    ),
                    
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     const Text("Don't have  an account?"),
                    //     TextButton(
                    //         style: const ButtonStyle(
                    //             padding: WidgetStatePropertyAll(
                    //                 EdgeInsets.symmetric(horizontal: 0))),
                    //         onPressed: () => Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //               builder: (context) => SingUp(),
                    //             )),
                    //         child: const Text(
                    //           'Sing-Up',
                    //         ))
                    //   ],
                    // )
                  ],
                ),
              ),
              //two radio buttons for choose login type
                    ListTile(
                      title: const Text('Customer login'),
                      subtitle: const Text('By login as a customer allows you to note dept'),
                      trailing: Radio(
                        value: "customer",
                        groupValue: groupValue,
                        onChanged: (value) {
                          groupValue = value;
                          setState(() {});
                        }),
                    ),
                    ListTile(
                      title: const Text('Admin login'),
                      subtitle: const Text('By login as an admin enables you a owner options'),
                      trailing: Radio(
                        value: "admin",
                        groupValue: groupValue,
                        onChanged: (value) {
                          groupValue = value;
                          setState(() {});
                        }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // button for login
                    ElvButton(
                      onpressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return const Nav();
                          },
                        ));
                      },
                      txt: 'Login',
                    ),
                    const SizedBox(height: 50,)
              ]
            ),
          ),
        ],
      ),
    );
  }
}
