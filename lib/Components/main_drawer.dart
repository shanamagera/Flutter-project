import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget{
  bool isObscure=true;
  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
Widget build(BuildContext context){
  return Drawer(
    child: Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Colors.teal,
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: CircleAvatar(
                  minRadius: 50.0,
                  maxRadius: 50.0,
                  backgroundImage:
                  AssetImage('assets/images/profile.jpg'),
                ),
              ),
              Text('Aisha Peters', style: TextStyle(
                fontSize: 22, 
              color: Colors.white
              ),
              ),
              Text('aishapeters@gmail.com', style: TextStyle(
              color: Colors.white
              ),
              ),
              // Container(
              //   width: 100,
              //   height: 100,
              //   margin: EdgeInsets.only(top: 30),
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     image: DecorationImage(image: AssetImage('assets/images/profile.jpg'), fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
            ],
          ),

        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Profile', style: TextStyle(fontSize: 16),),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.dashboard),
          title: Text('Dashboard', style: TextStyle(fontSize: 16),),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.calendar_month),
          title: Text('Calendar', style: TextStyle(fontSize: 16),),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Contact', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Logout', style: TextStyle(fontSize: 16),),
          onTap: () {},
        ),
        // Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(image:AssetImage('assets/images/drawer.jpg'),
        //     fit: BoxFit.fill)
        //   ),
        //   ),
          
        // Image.asset('assets/images/drawer.jpg', height: 128, width: 100,),
      ],
    ),

  );
}

}