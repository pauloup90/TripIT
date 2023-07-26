import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../login_1,2/login.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.only(top: 12.0, right: 30, bottom: 50),
                      child: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
              ClipRRect(
                child: Image.asset(
                  'images/proph.png',
                  height: 100,
                  width: 100,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Kenneth Gutierrez',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Kenneth_gutierrez@gmail.com',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                    color: Colors.grey),
              ),
               Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 17,
                        child: Icon(
                          Icons.notifications_active,
                          color: Colors.white,
                          size: 19,
                        ),
                      ),
                      Text(
                        'Notification',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                        size: 19,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 17,
                        child: Icon(
                          Icons.airplanemode_off_sharp,
                          color: Colors.white,
                          size: 19,
                        ),
                      ),
                      Text(
                        'Tours',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                        size: 19,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 17,
                        child: Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                          size: 19,
                        ),
                      ),
                      Text(
                        'Location',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                        size: 19,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.deepPurpleAccent,
                        radius: 17,
                        child: Icon(
                          Icons.language,
                          color: Colors.white,
                          size: 19,
                        ),
                      ),
                      Text(
                        'Language',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                        size: 19,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 17,
                        child: Icon(
                          Icons.people_alt_rounded,
                          color: Colors.white,
                          size: 19,
                        ),
                      ),
                      Text(
                        'Invite Friends',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                        size: 19,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 17,
                        child: Icon(
                          Icons.headphones_outlined,
                          color: Colors.white,
                          size: 19,
                        ),
                      ),
                      Text(
                        'Help Center',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                        size: 19,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 17,
                        child: Icon(
                          Icons.settings_rounded,
                          color: Colors.white,
                          size: 19,
                        ),
                      ),
                      Text(
                        'Setting       ',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                        size: 19,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Log())
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 17,
                          child: Icon(
                            Icons.logout_outlined,
                            color: Colors.white,
                            size: 19,
                          ),
                        ),
                        Text(
                          'Log Out    ',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                          size: 19,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
