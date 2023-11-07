import 'package:flutter/material.dart';
import 'package:university_app/Screens/register_screen.dart';
import 'package:university_app/Screens/login_screen.dart';
import 'package:university_app/Screens/splash_screen.dart';
import 'package:university_app/Screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async {
  // ensures firebase is initialized once the app launches
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // the runApp functions runs the application
  runApp(const MyApp());
}
// class declaration->MyApp inherits from the statelesswidget base class
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  // the build method builds the UI
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uni App',
      home: SplashScreen(),
  

      // initialRoute: '/register',
      // routes: {
      //   '/':(context) => SplashScreen(),
      //   '/login':(context) => LoginScreen(),
      //   '/register':(context) => RegisterScreen(),
      // },
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light().copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(0, 150, 136, 1)),
      textTheme: GoogleFonts.sourceSans3TextTheme(Theme.of(context).textTheme.apply().copyWith(
        bodyText1: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)
      ))
    
    ),
    
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        
      
      // home: const MyHomePage(title: 'Mandela University'),
    );
  }
}


