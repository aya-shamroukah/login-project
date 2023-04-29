// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            SizedBox(
              width: double.infinity,
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 90,),
                  Text('Welcome',style: TextStyle(fontSize: 33,fontFamily: "myfont",color: Colors.grey[800]),),
                  SizedBox(height: 35,),

                  SvgPicture.asset('assets/icons/chat.svg'),
                  SizedBox(height: 35,),
                  ElevatedButton(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 17,  color: Colors.purple[100]),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color.fromARGB(255, 119, 84, 179)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27)))),
                    onPressed: () {
                       Navigator.of(context).pushNamed('login');

                    },
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    child: Text(
                      'SINGUP',
                      style: TextStyle(fontSize: 17,  color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[100]),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27)))),
                    onPressed: () {
                       Navigator.of(context).pushNamed('singup');
                    },
                  ),
                ],
              ),
            ),
            Positioned(
                left: 0,
                child: Image.asset(
                  'images/main_top.png',
                  width: 100,
                )),
            Positioned(
                bottom: 0,
                child: Image.asset(
                  'images/main_bottom.png',
                  width: 100,
                ))
          ]),
        ),
      ),
    );
  }
}
