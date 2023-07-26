import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../moduls/colors/color.dart';
import '../widget/appbar_booking.dart';
import '../widget/appbar_home_screens.dart';
import '../widget/bottombar.dart';
import 'booking_screens/add_booking.dart';

class Paris extends StatelessWidget {
  const Paris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 90.0),
                          child: Row(

                            children: [
                              Icon(Icons.arrow_back_ios, color: Colors.grey,size: 17,),
                              Text(
                                'Back',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Text(
                        'Paris',
                        style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Icon(
                      Icons.search_rounded,
                      color: Colors.grey,
                      size: 17,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  ClipRRect(
                    child: Image.asset('images/paris.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(39.0),
                    child: Center(
                      child: Text(
                        ' Top 10 Favourite\n Destination In Paris',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 100),
                            child: ClipRRect(
                              child: Image.asset('images/par2.png'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 80),
                            child: ClipRRect(
                              child: Image.asset('images/par1.png'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 100),
                            child: ClipRRect(
                              child: Image.asset('images/par3.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Center(
                child: Text(
                  'Disneyland Paris',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(21.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'Departure',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '\n\n23rd Oct 2017',
                          style: TextStyle(fontSize: 11, color: Colors.grey)),
                    ])),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'Duration',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '\n\n23rd Oct 2017',
                          style: TextStyle(fontSize: 11, color: Colors.grey)),
                    ])),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'Discover 7 World Heritage Sites in thistour.',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              '\n\nFans of Mickey can visit Disneyland Paris which is located 32 km from central Paris, with connection to the suburban RER A.',
                          style: TextStyle(fontSize: 11, color: Colors.grey)),
                    ])),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Disneyland Paris has two theme parks: Disneyland (with Sleeping Beautys castle) and Walt Disney Studios. Top attractions are Space Mountain, It s a Small World and Big Thunder Mountain',
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        '£ 1,020 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      const Text(
                        ' per person',
                        style: TextStyle(fontSize: 11),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  BookingScreen()),
                          );


                        },
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: CustomColor.color4,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Text(
                              'Book Now',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: CustomColor.colorLog,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: CustomColor.colorLog,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: CustomColor.colorLog,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                        size: 16,
                      ),
                    Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: const Text(
                          '4.8 (512 Reviews)',
                          style: TextStyle(fontSize: 12,color:Color(0xffF7803C) ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),

      ),

    );
  }
}
