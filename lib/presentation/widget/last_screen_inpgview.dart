import 'package:flutter/material.dart';
import 'package:triplt/presentation/screens/login_1,2/login.dart';

import '../../moduls/colors/color.dart';

class LastScreenPg extends StatelessWidget {
  const LastScreenPg({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 80,),
          Center(
            child: Image.asset(
              'images/20h.png',height:74,width: 177,
              fit: BoxFit.cover,
            ),
          ),

          Image.asset(
           'images/Vector Image3.png',
            fit: BoxFit.fill,
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 220,
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
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Enjoy Your Trip',
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Center(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Enjoy your holiday! don't forget to take\na photo and share to the world" ,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    const SizedBox(
                      height: 40,
                    ),

                    Center(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => Log()));
                        },
                        child: Text('LET,S GO!',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: CustomColor.color1
                        ),),
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
}
