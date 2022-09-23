import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:triplt/moduls/colors/color.dart';
import '../intro_pageView/view.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 11), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Intro()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                CustomColor.color1,
                CustomColor.color2,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'images/4k.png',
                    width: 204.32,
                    height: 100.14,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const CupertinoActivityIndicator(
                    radius: 20.0, animating: true, color: Colors.white),
              ],
            )));
  }
}
