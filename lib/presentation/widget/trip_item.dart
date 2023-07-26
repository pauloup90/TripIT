import 'package:flutter/material.dart';

import '../../moduls/colors/color.dart';
import '../screens/booking_screens/payment.dart';

class TripItem extends StatelessWidget {
  const TripItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 333,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              color: Color(0x7E969696),
              offset: Offset(
                0.1,
                0.1,
              ),
              blurRadius: 6.0,
              spreadRadius: 0.5,
            ), //BoxShadow
          ],
        ),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 15.0, top: 20, bottom: 20),
                  child: Text('Paris',
                      style: TextStyle(
                        fontSize: 16,
                      )),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Booking on 15 Jan',
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey),
                  ),
                ),
              ],
            ),
            Container(
              margin:
              const EdgeInsets.only(left: 15, right: 15),
              height: 0.3,
              width: double.infinity,
              color: Colors.grey,
            ),
            Row(
              children: [
                SizedBox(
                  width: 14,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  child: Image.asset(
                    'images/IMG.png',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 17.0, left: 10),
                      child: Text(
                        'Disneyland Paris',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10.0, top: 10, bottom: 10),
                      child: Text(
                        '16 January - 20 january',
                        style: TextStyle(
                            fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(

               onTap : () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const   Payment()),
      );


      },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(12)),
                        border: Border.all(
                            color: const Color(0x949d9d9d),
                            width: 0.3),
                      ),
                      child: Center(
                          child: Text(
                            'Book Again',
                            style: TextStyle(
                                color: CustomColor.color4),
                          )),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(12)),
                      border: Border.all(
                          color: const Color(0x949d9d9d),
                          width: 0.3),
                    ),
                    child: Center(
                        child: Text(
                          'Need Help?',
                          style: TextStyle(
                              color: CustomColor.color4),
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
