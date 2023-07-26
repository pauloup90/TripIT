import 'package:flutter/material.dart';
import 'package:triplt/presentation/screens/home_screen.dart';

import '../../../moduls/component/custombotton.dart';
import '../../widget/Form_booking.dart';
import '../../widget/appbar_booking.dart';

class CardDetail extends StatelessWidget {
   CardDetail({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return     SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const AppBarBok(titl: 'Card Detail',),
              const SizedBox(
                height: 49,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    const FormBook(
                      contains: '',
                      titel: 'Holder Name',
                      validator: "Enter Valid Holder Name",
                      keyboardType: TextInputType.name,
                      icon: null,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FormBook(
                      contains: '',
                      titel: 'Credit Card Number',
                      validator: "Enter Valid Credit Card Number",
                      keyboardType: TextInputType.numberWithOptions(),
                      icon: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset(
                          'images/pay.png',
                          height: 0.3,
                          width: 0.3,
                          color: const Color(0xdd4458db),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: FormBook(
                            contains: '',
                            titel: 'Expires Date',
                            validator: "Enter Valid  Expires Date",
                            keyboardType: TextInputType.datetime,
                            icon: null,
                          ),
                        ),
                        Expanded(
                          child: FormBook(
                            contains: '',
                            titel: 'CVV',
                            validator: "Enter Valid CVV",
                            keyboardType: TextInputType.number,
                            icon: null,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),

              Center(
                  child: CustomButton(
                    text: 'Save',
                    onTap: () {
                      if(  _formKey.currentState!.validate()
                      )
                        return

                          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
