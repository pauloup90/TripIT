import 'package:flutter/material.dart';
import 'package:triplt/moduls/colors/color.dart';

import '../widget/appbar_home_screens.dart';
import '../widget/trip_item.dart';

class MyTrips extends StatelessWidget {
  const MyTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const AppBar1(
                titl: 'My Trip',
                icons: Icons.search,
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return TripItem();
                    }),
              ),
            ],
          )),
    );
  }
}
