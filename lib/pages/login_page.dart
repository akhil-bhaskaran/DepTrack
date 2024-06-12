import 'package:flutter/material.dart';
import 'package:pattip/components/elv_button.dart';
import 'package:pattip/components/txt_feild.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: const Center(
              child: Icon(
                Icons.note_alt,
                color: Colors.white,
                size: 90,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 2 / 3,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 226, 225, 225),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height * .35,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TxtFeild(hintText: 'Email'),
                      TxtFeild(
                        hintText: 'Password',
                        isOb: true,
                      ),
                      ElvButton(
                        txt: 'Login',
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have  an account?"),
                    TextButton(
                        style: const ButtonStyle(
                            padding: WidgetStatePropertyAll(
                                EdgeInsets.symmetric(horizontal: 0))),
                        onPressed: () {},
                        child: const Text(
                          'Sing-Up',
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
