import 'package:flutter/material.dart';

import '../../moduls/colors/color.dart';

class FormBook extends StatelessWidget {
  const FormBook(
      {super.key,
      required this.titel,
      required this.validator,
      required this.keyboardType,
      required this.contains,
      required this.icon});

  final keyboardType;
  final titel;
  final icon;
  final validator;
  final contains;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0),
      child: TextFormField(

        keyboardType: keyboardType,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hintText: titel,
          suffixIcon: icon,
        ),
        validator: (value) {
          if (value == null ||
              value.isEmpty ) {
            return validator;
          }
          return null;
        },
        onSaved: (value) {},
      ),
    );
  }
}
