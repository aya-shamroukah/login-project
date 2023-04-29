import'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 208, 208),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 380,left: 40),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Welcome\nBack!",style: 
                  TextStyle(fontSize: 40,color: Color.fromARGB(255, 211, 176, 186),fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email,color: Color(0xff353A48),),
                      hintText: "Email Address",
                      hintStyle: TextStyle(color: Color(0xff353A48))),),
                  ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextFormField(decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock,color: Color(0xff353A48),),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Color(0xff353A48))),),                  
               )   ,
               SizedBox(height: 25,),
               Center(
                 child: Container(
                  height: 49,width: 295,
                   child: ElevatedButton(
                    onPressed: (){
                    },
                    style: ButtonStyle(  backgroundColor:
                                    MaterialStateProperty.all(Color(0xff353A48)),),
                   child: Text("Login",style:TextStyle(fontSize: 17) ,),),
                 ),
               ),
                SizedBox(height: 25,),            
               Center(
                 child: InkWell(onTap: (() { }),
                 child: Text("Forgot Password?",style: TextStyle(color: Color(0xff353A48)),),),
               )
                
               ],),
              ),
              Positioned(left: 0,top: 140,
            //  height: 182,
              //width: 282,
                child: Image.asset("images/Illustration.png",scale: 0.84,))
            ]),
        )),
    );
  }
}