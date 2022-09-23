import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../moduls/colors/color.dart';
import '../notification/notification.dart';
import '../paris/paris_screen.dart';
class TOURS extends StatefulWidget {
  const TOURS({Key? key}) : super(key: key);
  @override
  State<TOURS> createState() => _TOURSState();
}
class _TOURSState extends State<TOURS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary:const Color(0xffF6F6F6),
                      side: const BorderSide(color:Color(0xffF6F6F6), ),
                      shadowColor: Colors.white,
                      onSurface:Colors.white
                  ),
                  child:
                  const Icon(
                    Icons.arrow_back_ios,color: Colors.black,),),
                const SizedBox(width: 80,),
                const Text(
                  'TOURS',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
              

              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Popular Destination',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: CustomColor.color1),
              ),
            ),
            const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
              '10 Tours Avialable',
              style: TextStyle(

                    fontSize: 10,
                    color: Colors.grey),
            ),
                ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset('images/Mask IMG.png'),
                          ),
                            TextButton(onPressed: () {
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (context) => const Paris ()));

                          },
                          child: const Text('Paris')),

                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset('images/momo.png'),
                          ),

                          TextButton(onPressed: () {},
                          child: const Text('India')),

                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset('images/lile.png'),
                          ),

                          TextButton(onPressed: () {},
                          child: const Text('New York')),

                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset('images/aloo.png'),
                          ),

                          TextButton(onPressed: () {},
                          child: const Text('Los Angeles')),

                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Image.asset('images/Offer.png'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          margin: const EdgeInsets.only(top: 100),
                          height: 100,
                          width: 200,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Center(
                                  child: Text(
                                'Say yes to iconic snow Catamount,\nHillsdale, New York!',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    ' Book your holiday package today',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: CustomColor.color4,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: const Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 16,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          margin: const EdgeInsets.only(top: 100),
                          height: 100,
                          width: 200,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Center(
                                  child: Text(
                                'Say yes to iconic snow Catamount,\nHillsdale, New York!',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    ' Book your holiday package today',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: CustomColor.color4,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: const Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 16,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          margin: const EdgeInsets.only(top: 100),
                          height: 100,
                          width: 200,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Center(
                                  child: Text(
                                'Say yes to iconic snow Catamount,\nHillsdale, New York!',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    ' Book your holiday package today',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: CustomColor.color4,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: const Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 16,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Discover New Places',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: CustomColor.color1),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>  const Paris(
                                  // token: user.data!.accessToken,
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary:const Color(0xffF6F6F6),
                              side: const BorderSide(color:Color(0xffF6F6F6), ),
                              shadowColor: Colors.white,
                              onSurface:Colors.white
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            child: Column(
                              children: [

                                ClipRRect(
                                  child: Image.asset('images/4.png',height: 160,),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text('Eiffel Tower',style: TextStyle(color: Colors.black),),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,color:CustomColor.colorLog,size: 16,),
                                    Icon(
                                      Icons.star,color:CustomColor.colorLog,size: 16,),
                                    Icon(
                                      Icons.star,color:CustomColor.colorLog,size: 16,),
                                    Icon(
                                      Icons.star,color:Colors.grey,size: 16,),
                                    Icon(
                                      Icons.star,color:Colors.grey,size: 16,),
                                  ],
                                ),

                              ],
                            ),
                          ),),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary:const Color(0xffF6F6F6),
                              side: const BorderSide(color:Color(0xffF6F6F6), ),
                              shadowColor: Colors.black45,
                              onSurface:Colors.white
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            child: Column(
                              children: [
                                ClipRRect(
                                  child: Image.asset('images/ro3.png',height: 160,),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Parrot ',style: TextStyle(color: Colors.black),),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,color:CustomColor.colorLog,size: 16,),
                                    Icon(
                                      Icons.star,color:CustomColor.colorLog,size: 16,),
                                    Icon(
                                      Icons.star,color:CustomColor.colorLog,size: 16,),
                                    Icon(
                                      Icons.star,color:Colors.grey,size: 16,),
                                    Icon(
                                      Icons.star,color:Colors.grey,size: 16,),
                                  ],
                                ),
                              ],
                            ),
                          ),),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary:const Color(0xffF6F6F6),
                              side: const BorderSide(color:Color(0xffF6F6F6), ),
                              shadowColor: Colors.white,
                              onSurface:Colors.white
                          ),
                          child:Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            child: Column(
                              children: [
                                ClipRRect(
                                  child: Image.asset('images/hamsa.png',height: 160,),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Notre Dame ',style: TextStyle(color: Colors.black),),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,color:CustomColor.colorLog,size: 16,),
                                    Icon(
                                      Icons.star,color:CustomColor.colorLog,size: 16,),
                                    Icon(
                                      Icons.star,color:CustomColor.colorLog,size: 16,),
                                    Icon(
                                      Icons.star,color:Colors.grey,size: 16,),
                                    Icon(
                                      Icons.star,color:Colors.grey,size: 16,),
                                  ],
                                ),
                              ],
                            ),
                          ),),



                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Our Latest Blog Category',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: CustomColor.color1),
                  ),
                ),
                const SizedBox(height: 20,),
              Stack(
                children: [

                  Container(

                    margin:const EdgeInsets.only(left: 60,top: 50) ,
                    height: 280,
                    width: 307,
                    decoration:const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(30)
                      ,bottomLeft: Radius.circular(10)
                      ),
                       color: CustomColor.color4,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Container(
                     height: 13,
                     width: 40,

                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(40),
                     ),
                   ),
                        const SizedBox(width: 10,),
                        const CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.white,
                        ),
                   const SizedBox(width: 10,),
                        const CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.white,
                        ),
                   const SizedBox(width: 10,),
                        const CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.white,
                        ),
                      ],
               ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 260, width: 240,
                        decoration: BoxDecoration(
                            color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0,top: 10),
                              child: ClipRRect(
                               borderRadius: BorderRadius.circular(12),
                                child: Image.asset('images/hamdad.png',height:132,),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15.0,top: 16),
                              child: Text('Byron Bay',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text('Australia              20 Dec, 2019 '),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text('A popular tourist destination, it’s \n characterized by its many beaches and hinterland.'),
                            )],
                        ),
                            ),

                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 260, width: 240,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 13.0,top: 10),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset('images/mosa.png',height:132,),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 15.0,top: 16),
                                    child: Text('Byron Bay',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text('Australia              20 Dec, 2019 '),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text('A popular tourist destination, it’s \n characterized by its many beaches and hinterland.'),
                                  )
                                ],
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),


                ],
              ),
                const Padding(
                  padding: EdgeInsets.only(left: 10,top: 20,bottom: 20),
                  child: Text(
                    'People Also Search',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: CustomColor.color1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                            child: Image.asset('images/sasa.png'),
                          ),
                          const SizedBox(width: 20,),
                          const Text('Great Barrier Reef              Australia'
                              '\n                 4.8 (512 Reviews)'
                              '',style: TextStyle(

                          ),),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset('images/img.png'),
                          ),
                          const SizedBox(width: 20,),
                          const Text('Pyramids of Giza               Egypt'
                              '\n                 4.8 (512 Reviews)'
                              '',style: TextStyle(

                          ),),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset('images/ana.png'),
                          ),
                          const SizedBox(width: 20,),
                          const Text('Bora Bora Tourism             Polynesia'
                              '\n                 4.8 (512 Reviews)'
                              '',style: TextStyle(

                          ),),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset('images/21.png'),
                          ),
                          const SizedBox(width: 20,),
                          const Text('The heritage of England         London  '
                              '\n                 4.8 (512 Reviews)'
                              '',style: TextStyle(

                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
               const Padding(
                  padding: EdgeInsets.only(left: 10,top: 20,bottom: 20),
                  child: Text(
                    'What People,s Say',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: CustomColor.color1),
                  ),
                ),
                Padding(
                  padding:  const EdgeInsets.all(9.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context, MaterialPageRoute(builder: (context) =>  const LastScreen()));
                                },
                                child: ClipRRect(
                                  child: Image.asset('images/last.png'),
                                ),
                              ),
                              const Text('Matt Hardy'),
                              const Text('Sed tortor ante, this is\n vestibulum non crisus\n id, porta imperdiet\n purus.',style: TextStyle(fontSize: 14),)
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                     Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: Column(
                            children: [
                              ClipRRect(
                                child: Image.asset('images/last2.png'),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('Renato Abati'),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('Sed tortor ante, this is\n vestibulum non crisus\n id, porta imperdiet\n purus.',style: TextStyle(fontSize: 14),)
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                     Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: Column(
                            children: [
                              ClipRRect(
                                child: Image.asset('images/last3.png'),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(' Luanna Cabral '),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('Sed tortor ante, this is\n vestibulum non crisus\n id, porta imperdiet\n purus.',style: TextStyle(fontSize: 14),)
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),

                      ],
                    ),
                  ),
                ),
             ]
          ),
        ),
      ),
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
                GButton(icon: (Icons.home), text: 'Home'),
                GButton(icon: (Icons.search), text: 'Search'),
                GButton(icon: (Icons.settings), text: 'Settings'),
              ],
            ),
          ),
        )
    );
  }
}
