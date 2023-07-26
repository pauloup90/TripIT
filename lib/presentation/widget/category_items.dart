import 'package:flutter/material.dart';

import '../screens/booking_screens/payment.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 260,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'images/hamdad.png',
                    height: 150,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, top: 10),
              child: Text(
                'Byron Bay',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Australia                            20 Dec, 2019 ',
                style: TextStyle(
                  fontSize: 14,

                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: liens(),
            ),

            const Padding(
              padding:
              EdgeInsets.only(bottom: 10, left: 10.0,top: 10),
              child: Text(
                'A popular tourist destination, it’s\ncharacterized by its many beaches and hinterland.',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
