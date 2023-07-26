import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation/screens/favorit.dart';
import '../presentation/screens/location/location.dart';
import '../presentation/screens/my_trip,s.dart';
import '../presentation/screens/notification/notification.dart';
import '../presentation/screens/tours/tours_scereen.dart';
part 'bottombar_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  NavigationBarCubit() : super(NavigationBarStateInitial());

  static NavigationBarCubit get(context) => BlocProvider.of(context);
  int currentIndex = 2;
  List<Widget> bottomScreens = const [
    TOURS(),
    Favorite(),
    Location(),
    MyTrips(),
    LastScreen(),
  ];
  @override
  void changeBottom(int index) {
    currentIndex = index;
    emit(NavigationBarStateSucces());
  }
}