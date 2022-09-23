import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../login_1,2/login.dart';

class LastScreen extends StatefulWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  State<LastScreen> createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 12.0,right: 20),
                    child: Icon(Icons.cancel,color: Colors.black,size: 30,),
                  ),

                ],
              ),

              ClipRRect(
                child: Image.asset('images/last3.png',),
              ),
              const SizedBox(height: 10,),
              const Text('Kenneth Gutierrez',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              const SizedBox(height: 10,),
              const Text('Kenneth_gutierrez@gmail.com',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13
              ,
              color: Colors.grey
              ),),
              Column(
                children: [
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 17,
                        child:Icon(Icons.notifications_active,color: Colors.white,size: 19,) ,
                      ),

                      Text('Notification',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(width: 90,),
                   Icon(Icons.navigate_next,color: Colors.black,size: 19,)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 17,
                        child:Icon(Icons.airplanemode_off_sharp,color: Colors.white,size: 19,) ,
                      ),

                      Text('Tours',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(width: 99,),
                      Icon(Icons.navigate_next,color: Colors.black,size: 19,)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 17,
                        child:Icon(Icons.location_on_outlined,color: Colors.white,size: 19,) ,
                      ),

                      Text('Location',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(width: 90,),
                      Icon(Icons.navigate_next,color: Colors.black,size: 19,)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.deepPurpleAccent,
                        radius: 17,
                        child:Icon(Icons.language,color: Colors.white,size: 19,) ,
                      ),

                      Text('Language',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(width: 90,),
                      Icon(Icons.navigate_next,color: Colors.black,size: 19,)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 17,
                        child:Icon(Icons.people_alt_rounded,color: Colors.white,size: 19,) ,
                      ),

                      Text('Invite Friends',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(width: 90,),
                      Icon(Icons.navigate_next,color: Colors.black,size: 19,)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 17,
                        child:Icon(Icons.headphones_outlined,color: Colors.white,size: 19,) ,
                      ),

                      Text('Help Center',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(width: 90,),
                      Icon(Icons.navigate_next,color: Colors.black,size: 19,)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 17,
                        child:Icon(Icons.settings_rounded,color: Colors.white,size: 19,) ,
                      ),

                      Text('Setting       ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(width: 90,),
                      Icon(Icons.navigate_next,color: Colors.black,size: 19,)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(

                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const Log()));
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary:Colors.white,
                        side: const BorderSide(color:Colors.white,width: 2 ),
                        shadowColor: Colors.white,
                        onSurface:Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 17,
                          child:Icon(Icons.logout_outlined,color: Colors.white,size: 19,) ,
                        ),
                        SizedBox(width: 30,),

                        Text('Log Out    ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(width: 160,),
                        Icon(Icons.navigate_next,color: Colors.black,size: 19,)
                      ],
                    ),),



                ],
              ),



            ],
          ),
        ),
      ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Padding(
            padding: EdgeInsets.all(6),
            child: GNav(
              color: Color(0xFF0F1327),
              tabBackgroundColor: Color(0xFF7885E6),
              selectedIndex: 2,
              padding: EdgeInsets.all(10),
              tabs: [
                GButton(icon: (Icons.home), text: 'Home'),
                GButton(
                  icon: (Icons.favorite_border_sharp),
                  text: 'LiKes',
                ),
                GButton(icon: (Icons.person), text: ''),
                GButton(icon: (Icons.search), text: 'Search'),
                GButton(icon: (Icons.library_books), text: 'List'),

              ],
            ),
          ),
        )

    );
  }
}
