import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';
import 'package:university_app/Screens/Register_screen.dart';
import 'package:university_app/Screens/home_screen.dart';


class LoginScreen extends StatefulWidget{
  bool isObscure=true;
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {



  Widget build(BuildContext context){
    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 15.0);
    TextStyle linkStyle = TextStyle(color: Colors.blue);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Back!'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/Login background.jpg'), fit:BoxFit.cover, colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop)),
        ),
        child: Padding(padding: const EdgeInsets.all(20.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Positioned.fill(child: Container(
              //   decoration: const BoxDecoration(
              //     image: DecorationImage(image: AssetImage('assets/images/Login background.jpg'), fit: BoxFit.cover),
              //   ),
              // ),),
              Icon(
                Icons.account_circle_rounded,
                size:90,
              ),
              SizedBox(height:60),
              SizedBox(width: 300, height: 100,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.people),
                  hintText: "Enter Username",
                  hintStyle:TextStyle(color: Colors.black),
                  border:OutlineInputBorder()
                ),
              ),
              ),
              SizedBox(width: 300, height: 70,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Enter Password",
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder()
                ),
              ),
              ), 
          
          RichText(text: TextSpan(
            style: defaultStyle,
            children: <TextSpan> [
              TextSpan(
                text: 'Do not have an account?'),
                TextSpan(
                  text: 'Register',
                  style: linkStyle,
                  recognizer: TapGestureRecognizer()
                  ..onTap=(){
                    Navigator.of(context).push(MaterialPageRoute(builder:(context) => RegisterScreen(),));
                    print('Register');
                  }

                ),

            ]
            
            
            
            ), 
        
            ),
             
  
              // Checkbox(value: isChecked, 
              // tristate: true,
              // onChanged: (newBool){
              //   setState(() {
              //     isChecked=newBool;


              //   });
              //   },
              // ),
              SizedBox(height: 50,),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) => HomeScreen(),));
                    // print('Home');
                }, 
                child: Text('Login'),
                ),
            ],
          ),
        ),
      ),
   
      
    );
  }
}