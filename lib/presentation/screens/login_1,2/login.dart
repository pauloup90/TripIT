// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:triplt/presentation/screens/login_1,2/siginup.dart';

import '../../../moduls/colors/color.dart';
import '../../../moduls/component/custombotton.dart';
import '../../../moduls/component/formfield.dart';

import '../../../moduls/component/sushyalmidya.dart';
import '../home_screen.dart';
import '../location/location.dart';
import 'forgot_password.dart';

class Log extends StatefulWidget {
  const Log({Key? key}) : super(key: key);

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  String email = "";
  String password = "";
  bool isPassword = true;
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              CustomColor.color1,
              CustomColor.color3,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: SafeArea(
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(
                  child: (Image.asset(
                    'images/log1.png',
                    width: 184.32,
                    height: 60.14,
                  )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 33.0, bottom: 90),
                    child: Container(
                      width: 295,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0x1dffffff),
                          borderRadius: BorderRadius.circular(35)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 27.0, top: 10),
                    child: Container(
                      width: 310,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0x30ffffff),
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Form(
                        key: _formKey,
                        child: Container(
                          width: 325,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'Sign In',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Forms(
                                titel: 'Email',
                                validator: "Enter Valid Email",
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Forms(
                                titel: 'Password',
                                validator: "Enter Valid Password",
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 16.0, right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap:(){

                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const ForgotPassword()),
                                        );




                              },
                                      child: Text(
                                        'Forgot password?',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: CustomColor.color1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomButton(
                                onTap: () {
                                  if(  _formKey.currentState!.validate()
                                  )
                                    return



                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const HomeScreen()),
                                      );
                                },
                                text: 'Sign in',
                              )
                            ],
                          ),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              SushyalMidya(),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );

                    },
                    child: Text(' Sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 300,
              ),
            ]),
          )),
    ));
  }

  Future login() async {
    setState(() {
      isLoading = true;
    });
    Response response =
        await post(Uri.parse("http://alcaptin.com/api/login"), headers: {
      "appType": 'client'
    }, body: {
      "email": email,
      "password": password,
    });
    dynamic jsonResponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Location()));
    } else {
      print(jsonResponse['message']);
    }
    setState(() {
      isLoading = false;
    });
  }
}
