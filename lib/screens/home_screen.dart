import 'package:chat_ui/screens/chat_list.dart';
import 'package:chat_ui/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  final screen = [
    ChatList(),
    Text('haii'),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: screen[index],
        // appBar: AppBar(
        //   actions: [
        //     ElevatedButton(
        //       onPressed: () {},
        //       child: Row(
        //         children: [
        //           Padding(
        //               padding: EdgeInsets.all(
        //             0,
        //           )),
        //           //  EdgeInsets.only(left: 0,right: 0)
        //           Icon(Icons.add, color: Colors.pinkAccent),
        //           Text(
        //             'Add New',
        //             style: TextStyle(
        //                 color: Colors.black, fontWeight: FontWeight.bold),
        //           ),
        //         ],
        //       ),
        //       style: ElevatedButton.styleFrom(
        //           onPrimary: Color.fromARGB(255, 218, 143, 168),
        //           minimumSize: const Size(30, 140),

        //           // fixedSize: Size(50, 50),
        //           shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(50))),
        //     ),
        //   ],
        //   // Text('add new',style: TextStyle(color: Colors.black),)],
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        //   title: Text(
        //     'Conversations',
        //     style: TextStyle(
        //         fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        //   ),
        // ),

        // body: TabBarView(children: [

        // ]),

        bottomNavigationBar: NavigationBar(
          elevation: 2,
          backgroundColor: Colors.white,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(icon: Icon(Icons.chat), label: 'Chats'),
            NavigationDestination(
                icon: Icon(Icons.rounded_corner_sharp), label: 'Channels'),
            NavigationDestination(
                icon: Icon(Icons.person_pin_outlined), label: 'Profile'),
          ],
        ),

        // (

        //   items: [
        //     BottomNavigationBarItem(

        //         icon: Icon(
        //           Icons.chat_sharp,
        //           color: Colors.pinkAccent,
        //         ),
        //         label: "Chats",
        //         backgroundColor: Colors.pinkAccent),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.api_rounded), label: "Channels"),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.person_pin_sharp), label: "Profile")
        //   ],
        // ),
      );
}
