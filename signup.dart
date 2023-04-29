// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'dart:math';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  final _controller=ConfettiController();
  bool isplaying=false;
  @override
  void dispose(){
    super.dispose();
     _controller.dispose();
  }

  TextEditingController password = new TextEditingController();

  var password1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.topCenter,
        children:[ Scaffold(
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'SignUp',
                      style: TextStyle(
                          fontSize: 33,
                          fontFamily: "myfont",
                          color: Colors.grey[800]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
      
                    SvgPicture.asset(
                      'assets/icons/signup.svg',
                      width: 270,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //email
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Color.fromARGB(255, 157, 91, 168),
                        decoration: InputDecoration(
                            fillColor: Colors.purple[800],
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 225, 190, 231)),
                                borderRadius: BorderRadius.circular(66)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                                borderRadius: BorderRadius.circular(30)),
                            hintText: 'Your email :',
                            hintStyle: TextStyle(color: Colors.purple[200]),
                            prefixIcon: Icon(
                              Icons.alternate_email_sharp,
                              color: Colors.purple[800],
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 50))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //user name
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        cursorColor: Color.fromARGB(255, 157, 91, 168),
                        decoration: InputDecoration(
                            fillColor: Colors.purple[800],
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 225, 190, 231)),
                                borderRadius: BorderRadius.circular(66)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                                borderRadius: BorderRadius.circular(30)),
                            hintText: 'User name :',
                            hintStyle: TextStyle(color: Colors.purple[200]),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.purple[800],
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 50))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //password
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        cursorColor: Color.fromARGB(255, 157, 91, 168),
                        validator: (text) {
                          if (text!.length < 10) {
                            return 'لا يمكن ان تكون اقل من 8 احرف';
                          }
                          if (text.length > 16) {
                            return 'لا يمكن ان تكون اكثر من 16 احرف';
                          }
                        },
                        controller: password,
                        onSaved: (text) {
                          password1 = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 225, 190, 231)),
                                borderRadius: BorderRadius.circular(66)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                                borderRadius: BorderRadius.circular(66)),
                            hintText: 'Password : ',
                            hintStyle: TextStyle(color: Colors.purple[200]),
                            prefixIcon: Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.purple[800],
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 50))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      child: Text(
                        'Signup',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.purple[100],
                            fontFamily: "myfont"),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 119, 84, 179)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27)))),
                      onPressed: () {
                        if(isplaying){
                           _controller.stop();
                        }
                        else{
                           _controller.play();
                        }
                        isplaying=!isplaying;
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an Account?"),
                        MaterialButton(
                          child: Text(
                            "Log in",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 16),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('login');
                          },
                        )
                      ],
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    //or divider
                    SizedBox(
                      width: 299,
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            color:  Color.fromARGB(255, 192, 104, 207),
                          )),
                          Text(
                            "  OR  ",
                            style: TextStyle(color: Colors.purple[900]),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            color: Color.fromARGB(255, 192, 104, 207),
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //twitter
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color.fromARGB(255, 192, 104, 207), width: 1),
                            ),
                            child: SvgPicture.asset(
                              "images/twitter.svg",
                              color: Colors.purple[700],
                              height: 20,
                              width: 10,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,   ),
                        //facebook
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color.fromARGB(255, 192, 104, 207), width: 1),
                            ),
                            child: SvgPicture.asset(
                              "images/facebook.svg",
                              color: Colors.purple[700],
                              height: 20,
                              width: 10,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,   ),
                        //google
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color.fromARGB(255, 192, 104, 207), width: 1),
                            ),
                            child: SvgPicture.asset(
                              "images/google-plus.svg",
                              color: Colors.purple[700],
                              height: 20,
                              width: 10,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  left: 0,
                  child: Image.asset(
                    'images/signup_top.png',
                    width: 110,
                  )),
              Positioned(
                  bottom: 0,
                  child: Image.asset(
                    'images/main_bottom.png',
                    width: 70,
                  ))
            ]),
          ),
        
        ),
        ConfettiWidget(confettiController: _controller,
        blastDirection: -pi/2,
        gravity: 0.5,
        
        colors: [Color.fromARGB(255, 106, 27, 154),
        Color.fromARGB(255, 186, 104, 200),
        Color.fromARGB(255, 204, 90, 128)],
        )

      ]),
    );
  }
}
