import 'package:arduino_app/helper/bluetooth_page.dart';
import 'package:flutter/material.dart';
import 'package:arduino_app/helper/bluetooth_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConnectionPage extends StatefulWidget {
  const ConnectionPage({super.key});
  static String id = 'ConnectionPage';

  @override
  State<ConnectionPage> createState() => _ConnectionPageState();
}

class _ConnectionPageState extends State<ConnectionPage> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Logo.png',
                    ),
                    fit: BoxFit.fill)),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/turn on g.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    _pageController.animateToPage(_currentPage - 1,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease);
                  },
                  icon: Icon(Icons.keyboard_double_arrow_left_sharp),
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                ),
                SizedBox(
                  height: 710.h,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      _pageController.animateToPage(_currentPage + 1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease);
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(240, 39)),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 165, 76, 225))),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/connecting g.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    _pageController.animateToPage(_currentPage - 1,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease);
                  },
                  icon: Icon(Icons.keyboard_double_arrow_left_sharp),
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                ),
                SizedBox(
                  height: 710.h,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Bluetooth_Page();
                          },
                        ),
                      );
                      // _pageController.animateToPage(_currentPage + 1,
                      //     duration: Duration(milliseconds: 300),
                      //     curve: Curves.ease);
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    style: ButtonStyle(
                        fixedSize:
                            MaterialStatePropertyAll(Size(240.sp, 39.sp)),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 165, 76, 225))),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Searching g.png',
                    ),
                    fit: BoxFit.fill)),
          ),
        ],
      ),
    );
  }
}
