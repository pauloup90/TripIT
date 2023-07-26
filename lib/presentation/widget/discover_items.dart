import 'package:flutter/material.dart';

import '../../moduls/colors/color.dart';
import '../screens/paris_screen.dart';

class Diescover extends StatelessWidget {
  const Diescover({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const Paris(

                ),
              ),
            );
          },
          child: Stack(children: [
            ClipRRect(
              child: Image.asset(
                'images/4.png',
                height: 220,
              ),
            ),
            const Positioned(
                top: 190,
                left: 19,
                right: 20,
                child: Text(
                  'Eiffel Tower',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white),
                )),
          ]),
        ),
        const SizedBox(
          height: 4,
        ),
        const Row(
          children: [
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
          ],
        ),
      ]),
    );
  }
}
