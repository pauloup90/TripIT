import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../widget/appbar_home_screens.dart';
import '../tours/tours_scereen.dart';

class Location extends StatelessWidget {
  const Location({Key? key, String? token}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const AppBar1(
                titl: 'LOCATION',
                icons: null,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(

                          context,
                          MaterialPageRoute(

                              builder: (context) => const TOURS()));
                    },
                    child: ClipRRect(
                      child: (Image.asset('images/fff.png')),
                    ),
                  )),
              SizedBox(
                width: double.infinity,
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TOURS()));
                    },
                    child: ClipRRect(
                      child: (Image.asset('images/hamdy.png')),
                    )),
              ),
              SizedBox(
                width: double.infinity,
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TOURS()));
                    },
                    child: ClipRRect(
                      child: (Image.asset('images/paulp.png')),
                    )),
              ),
              SizedBox(
                width: double.infinity,
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TOURS()));
                    },
                    child: ClipRRect(
                      child: (Image.asset('images/Location.png')),
                    )),
              ),
              SizedBox(
                width: double.infinity,
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TOURS()));
                    },
                    child: ClipRRect(
                      child: (Image.asset('images/last5.png')),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
