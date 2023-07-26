import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import '../../moduls/colors/color.dart';
import '../../moduls/component/custombotton.dart';
import '../../moduls/component/formfield.dart';
import '../widget/Form_booking.dart';
import '../widget/appbar_booking.dart';
import 'booking_screens/card_detail.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.only(top: 10, left: 20.0),
      child: Column(
        children: [
          const AppBarBok(titl: 'Card Detail',),
          const SizedBox(height: 60,),
          const FormBook(
            contains: '',
            titel: 'Holder Name',
            validator: "Enter Valid Holder Name",
            keyboardType: TextInputType.name, icon: null,
          ),
          const SizedBox(height: 20,),
          const FormBook(
            contains: '',
            titel: 'Credit Card Number',
            validator: "Enter Valid Holder Name",
            keyboardType: TextInputType.numberWithOptions(), icon: Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Icon(Icons.credit_card),
            ),
          ),
          const SizedBox(height: 20,),
          const Row(
            children: [
              Expanded(
                child: FormBook(
                    contains: '',
                  titel: 'Expires Date',
                  validator: "Enter Valid Expires Date",
                  keyboardType: TextInputType.numberWithOptions(), icon: null
                ),
              ),
              Expanded(
                child: FormBook(
                    contains: '',
                  titel: 'CVV',
                  validator: "Enter Valid CVV",
                  keyboardType: TextInputType.numberWithOptions(), icon:null
                ),
              ),
            ],
          ),
          const SizedBox(height: 50,),
          CustomButton(text: 'Save', onTap: () {  },),

        ],
      ),
    )));
  }
}
