import 'package:flutter/material.dart';
import '../../../moduls/colors/color.dart';
import '../../widget/appbar_home_screens.dart';
import '../../widget/category_items.dart';
import '../../widget/discover_items.dart';
import '../../widget/people_items.dart';
import '../../widget/sales_items.dart';
import '../paris_screen.dart';

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
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 10,
            ),
            const AppBar1(
              titl: 'TOURS',
              icons: Icons.search_rounded,
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Popular Destination',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: CustomColor.color1),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                '10 Tours Avialable',
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
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
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Paris()));
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
                          TextButton(
                              onPressed: () {}, child: const Text('India')),
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
                          TextButton(
                              onPressed: () {}, child: const Text('New York')),
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
                          TextButton(
                              onPressed: () {},
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
                SizedBox(
                  width: double.infinity,
                  height: 230,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return const SalesItems();
                      }),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
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
            SizedBox(
              width: double.infinity,
              height: 270,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const Diescover();
                  }),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Our Latest Blog Category',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: CustomColor.color1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 60,
                    top: 50,
                  ),
                  height: 330,
                  width: 330,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(10)),
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
                        const SizedBox(
                          width: 10,
                        ),
                        const CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 325,
                  width: double.infinity,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return const CategoryItems();
                      }),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 20, bottom: 10),
              child: Text(
                'What People,s Say',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: CustomColor.color1),
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const Peoples();
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
