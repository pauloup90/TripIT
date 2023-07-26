import 'package:flutter/material.dart';
import 'package:triplt/presentation/screens/booking_screens/payment.dart';

import '../../../moduls/component/custombotton.dart';
import '../../widget/Form_booking.dart';
import '../../widget/appbar_booking.dart';
import '../home_body.dart';

class BookingScreen extends StatelessWidget {
   BookingScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.only(top: 10, left: 20.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),

          child: Padding(
            padding:  EdgeInsets.all(8.0),
            child: Form(
    key:_formKey,
    child:
    Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBarBok(
                  titl: 'Booking Now',
                ),
                const SizedBox(
                  height: 30,
                ),
                const FormBook(
                  titel: 'First Name',
                  validator: "Enter Valid First Name",
                  keyboardType: TextInputType.name,
                  icon: null,
                  contains: '',
                ),
                const SizedBox(
                  height: 10,
                ),
                const FormBook(
                  contains: '',
                  titel: 'Last Name',
                  validator: "Enter Valid Last Name",
                  keyboardType: TextInputType.name,
                  icon: null,
                ),
                const SizedBox(
                  height: 10,
                ),
                const FormBook(
                  contains: '@',
                  titel: 'Email ID',
                  validator: "Enter Valid Email ID",
                  keyboardType: TextInputType.emailAddress,
                  icon: null,
                ),
                const SizedBox(
                  height: 10,
                ),
                const FormBook(
                  contains: '',
                  titel: 'Contact Number',
                  validator: "Enter Valid Contact Number",
                  keyboardType: TextInputType.name,
                  icon: null,
                ),
                const SizedBox(
                  height: 10,
                ),
                const FormBook(
                  contains: '',
                  titel: 'Address',
                  validator: "Enter Valid Address",
                  keyboardType: TextInputType.emailAddress,
                  icon: null,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Date & Time',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const FormBook(
                  contains: '',
                  titel: 'Start Tour',
                  validator: "Enter Valid Start Tour",
                  keyboardType: TextInputType.datetime,
                  icon: null,
                ),
                const SizedBox(
                  height: 10,
                ),
                const FormBook(
                  contains: '',
                  titel: 'End Tour',
                  validator: "Enter Valid End Tour",
                  keyboardType: TextInputType.datetime,
                  icon: null,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Members',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: FormBook(
                        contains: '',
                        titel: 'Adult',
                        validator: "Enter Valid  Adult",
                        keyboardType: TextInputType.emailAddress,
                        icon: null,
                      ),
                    ),
                    Expanded(
                      child: FormBook(
                        contains: '',
                        titel: 'Child',
                        validator: "Enter Valid Child",
                        keyboardType: TextInputType.emailAddress,
                        icon: null,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                    child: CustomButton(
                  text: 'Continue',
                  onTap: () {
                    if(  _formKey.currentState!.validate()
                    )
                      return

                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Payment()),
                    );
                  },
                )),
              ],
            ),
          ),
        ),
      ))));
  }
}
