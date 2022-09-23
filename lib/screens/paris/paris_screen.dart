import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class Paris extends StatelessWidget {
  const Paris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Stack(
                children: [


                  ClipRRect(
                    child:Image.asset('images/paris.png') ,
                  ),


    const Padding(
      padding: EdgeInsets.all(39.0),
      child: Center(
        child: Text(' Top 10 Favourite\n Destination In Paris',style: TextStyle(
                          fontSize: 30,
                          color: Colors.white
                        ),),
      ),
    ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [

                        Container(

                          margin: const EdgeInsets.only(top: 100),
                          child: ClipRRect(
                            child:Image.asset('images/par2.png') ,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 80),
                          child: ClipRRect(
                            child:Image.asset('images/par1.png') ,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 100),
                          child: ClipRRect(
                            child:Image.asset('images/par3.png') ,
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),

           TextButton(onPressed: () {
             Navigator.pop(context,
             );
           }, child:     const Padding(
             padding: EdgeInsets.only(left: 90.0),
             child: Text('Disneyland Paris',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
           ),),

            Padding(
              padding: const EdgeInsets.all(21.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                RichText(text: const TextSpan(children:
              [
                TextSpan(text:'Departure',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                TextSpan(text:'\n23rd Oct 2017',style: TextStyle(color: Colors.grey)),

              ]
              )),
                const SizedBox(height: 10,),
                RichText(text: const TextSpan(children:
                [
                  TextSpan(text:'Duration',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  TextSpan(text:'\n23rd Oct 2017',style: TextStyle(color: Colors.grey)),

                ]
                )),
                  const SizedBox(height: 10,),
                RichText(text: const TextSpan(children:
                [
                  TextSpan(text:'Discover 7 World Heritage Sites in thistour.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),

                  TextSpan(text:'\nFans of Mickey can visit Disneyland Paris which is located 32 km from central Paris, with connection to the suburban RER A.',style: TextStyle(color: Colors.grey)),

                ]

                )

                ),
                const SizedBox(height: 20,),
                const Text('Disneyland Paris has two theme parks: Disneyland (with Sleeping Beautys castle) and Walt Disney Studios. Top attractions are Space Mountain, It s a Small World and Big Thunder Mountain'
                ,style: TextStyle(color: Colors.grey),  )
                ],),
            ),

            ],
          ),
        ),
      ) ,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
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


                GButton(
                    icon: (Icons.home), text: 'Home'),
                GButton(icon: (Icons.search), text: 'Search'),
                GButton(icon: (Icons.settings), text: 'Settings'),
              ],
            ),
          ),
        ),

    );
  }
}
