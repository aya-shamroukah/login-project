import'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Welcome2 extends StatefulWidget {
  const Welcome2({super.key});

  @override
  State<Welcome2> createState() => _Welcome2State();
}

class _Welcome2State extends State<Welcome2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE1E9F1),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            
        
            Padding(
              padding: const EdgeInsets.only(top: 500,left: 20),
              child: SizedBox(
                width: double.infinity,
                child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,  
                  children: [       
                Text("We are here",style: TextStyle(color:Color(0xff353A48),fontSize: 25,fontFamily: "myfont"),),
                SizedBox(height: 10,),
                 Text("Your search is over here. We\n provide great figma designs to\n use in your project.",
                 style: TextStyle(color: Color(0xff353A48)),),
                 SizedBox(height: 40,),
                 Center(
                   child: Container(
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffE1E9F1),
                          border: Border.all(color: Color(0xff353A48))),
                  
                    height: 50,
                   width: 297,
                    child: Row(children: [
                      Container(
                        height: 50,
                        width: 147,
                        child: ElevatedButton(onPressed: (() {
                          Navigator.of(context).pushNamed('login2');
                        }),
                        style: ButtonStyle(  backgroundColor:
                              MaterialStateProperty.all(Color(0xff353A48)),),
                        child:
                         Text("Login"),              
                        ),                     
                      ),
                      Container(
                        height: 50,
                        width: 148,
                        child: ElevatedButton(onPressed: (() {
                          Navigator.of(context).pushNamed('signup2');
                        }),
                     style: ButtonStyle(  backgroundColor:
                              MaterialStateProperty.all(Color(0xffE1E9F1)),),                     
                        child:
                         Text("SignUp", style: TextStyle(color: Color(0xff353A48)),),              
                        ),
                        
                      )

                   ]),
                   ),
                 )
],),
              ),
            ),
          Positioned(
            top: 100,
            right: 0,
            child: Image.asset("images/GraphicPart.png")),]),
      ),
    );
  }
}