import 'package:flutter/material.dart';
import 'package:pattip/components/elv_button.dart';
import 'package:pattip/components/txt_feild.dart';

import 'package:pattip/pages/nav.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                    icon: Icon(Icons.arrow_back)),
                const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                SizedBox(
                  width: 37,
                )
              ],
            )),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .82,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 226, 225, 225),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70))),
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
                ElvButton(
                  onpressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return Nav();
                      },
                    ));
                  },
                  txt: 'Login',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have  an account?"),
                    TextButton(
                        style: const ButtonStyle(
                            padding: WidgetStatePropertyAll(
                                EdgeInsets.symmetric(horizontal: 0))),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SingUp(),
                            )),
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
