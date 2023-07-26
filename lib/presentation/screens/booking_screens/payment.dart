import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/appbar_booking.dart';
import 'card_detail.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const AppBarBok(titl: 'Payment',),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Online Payments',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'After your first payment, we will save your details\nfor future use.',
                style: TextStyle(fontSize: 16, color: Color(0x9b707070)),
              ),
              const SizedBox(
                height: 20,
              ),
              const liens(),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) =>  CardDetail()));
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Image.asset(
                        'images/pay.png',
                        height: 20,
                        width: 20,
                        color: const Color(0xdd4458db),
                      ),
                    ),
                    const Text(
                      'Credit, Debit & AMT Cards',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 25.0),
                      child: Icon(Icons.navigate_next_sharp,color: Colors.grey,),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const liens(),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Image.asset(
                      'images/Group 642.png',
                      height: 20,
                      width: 20,
                      color: const Color(0xdd4458db),
                    ),
                  ),
                  const Text(
                    'Net Banking',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: Icon(Icons.navigate_next_sharp,color: Colors.grey,),

                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const liens(),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Image.asset(
                      'images/Group 648.png',
                      height: 20,
                      width: 20,
                      color: const Color(0xdd4458db),
                    ),
                  ),
                  const Text(
                    'PayPal',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: Icon(Icons.navigate_next_sharp,color: Colors.grey,),

                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const liens(),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Image.asset(
                      'images/visa.png',
                      height: 20,
                      width: 20,
                      color: const Color(0xdd4458db),
                    ),
                  ),
                  const Text(
                    'Visa Card',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: Icon(Icons.navigate_next_sharp,color: Colors.grey,),

                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const liens(),
            ],
          ),
        ),
      ),
    );
  }
}

class liens extends StatelessWidget {
  const liens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.3,
      width: 330,
      color: const Color(0x5f707070),
    );
  }
}
