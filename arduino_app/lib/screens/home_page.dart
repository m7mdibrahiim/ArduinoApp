import 'package:arduino_app/screens/custom_form_field.dart';
import 'package:arduino_app/screens/login_page.dart';
import 'package:arduino_app/screens/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 152, 152),
      body: ListView(children: [
        Container(
          child: Image.asset('assets/images/welcome page.png'),
          height: 350.h,
          width: 400.w,
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            'Explore the app',
            style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(221, 44, 36, 36)),
          ),
        ),
        SizedBox(
          height: 80.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: ElevatedButton(
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size(350.sp, 55.sp)),
                minimumSize: MaterialStateProperty.all(Size(20.sp, 55.sp)),
                backgroundColor: MaterialStateProperty.all(Colors.black)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Login_page();
              }));
            },
            child: Text(
              'Login',
              style: TextStyle(fontSize: 18.sp, backgroundColor: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: ElevatedButton(
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size(350.sp, 55.sp)),
                minimumSize: MaterialStateProperty.all(Size(20.sp, 55.sp)),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RegisterPage();
              }));
            },
            child: Text(
              'Register',
              style: TextStyle(
                  fontSize: 18.sp,
                  backgroundColor: Colors.white,
                  color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 190.h,
        ),
        Center(
          child: Text(
            'Continue as a guest',
            style: TextStyle(
                fontSize: 22.sp, color: Color.fromARGB(250, 2, 154, 170)),
          ),
        )
      ]),
    );
  }
}
