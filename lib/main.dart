import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triplt/presentation/screens/credit_card.dart';
import 'package:triplt/presentation/screens/home_screen.dart';
import 'package:triplt/presentation/screens/splash_screen/veiw.dart';

import 'manger/bottombar_cubit.dart';
import 'moduls/colors/color.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavigationBarCubit()),

      ],
      child: BlocConsumer<NavigationBarCubit, NavigationBarState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(

                scaffoldBackgroundColor: Colors.white,
                bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                    selectedIconTheme: IconThemeData(
                      color: Colors.black,
                      size: 22,
                    ),
                )
            ),

            home:SplashScreen(

            ),
          );
        },
      ),
    );
  }
}
