import 'package:chat_ui/models/user.dart';
import 'package:chat_ui/screens/chat_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatTile extends StatefulWidget {
  ChatTile({required this.data});
  Message data;

  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatDetail(
              detail: widget.data,
            ),
          )),
      child: ListTile(
        title: Text(widget.data.name.toString(),style: TextStyle(fontWeight: FontWeight.w500),),
        subtitle: Row(
          children: [
            Flexible(
              child: Text(
                widget.data.message.toString(),
              ),
            ),
          ],
        ),
        trailing:Text(widget.data.date.toString(),style: TextStyle(fontWeight: FontWeight.w500),) ,
        
        leading: CircleAvatar(radius: 30,
          backgroundImage: AssetImage(
            widget.data.avatar.toString(),
          ),
        ),
      ),
    );
  }
}
