// // ignore_for_file: avoid_print
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:triplt/moduls/model.dart';
//
// import '../login_1,2/login.dart';
//
// class Intro extends StatefulWidget {
//   const Intro({Key? key}) : super(key: key);
//
//   @override
//   State<Intro> createState() => _IntroState();
// }
//
// class _IntroState extends State<Intro> {
//   final controller = OnBoardingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//           child: SingleChildScrollView(
//              child: Column(
//             children: [
//               SizedBox(
//                 height:MediaQuery.of(context).size.height*0.9 ,
//                 child: PageView(
//                   physics: BouncingScrollPhysics(),
//                   onPageChanged: (value) {
//                     controller.currentPage = value;
//                     setState(() {});
//                   },
//                   children: List.generate(
//                       controller.model.length,
//                           (index) => SingleChildScrollView(
//                         child: SizedBox(
//                           width: double.infinity,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               const SizedBox(
//                                 height: 36,
//                               ),
//                               Center(
//                                 child: Image.asset('images/20h.png',height: 64.14,width: 164.32,),
//                               ),
//                               const SizedBox(
//                                 height: 20,
//                               ),
//                               Image.asset(
//                                 controller.model[controller.currentPage].image,
//                                 fit: BoxFit.fill,
//                               ),
//                               const SizedBox(
//                                 height: 32,
//                               ),
//                               Text(
//                                 controller.model[controller.currentPage].title,
//                                 textAlign: TextAlign.center,
//                                 style: const TextStyle(
//                                     fontSize: 28,
//                                     color: Color(0xff4A4B4D),
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               const SizedBox(
//                                 height: 33,
//                               ),
//                               Text(
//                                 controller.model[controller.currentPage].subtitle,
//                                 textAlign: TextAlign.center,
//                                 style: const TextStyle(
//                                     fontSize: 13, color: Color(0xff7C7D7E)),
//                               ),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                             ],
//                           ),
//                         ),
//                       )),
//                 ),
//               ),
//               controller.currentPage == controller.model.length - 1
//                   ? TextButton(
//                 onPressed: () {
//                Navigator.push(context, MaterialPageRoute(builder: (_)=> Log()));
//                 },
//                 child: Text(
//                   "let's go!",
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     color: Color(0Xff4458DB),
//                     fontSize: 20,
//                   ),
//                 ),
//               )
//                   : Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   GestureDetector(
//                     onTap: (){
//                       Navigator.pushReplacement(
//                           context, MaterialPageRoute(builder: (context) => Log()));
//                     },
//                     child: const Text(
//                       'SKIP',
//                       style: TextStyle(color: Colors.grey),
//                     ),
//                   ),
//                   Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: List.generate(
//                         controller.model.length,
//                             (index) => Padding(
//                           padding:
//                           const EdgeInsetsDirectional.only(end: 4),
//                           child: CircleAvatar(
//                             radius: 5,
//                             backgroundColor: Color(
//                                 index == controller.currentPage
//                                     ? 0xff4458DB
//                                     : 0xffD6D6D6),
//                           ),
//                         )),
//                   ),
//
//                 ],
//               ),
//             ],
//           )),),
//
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../moduls/colors/color.dart';
import '../../widget/last_screen_inpgview.dart';
import '../login_1,2/login.dart';

class PgViewModel2 {
  final String image;
  final String title;
  final String title2;
  final String Lastoppp;

  PgViewModel2(
      {required this.Lastoppp,
      required this.title2,
      required this.image,
      required this.title});
}

class PgView extends StatefulWidget {
  const PgView({super.key});

  @override
  State<PgView> createState() => _PgViewState();
}

class _PgViewState extends State<PgView> {
  var controller = PageController();

  List<PgViewModel2> count = [
    PgViewModel2(
      image: 'images/veo1.png',
      title: 'Plan Your Trip',
      title2:
          'Plan your trip, choose your destination. \n Pick the best place for your holiday.',
      Lastoppp: '',
    ),
    PgViewModel2(
      Lastoppp: '',
      image: 'images/Vector Image.png',
      title: 'Select The Date',
      title2:
          'Select the day, book your ticket. We give\nyou the best price. We guarantied!',
    ),
  ];
  bool isLast = false;
  bool Lastoppp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Center(
            child: Image.asset(
              'images/20h.png',
              height: 74,
              width: 177,
              fit: BoxFit.cover,
            ),
          ),
          Flexible(
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              onPageChanged: (int index) {
                if (index == count.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              controller: controller,
              itemBuilder: (context, index) => buildItem(count[index]),
              itemCount: 2,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItem(PgViewModel2 model) => SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              model.image,
              fit: BoxFit.fill,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 230,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          model.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      ),
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          model.title2,
                          style: const TextStyle(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      )),
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Log()));
                            },
                            child: const Text(
                              'SKIP',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.grey),
                            ),
                          ),
                          SmoothPageIndicator(
                            controller: controller,
                            count: 3,
                            effect:
                                const JumpingDotEffect(dotHeight: 10, dotWidth: 10),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (isLast) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LastScreenPg(),
                                  ),

                                );
                              } else {
                                controller.nextPage(
                                    duration: const Duration(microseconds: 700),
                                    curve: Curves.fastOutSlowIn);
                              }
                            },
                            child: const Text(
                              'NEXT',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: CustomColor.color1),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          if (isLast) {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Log(),
                              ),
                              (route) {
                                return false;
                              },
                            );
                          } else {
                            controller.nextPage(
                                duration: const Duration(microseconds: 700),
                                curve: Curves.fastOutSlowIn);
                          }
                        },
                        child: Text(
                          model.Lastoppp,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: CustomColor.color1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
