// ignore_for_file: avoid_print

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:triplt/moduls/model.dart';
import 'package:triplt/screens/login_1,2/login.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
             child: Column(
            children: [
              SizedBox(
                height:MediaQuery.of(context).size.height*0.9 ,
                child: PageView(
                  onPageChanged: (value) {
                    controller.currentPage = value;
                    setState(() {});
                  },
                  children: List.generate(
                      controller.model.length,
                          (index) => SingleChildScrollView(
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 36,
                              ),
                              Center(
                                child: Image.asset('images/20h.png',height: 64.14,width: 164.32,),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                controller.model[controller.currentPage].image,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                              Text(
                                controller.model[controller.currentPage].title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 28,
                                    color: Color(0xff4A4B4D),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 33,
                              ),
                              Text(
                                controller.model[controller.currentPage].subtitle,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 13, color: Color(0xff7C7D7E)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
              ),
              controller.currentPage == controller.model.length - 1
                  ? TextButton(
                onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (_)=> Log()));
                },
                child: Text(
                  "let's go!",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0Xff4458DB),
                    fontSize: 20,
                  ),
                ),
              )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'SKIP',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                        controller.model.length,
                            (index) => Padding(
                          padding:
                          const EdgeInsetsDirectional.only(end: 4),
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Color(
                                index == controller.currentPage
                                    ? 0xff4458DB
                                    : 0xffD6D6D6),
                          ),
                        )),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (controller.currentPage <
                          (controller.model.length - 1)) {
                        if (kDebugMode) {
                          print(controller.currentPage < 2);
                        }
                        print("current${controller.currentPage}");
                        print("Length${controller.model.length}");
                        controller.currentPage++;
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.white,
                        side: BorderSide(color: Colors.white, width: 2),
                        shadowColor: Colors.white,
                        onSurface: Colors.white),
                    child: Text(
                      "Next",
                      style: const TextStyle(
                        color: Color(0Xff4458DB),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),),

    );
  }
}
