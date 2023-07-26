import 'package:flutter/material.dart';

class AppBarBok extends StatelessWidget {
  const AppBarBok({super.key,required this.titl});
final titl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 66.0),
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
            titl,
            style:
            TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

        ],
      ),
    );
  }
}
