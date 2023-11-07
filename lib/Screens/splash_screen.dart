import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_app/Screens/Login_screen.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).push(MaterialPageRoute(builder:(context) => LoginScreen(),));

    });
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 128, 128, 1),
      body: Center(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
            Text('Uni', style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 50.0,
              fontStyle: FontStyle.italic,
              letterSpacing: 2.0,
               color: Color.fromRGBO(255, 255, 255, 1.0)
            ),
            ),
            Text('App', style: GoogleFonts.pattaya(
              fontSize: 50.0,
              fontStyle: FontStyle.italic,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(255, 255, 255, 1.0)
            ),
            ),
            ],
            ),
            Image.asset('assets/images/splashp.jpg', height: 150.0, width: 150.0,),
          ],
        ),
      ),
    );

  }
}
