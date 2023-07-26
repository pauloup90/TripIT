import 'package:flutter/material.dart';

class SushyalMidya extends StatelessWidget {
  const SushyalMidya({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          child: Image.asset(
            'images/Facebook1.png',
            height: 50,
            width: 50,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        ClipRRect(
          child: Image.asset(
            'images/Google2.png',
            height: 50,
            width: 50,
          ),
        ),
      ],
    );
  }
}
