// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../moduls/colors/color.dart';
import '../location/location.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email = "";
  String password = "";
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  bool isPassword = true;
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();


  bool value=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
              decoration:  const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      CustomColor.color1,
                      CustomColor.color2,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: SafeArea(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: (
                              Image.asset('images/log1.png',width:184.32 ,height:74.14 ,)
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(21.0),
                        child: Form(
                            key: _formKey,
                            child:
                        Container(

                          width: 325,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21),
                              color: Colors.white
                          ),
                          child:Column(
                            children: [
                              const SizedBox(height: 20,),
                              const Text('Sign In',style: TextStyle(
                                  fontSize: 25,fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),),
                              TextFormField(
                              controller: nameController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(9),

                                    hintText: 'Name'
                                ),


                                onSaved: (value) {
                                  setState(() {});
                                },
                              ),
                              const SizedBox(height: 10,),
                              TextFormField(
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(9),

                                    hintText: 'Email'
                                ),

                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      !value.contains("@")) {
                                    return "Enter Valid Email";
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 10,),
                              TextFormField(
                                controller: passwordController,
                                obscureText: isPassword,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(9),
                                  hintText: 'Password',

                                  suffixIcon: GestureDetector(child: Icon(isPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined),onTap: (){
                                    setState(() {
                                      isPassword = !isPassword;
                                    });
                                  },),
                                ),
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty) {
                                    return "Enter Valid Password";
                                  }
                                  return null;
                                },

                              ),


                              const SizedBox(height: 10,),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(9),

                                    hintText: 'Phone Number'
                                ),


                                onSaved: (value) {
                                  setState(() {});
                                },
                              ),
                              const SizedBox(height: 10,),
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: value,
                                    onChanged: (value) {
                                      assert(value != null);
                                      setState(() {
                                        this.value = value!;
                                      });
                                    },
                                  ), //
                          RichText(text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: ' I agree the  ',style: TextStyle(color:Colors.black )
                                ),
                                TextSpan(
                                    text: 'Terms & Conditions',style: TextStyle(color:CustomColor.color1 )
                                ),

                              ]

                          ),)],),
                              const SizedBox(height: 20,),
                              SizedBox(
                                  height: 48,
                                  width: 263,
                                  child: ElevatedButton(onPressed: () {
                                    if(_formKey.currentState!.validate()){
                                      _formKey.currentState!.save();
                                      signUp();
                                    }
                                  },
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(width: 90,),
                                          const Text('Sign in',textAlign: TextAlign.end
                                            ,style: TextStyle(
                                              fontSize: 18,

                                            ),),
                                          const SizedBox(width: 54,),
                                          Container(
                                              width: 39,
                                              height: 39,
                                              decoration: BoxDecoration(
                                                  color: CustomColor.color4,
                                                  borderRadius: BorderRadius.circular(30)
                                              ),
                                              child: const Icon(Icons.arrow_forward)
                                          )
                                        ],)
                                      ,style:ElevatedButton.styleFrom(
                                        primary: CustomColor.color1,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(
                                              40,
                                            )),

                                      )
                                  )

                              ),
                              const SizedBox(height: 30,),
                            ],
                          ) ,
                        )

                        ),
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            child:Image.asset('images/Facebook1.png',height: 50,width: 50,) ,
                          ),
                          const SizedBox(width: 30,),
                          ClipRRect(
                            child:Image.asset('images/Google2.png',height: 50,width: 50,) ,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),

                      TextButton(onPressed: (){
                      }, child: const Text('',style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                      ),),
                      ),
                const SizedBox(height: 20,),
                    ]),
    )
          )
        )
    );
  }
  Future signUp() async {
    setState(() {
      isLoading = true;
    });

    Response registerResponse =
    await post(Uri.parse("http://alcaptin.com/api/register"), body: {
      "email": emailController.text,
      "password": passwordController.text,
      "first_name": nameController.text,
      "last_name": "khalid",
      "age": "21",
      "gender": "male",
    });

    dynamic convertedJson = jsonDecode(registerResponse.body);

    if (registerResponse.statusCode == 200) {
      if (!mounted) return;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) =>  Location(
             // token: user.data!.accessToken,
          ),
        ),
      );
    } else {
      print(convertedJson["message"]);
    }

    setState(() {
      isLoading = false;
    });
  }
}
