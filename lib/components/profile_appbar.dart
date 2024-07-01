import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class ProfileAppbar extends StatefulWidget {
  const ProfileAppbar({super.key});

  @override
  State<ProfileAppbar> createState() => _ProfileAppbarState();
}

class _ProfileAppbarState extends State<ProfileAppbar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(

// Alignment changed
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      
          // const SizedBox(
          //   width: 12,
          // ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Hi, Monaayi ",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              Text("Good morning!..")
            ],
          ),
      
          InstaImageViewer(
            backgroundColor: const Color.fromRGBO(235, 241, 239, 1),
            child: CircleAvatar(
              radius: 28,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image:
                        DecorationImage(image: AssetImage('assets/shibin.jpg'))),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
