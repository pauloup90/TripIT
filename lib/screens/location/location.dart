import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:triplt/screens/tours/tours_scereen.dart';
class Location extends StatefulWidget {
  String? accessToken;
   Location({Key? key,this.accessToken, String? token }) : super(key: key);


  @override
  State<Location> createState() => _LocationState();

}

class _LocationState extends State<Location> {
  bool isLoading = false;
  @override
  void initState() {

    super.initState();
    print('accessToken is : ${widget.accessToken}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(

                      onPressed: () {
          Navigator.pop(context,
          );
          },
                     child:
                     Icon(
                       Icons.arrow_back_ios,color: Colors.black,),
            style: ElevatedButton.styleFrom(
                elevation: 0,
               primary:Colors.white,
                side: BorderSide(color:Colors.white ),
               shadowColor: Colors.white,
              onSurface:Colors.white
                      ),),
                      const SizedBox(
                        width: 50,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TOURS()));
                        },
                        child: const Text(
                          'Location',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    width: double.infinity,
                    child: ClipRRect(
                      child: (Image.asset('images/hamdy.png')),
                    )),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) => const TOURS ()));

                      },
                      child: ClipRRect(
                        child: (Image.asset('images/fff.png')),
                      ),
                   style:ElevatedButton.styleFrom(
                     primary: Colors.white,
                     onPrimary: Colors.white,
                     shadowColor:Colors.white,
                     elevation: 0,
                   ),
                    )),
                SizedBox(
                    width: double.infinity,
                    child: ClipRRect(
                      child: (Image.asset('images/paulp.png')),
                    )),
                SizedBox(
                    width: double.infinity,
                    child: ClipRRect(
                      child: (Image.asset('images/Location.png')),
                    )),
                SizedBox(
                    width: double.infinity,
                    child: ClipRRect(
                      child: (Image.asset('images/last5.png')),
                    )),
              ],
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
        ));
  }
}
