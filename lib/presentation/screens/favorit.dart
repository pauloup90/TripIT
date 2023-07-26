import 'package:flutter/material.dart';

import '../widget/appbar_home_screens.dart';
import '../widget/favorite_items.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(height: 10,),
            const AppBar1(titl: 'Favorite', icons: Icons.search,),
            const SizedBox(height: 20,),
            Flexible(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),

                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return  const FavoriteItems();
                  }),
            ),
          ],
        )


      ),
    );
  }
}
