import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:triplt/screens/location/location.dart';
import 'package:triplt/screens/login_1,2/siginup.dart';
import '../../moduls/response_login/LoginResponse.dart';
import '../../moduls/colors/color.dart';
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
  final _formKey  = GlobalKey<FormState>();
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
                      const SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
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
                              height:330.67 ,
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
                                  const SizedBox(height: 20,),
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.all(9),

                                        hintText: ' Email'
                                    ),

                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          !value.contains("@")) {
                                        return "Enter Valid Email";
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      setState(() {
                                        email = value!;
                                      });
                                    },
                                  ),
                                  const SizedBox(height: 20,),
                                  TextFormField(

                                    obscureText: isPassword,
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(9),
                                      hintText: ' Password',

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
                                    onSaved: (value) {
                                      setState(() {
                                        password = value!;
                                      });
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.end, children: const [Text('Forgot password?',style: TextStyle(
                                        color: CustomColor.color1

                                    ),)],),
                                  ),
                                  const SizedBox(height: 20,),
                                  SizedBox(
                                      height: 50,
                                      width: 273,
                                      child: isLoading ? const Center(child: CircularProgressIndicator(color:CustomColor.color2,),):
                                      ElevatedButton(
                                          onPressed: () {
                                            if(_formKey.currentState!.validate()){
                                              _formKey.currentState!.save();
                                              login();
                                            }
                                          },style:ElevatedButton.styleFrom(
                                        primary: CustomColor.color1,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(
                                              40,
                                            )),

                                      ),
                                          child:Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(width: 90,),
                                              const Text('Sign in',textAlign: TextAlign.end
                                                ,style: TextStyle(
                                                  fontSize: 18,

                                                ),),
                                              const SizedBox(width: 50,),
                                              Container(
                                                  width: 40,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                      color: CustomColor.color4,
                                                      borderRadius: BorderRadius.circular(30)
                                                  ),
                                                  child: const Icon(Icons.arrow_forward)
                                              )
                                            ],)
                                      )

                                  ),
                                ],
                              ) ,
                            )

                        ),
                      ),
                      const SizedBox(height: 60,),
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
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children:  [
                          const Text('Don’t have an account ?',style: TextStyle(color:Colors.white,fontSize: 15,),),
                        TextButton(onPressed: (){
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) =>const Signup ()));
                        }, child:   const Text('Sign up',style: TextStyle(color:Colors.black,fontSize: 17,fontWeight: FontWeight.bold )),
                        )],
                      ),
                      const SizedBox(height: 40,),
                    ]),
              )),
        )
    );
  }
  Future login() async{
    setState(() {
      isLoading = true;
    });
    Response response = await post(Uri.parse("http://alcaptin.com/api/login"),headers: {
      "appType":'client'
    },
        body: {
          "email":email,
          "password":password,
        });
    dynamic jsonResponse = jsonDecode(response.body);
    if(response.statusCode == 200){
      LoginResponse loginResponse =LoginResponse.fromJson(jsonResponse);

    Navigator.push(
        context, MaterialPageRoute(builder: (_)=>  Location(accessToken:loginResponse.data?.accessToken , ) ));
    }else{
      print(jsonResponse['message']);
    }
    setState(() {
      isLoading = false;
    });

  }
}
