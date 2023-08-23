
import 'package:flutter/material.dart';
import 'home_page.dart';





class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {





  @override
  void initState() {
    super.initState();
    _splashFun();
  }
  _splashFun() async
  {
    await Future.delayed(Duration(seconds: 60),(){});
    Navigator.pushReplacement(  context , MaterialPageRoute(builder: (context) => Homescreen()));

  }

   @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Color(0xff253238),

     body: SafeArea(
       child: Stack(
         alignment: Alignment.bottomCenter,
         children: [
           Container(
             padding: EdgeInsetsDirectional.only(top: 510,start: 65),
             width: double.infinity,
             height: double.infinity,
             decoration: BoxDecoration(
               image: DecorationImage(image: NetworkImage('https://w.forfun.com/fetch/b1/b10c2b22fc83644699ec4822d102da6b.jpeg?h=900&r=0.5'),fit: BoxFit.cover)
             ),
             child: Text("Welcome",style: TextStyle(fontSize: 40,color: Colors.white,fontFamily: 'Lugr'),),
           ),

              Container(
                height: 50,
                width: 50,
                margin: EdgeInsetsDirectional.only(bottom: 50),
                child: CircularProgressIndicator(
                 strokeWidth: 5,
                 color: Colors.yellow,
             ),
              ),

         ],
       ),


     ),


   ) ;

  }


}

