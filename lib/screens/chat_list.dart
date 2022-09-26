import 'dart:ffi';

import 'package:chat_ui/models/user.dart';
import 'package:chat_ui/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  List<Message> chatList1 = [
    Message(
        avatar: "assets/images/mypic.jpg",
        name: "Naseeba",
        message: "hoi",
        date: "Tue"),
    Message(
        avatar: "assets/images/newpic.jpg",
        name: "Bilal",
        message: "dei",
        date: "Mon"),
    Message(
        avatar: "assets/images/mypic.jpg",
        name: "SuluMan",
        message: "haai",
        date: "Sun"),
    Message(
        avatar: "assets/images/mypic.jpg",
        name: "AsiM",
        message: "haai",
        date: "Sun"),
    Message(
        avatar: "assets/images/mypic.jpg",
        name: "Hisham",
        message: "haai",
        date: "Sun"),
    Message(
        avatar: "assets/images/mypic.jpg",
        name: "Shami",
        message: "haai",
        date: "Sun"),
    Message(
        avatar: "assets/images/mypic.jpg",
        name: "ShemmU",
        message: "haai",
        date: "Sun"),
    Message(
        avatar: "assets/images/mypic.jpg",
        name: "ShemmU",
        message: "haai",
        date: "Sun"),
    Message(
        avatar: "assets/images/mypic.jpg",
        name: "ShemmU",
        message: "haai",
        date: "Sun"),
    Message(
        avatar: "assets/images/mypic.jpg",
        name: "ShemmU",
        message: "haai",
        date: "Sun"),
    Message(
        avatar: "assets/images/mypic.jpg",
        name: "ShemmU",
        message: "haai",
        date: "Sun"),
    Message(
        avatar: "assets/images/mypic.jpg",
        name: "ShemmU",
        message: "haai",
        date: "Sun"),
    Message(
        avatar: "assets/images/mypic.jpg",
        name: "ShemmU",
        message: "haai",
        date: "Sun"),
    Message(
        avatar: "assets/images/mypic.jpg",
        name: "ShemmU",
        message: "haai",
        date: "Sun"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.pink.withOpacity(.3)),
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(
                        0,
                      )),
                      //  EdgeInsets.only(left: 0,right: 0)
                      Icon(Icons.add, color: Colors.pink),
                      Text(
                        'Add New',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                // style: ElevatedButton.styleFrom(
                //     onPrimary: Color.fromARGB(255, 218, 143, 168),

                //     // fixedSize: Size(50, 50),
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(50))),
              ),
            ],
          ),
        ],
        // Text('add new',style: TextStyle(color: Colors.black),)],
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Conversations',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(width: 350,
            decoration: BoxDecoration(border:Border.all(color: Colors.black12),borderRadius: BorderRadius.all(Radius.circular(40))),
              child: TextField(
                
                decoration: InputDecoration(
                  
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                      
                      
                    ),
                  ),
                  
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search...',
                ),
              ),
            ),
            Column(
              children: chatList1.map((e) => ChatTile(data: e)).toList(),
            )
          ],
        ),
      ),
    );
  }
}
