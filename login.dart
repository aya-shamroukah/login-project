// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController password= new TextEditingController();

var password1;

  @override
  Widget build(BuildContext context) {
        double md = MediaQuery.of(context).size.width;

    return SafeArea(
      
      child: Scaffold(
        body: SizedBox(
          //height: double.infinity,
        //  width: double.infinity,
          child: Stack(children: [
            SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 90,),
                    Text('Login',style: TextStyle(fontSize: 33,fontFamily: "myfont",color: Colors.grey[800]),),
                    SizedBox(height: 35,),
              
                    SvgPicture.asset('assets/icons/login.svg',width: 333,),
                    SizedBox(height: 35,),
                    //username
              
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child:
                       TextFormField(
                        cursorColor: Color.fromARGB(255, 157, 91, 168),
                           decoration: InputDecoration
                           (//fillColor: Colors.purple[800],
                focusedBorder: 
                           
                           OutlineInputBorder(borderSide:
                           BorderSide(
                color: Color.fromARGB(255, 225, 190, 231)),
                           borderRadius: BorderRadius.circular(66)
                ),
                 enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                                borderRadius: BorderRadius.circular(30)
                              ),
                              hintText: 'User name :',
                               hintStyle: TextStyle(color: Colors.purple[200]),
              
                               prefixIcon: Icon(
                                Icons.person,
                                color: Colors.purple[800],
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 50))
                           ) ,
                          ),
                    ),
                          SizedBox(height: 15,),
                     
                    //password
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: 
                      TextFormField(
                         cursorColor: Color.fromARGB(255, 157, 91, 168),
             //   validator: (text) {
               //           if (text!.length < 10) {
                            //return 'لا يمكن ان تكون اقل من 8 احرف';
                          //}
                          //if (text.length > 16) {
                            //return 'لا يمكن ان تكون اكثر من 16 احرف';
                          //}
                        //},
                      //  controller: password,
                    //      onSaved: (text) {
                  //        password1= text;
                //        },
                obscureText: true,
                           decoration: InputDecoration(focusedBorder: 
                           OutlineInputBorder(borderSide:
                           BorderSide(color: Color.fromARGB(255, 225, 190, 231)),
                           borderRadius: BorderRadius.circular(66)
                ),
                 enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                                borderRadius: BorderRadius.circular(66)
                              ),
                              hintText: 'Password : ',
                              hintStyle: TextStyle(color: Colors.purple[200]),
                               prefixIcon: Icon(
                                Icons.visibility_off_outlined,
                                color: Colors.purple[800],
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 50))
                           ) ,
                          ),
                    ),
              
                     SizedBox(height: 15,),
              
                          ElevatedButton(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(fontSize: 17, color: Colors.purple[100],),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color.fromARGB(255, 119, 84, 179)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27)))),
                      onPressed: () { },
                    ),    
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                Text("Don't have an Account?"),
                MaterialButton(child:Text("SignUp",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 16),) ,
                onPressed: (){
                   Navigator.of(context).pushNamed('singup');
                },)
                          ],),      
                  ],
                ),
              ),
            ),
           
            Positioned(
                left: 0,
                child: Image.asset(
                  'images/main_top.png',
                  width: 110,
                )),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  'images/login_bottom.png',
                  width: 150,
                ))
          ]),
        ),
      ),
    );
  }
}