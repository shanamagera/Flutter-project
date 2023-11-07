import 'package:flutter/material.dart';
import  'package:university_app/Components/models/User.dart';
// import 'package:flutter/semantics.dart';


class RegisterScreen extends StatefulWidget{
  

  // bool? isChecked=false;
  @override
   State<RegisterScreen> createState() => _RegisterScreenState();
}
class _RegisterScreenState extends State<RegisterScreen> {
  List<User> users=[];
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Registration'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle_rounded
              ),
              SizedBox(width: 300, height: 70,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "First name",
                  border: OutlineInputBorder()
                ),
              ),
              ),
              SizedBox(width: 300, height: 70,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Last name",
                  border: OutlineInputBorder()
                ),
              ),
              ), 
              SizedBox(width: 300, height: 70,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder()
                ),
              ),
              ),
              SizedBox(width: 300, height: 70,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Phone",
                  border: OutlineInputBorder()
                ),
              ),
              ),
              SizedBox(width: 300, height: 100,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder()
                ),
              ),
              ),
              

            
              
              ElevatedButton(
                onPressed: () {}, 
                child: Text('Register'),
                ),
            ],
          ),
        ),
      ),
   
    );
  }

}