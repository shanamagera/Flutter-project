import 'package:flutter/material.dart';
import 'package:university_app/Components/main_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:university_app/Components/nav_bar.dart';
import 'package:university_app/Components/noti.dart';


class HomeScreen extends StatefulWidget{
@override
State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

  @override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(title: const Text('Home'), centerTitle: true),

    // DRAWER
    drawer: MainDrawer(),
    body: ListView(
      children: [
        Container(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/registerbackground.jpg'), fit:BoxFit.cover, colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop) ),
            // color: Color.fromRGBO(1, 128, 115, 1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // children: [
                //   Icon(Icons. dashboard,
                //   color: Colors.white,
                //   size: 30,
                //   ),
                //   Icon(Icons.notifications,
                //   color: Colors.white,
                //   size: 30,
                //   ),
                // ],
              ),
              SizedBox(height: 20),
              Padding(padding: const EdgeInsets.all(10.0),
              child: Text(
                "Hi, Aisha",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  wordSpacing: 2,
                  color: Colors.white
                ),
              ),
              ),
              // SEARCHBAR
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search here',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    prefixIcon: Icon(Icons.search, size: 25,),
                    suffixIcon: Icon(Icons.mic, size: 25,)
                  ),
                ),

              ),
            ],
          ),
        ),
      
        
       
      
        // SizedBox(height: 20,),
        // Container(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: [
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children:[
        //         Container(
        //           margin: EdgeInsets.only(top: 2),
        //           width: MediaQuery.of(context).size.width/2.5,
        //           height: MediaQuery.of(context).size.height/6,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(20.0),
        //             color: Color.fromRGBO(1, 128, 115, 1),
        //             ),
        //             child: Column(
        //               // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //               // crossAxisAlignment: CrossAxisAlignment.center,
        //               children: [
        //                 SvgPicture.asset('assets/icons/bookstore.svg',
        //                 height: 40.0,
        //                 width: 40.0,
        //                 color: Colors.white,),
        //                 Text('Bookstore', textAlign: TextAlign.center,
        //                 style: Theme.of(context).textTheme.subtitle2,),
        //               ],
        //             ),
        //         ),
        //         Container(
        //           margin: EdgeInsets.only(top: 2),
        //           width: MediaQuery.of(context).size.width/2.5,
        //           height: MediaQuery.of(context).size.height/6,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(20.0),
        //             color: Color.fromRGBO(1, 128, 115, 1),
        //             ),
        //             child: Column(
        //               // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //               // crossAxisAlignment: CrossAxisAlignment.center,
        //               children: [
        //                 SvgPicture.asset('assets/icons/course.svg',
        //                 height: 40.0,
        //                 width: 40.0,
        //                 color: Colors.white,),
        //                 Text('Courses',textAlign: TextAlign.center,
        //                 style: Theme.of(context).textTheme.subtitle2,
        //                 ),
        //               ],
        //             ),
        //         ),
        //       ],
        //     ),
        //     SizedBox(height: 20,),
        //     Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children:[
        //         Container(
        //           margin: EdgeInsets.only(top: 2),
        //           width: MediaQuery.of(context).size.width/2.5,
        //           height: MediaQuery.of(context).size.height/6,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(20.0),
        //             color: Color.fromRGBO(1, 128, 115, 1),
        //             ),
        //             child: Column(
        //               // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //               // crossAxisAlignment: CrossAxisAlignment.center,
        //               children: [
        //                 SvgPicture.asset('assets/icons/result.svg',
        //                 height: 40.0,
        //                 width: 40.0,
        //                 color: Colors.white,),
        //                 Text('Results', textAlign: TextAlign.center,
        //                 style: Theme.of(context).textTheme.subtitle2,),
        //               ],
        //             ),
        //         ),
        //         Container(
        //           margin: EdgeInsets.only(top: 2),
        //           width: MediaQuery.of(context).size.width/2.5,
        //           height: MediaQuery.of(context).size.height/6,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(20.0),
        //             color: Color.fromRGBO(1, 128, 115, 1),
        //             ),
        //             child: Column(
        //               // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //               // crossAxisAlignment: CrossAxisAlignment.center,
        //               children: [
        //                 SvgPicture.asset('assets/icons/timetable.svg',
        //                 height: 40.0,
        //                 width: 40.0,
        //                 color: Colors.white,),
        //                 Text('Timetable',textAlign: TextAlign.center,
        //                 style: Theme.of(context).textTheme.subtitle2,
        //                 ),
        //               ],
        //             ),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        //   // ),
        // ),

      ],
    ),
    bottomNavigationBar: NavBar(),
  );
}
}
