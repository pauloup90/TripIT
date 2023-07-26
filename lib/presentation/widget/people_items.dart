import 'package:flutter/material.dart';

import '../screens/notification/notification.dart';

class Peoples extends StatelessWidget {
  const Peoples({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(8.0),
        child:


      Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white),
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                      const LastScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ClipRRect(
                child: Image.asset(
                  'images/last.png',
                  height: 60,
                  width: 60,
                ),
              ),
            ),
          ),
          const Text('Matt Hardy'),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Sed tortor ante, this is\n vestibulum non crisus\n id, porta imperdiet\n purus.',
              textAlign: TextAlign.center,
              style:
              TextStyle(color: Colors.grey, fontSize: 11),
            ),
          )
        ],
      ),
    ) );
  }
}
