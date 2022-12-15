import 'package:buddhadham/views/buddha_home_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuddhaSplashScreenUI extends StatefulWidget {
  const BuddhaSplashScreenUI({Key? key}) : super(key: key);

  @override
  State<BuddhaSplashScreenUI> createState() => _BuddhaSplashScreenUIState();
}

class _BuddhaSplashScreenUIState extends State<BuddhaSplashScreenUI> {
  void initState() {
    //โค๊ด delay หน้าจอเพื่นให้เปิดไปอีกหน้า
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BuddhaHomeUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          "assets/images/cover.png",
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
