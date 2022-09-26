import 'package:chat_ui/models/Message.dart';
import 'package:chat_ui/models/user.dart';
import 'package:chat_ui/screens/profile_page.dart';
import 'package:chat_ui/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatDetail extends StatefulWidget {
  ChatDetail({Key? key, required this.detail}) : super(key: key);
  Message detail;

  @override
  State<ChatDetail> createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  bool show_send = false;

  List<MyMessage> messageList1 = [
    MyMessage(isSend: true, message: 'heloo'),
    MyMessage(isSend: false, message: 'doi'),
    MyMessage(isSend: false, message: 'How are u?'),
    MyMessage(isSend: true, message: 'Im fine'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 80,
        titleSpacing: 0,
        leading: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onTap: () => Navigator.pop(context),
            ),
            const SizedBox(
              width: 5,
            ),
            // IconButton(onPressed:() => Navigator.pop(context) , icon: Icon(Icons.arrow_back)),
            CircleAvatar(
                radius: 20,
                // child: Text(),
                backgroundImage: AssetImage("assets/images/mypic.jpg")),
          ],
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 10,
            ),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (context) => ProfilePage(),
            //       ),
            //     );
            // },
            Text(
              widget.detail.name.toString(),
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.settings,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            ListView.builder(
              itemCount: messageList1.length,
              itemBuilder: (context, index) => Chats(
                mymessage: messageList1[index],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: const [
                    Flexible(
                      child: TextField(
                        decoration:  InputDecoration(
                          hintText: 'Write Message...',
                          prefixIcon: CircleAvatar(
                            radius: 23,
                            child: Icon(
                              Icons.add,
                            ),
                          ),
                          suffixIcon: CircleAvatar(
                            child: Icon(Icons.send),
                          ),
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
