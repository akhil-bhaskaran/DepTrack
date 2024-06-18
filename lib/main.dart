import 'package:flutter/material.dart';
import 'package:pattip/components/provider.dart';
import 'package:pattip/pages/login_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return ChangeNotifierProvider(
      create: (context) => MenuProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        theme: ThemeData(
          fontFamily: 'poppins',
        ),
      ),
    );
  }
}
