import 'package:chat_ui/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image(
              fit: BoxFit.fitHeight,
              image: AssetImage(
                'assets/images/newpic.jpg',
              ),
              height: double.infinity,
            ),
            Align(alignment: Alignment.bottomCenter,
            child:BottomSheeet() ,)
      
            // Image(
            //   image: AssetImage('assets/images/newpic.jpg'),
            // ),
            // Image(
            //   image: AssetImage('assets/images/newpic.jpg'),
            // )
          ],
        ),
      ),
    );
  }
}
