import 'package:flutter/material.dart';

import '../../moduls/colors/color.dart';

class SalesItems extends StatelessWidget {
  const SalesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            width: 200,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Say yes to iconic snow Catamount,\nHillsdale, New York!',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
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
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          // do listview her
        ],
      ),
    );
  }
}
