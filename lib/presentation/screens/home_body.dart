import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manger/bottombar_cubit.dart';
import '../../moduls/colors/color.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';


class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavigationBarCubit, NavigationBarState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = NavigationBarCubit.get(context);
        return Scaffold(

          body: cubit.bottomScreens[cubit.currentIndex],
          bottomNavigationBar: ConvexAppBar(
            backgroundColor: Colors.white,
             activeColor: CustomColor.color1,
            style: TabStyle.fixed,

            color: Colors.white,
            curve: Curves.easeInCirc,
height: 52,
            shadowColor: CustomColor.color1,



            items: [

              TabItem(
                title: '_',
                icon: ClipRRect(
                  child: Image.asset('images/home.png',),
                ),),

              TabItem(
                title:  '_',
                icon: ClipRRect(
                  child: Image.asset('images/heart.png',),
                ),),
              TabItem(
                title:  '',
                  icon:CircleAvatar(

                      backgroundColor: CustomColor.color1,
                      child: Image.asset('images/Icon2.png',height: 20,)),
              ),
              TabItem(
                title:  '_',
                icon: ClipRRect(
                  child: Image.asset('images/Calendar.png'),
                ),
              ),    TabItem(
                title:  '_',

                icon: ClipRRect(
                  child: Image.asset('images/avatar.png'),
                ),
              ),
            ],

              onTap: (index) {
                cubit.changeBottom(index);

            },
          )


        );
      },
    );
  }
}
