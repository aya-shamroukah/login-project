import'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Signup2 extends StatefulWidget {
  const Signup2({super.key});

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 185, 203, 252),
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Let’s Start",style: 
              TextStyle(fontSize: 57,fontWeight: FontWeight.bold,color: Color.fromARGB(244, 175, 183, 207)),),
              SizedBox(height: 20,),
                 Padding(
                   padding: const EdgeInsets.only(left:30,right: 30,top: 20),
                   child: TextFormField(
                    
                    cursorColor: Color(0xff353A48),
                    decoration: InputDecoration(
                                 
                    hintText: "Full Name",
                   prefixIcon:Icon(Icons.edit,color: Color(0xff353A48),) ,
                   hintStyle: TextStyle(fontSize: 17,color: Color(0xff353A48)) ),),
                 ),
                  Padding(
                    padding: const EdgeInsets.only(left:30,right: 30,top: 20),
                    child: TextFormField(
                      cursorColor: Color(0xff353A48),
                      decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email,color: Color(0xff353A48),),
                      hintText: "Email Address",
                      hintStyle: TextStyle(color: Color(0xff353A48))),),
                  ),
               Padding(
                 padding: const EdgeInsets.only(left:30,right: 30,top: 20),
                 child: TextFormField(
                  cursorColor: Color(0xff353A48),
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock,color: Color(0xff353A48),),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Color(0xff353A48))),),                  
               )   ,
               SizedBox(height: 30,),
               Center(
                 child: Container(
                  height: 49,width: 295,
                   child: ElevatedButton(
                    onPressed: (){
                    },
                    style: ButtonStyle(  backgroundColor:
                                    MaterialStateProperty.all(Color(0xff353A48)),),
                   child: Text("SignUp",style:TextStyle(fontSize: 17) ,),),
                 ),
               ),
               SizedBox(height: 25,),            
               Center(
                 child: InkWell(onTap: (() { }),
                 child: Text("Terms & Conditions",style: TextStyle(color: Color(0xff353A48)),),),
               )
              ]),
          ),
         
        ),
      ),
    );
  }
}