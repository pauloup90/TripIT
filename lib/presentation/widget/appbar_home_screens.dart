import 'package:flutter/material.dart';

import '../screens/notification/notification.dart';

class AppBar1 extends StatelessWidget {
  const AppBar1({super.key,required this.titl,required this.icons});
final titl;
final icons;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Padding(
          padding: const EdgeInsets.only(top: 8.0,left:17),
          child: GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                      const LastScreen()));
            },
            child: Image.asset(
              'images/Menu.png',
              height: 25,
              width: 25,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child:  Text(
            titl,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0,right: 15),
          child: Icon(icons,size: 19,color: Colors.grey,),
        ),

      ],
    );
  }
}
