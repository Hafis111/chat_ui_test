import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomSheeet extends StatelessWidget {
  const BottomSheeet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        onClosing: () {},
        enableDrag: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        backgroundColor: Colors.white,
        builder: (context) {
          return Container(
            height: 300,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hafis Av',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 150),
                            child: Icon(Icons.edit),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row( 
                        children: [
                          CircleAvatar(backgroundColor:Colors.red,
                            child: Icon(Icons.person_pin_circle_rounded,),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Account',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
                          ),
                        ],
                        
                      ),
                         SizedBox(
                        height: 12,
                      ),
                       Row( 
                        children: [
                          CircleAvatar(backgroundColor: Colors.blue,
                            child: Icon(Icons.notifications_none,color: Colors.white,),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Notifications',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
                          ),
                        ],
                        
                      ),
                         SizedBox(
                        height: 12,
                      ),
                       Row( 
                        children: [
                          CircleAvatar(backgroundColor: Color.fromARGB(255, 245, 194, 54),
                            child: Icon(Icons.help_outline,color: Colors.white,),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Help & Legal',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
                          ),
                        ],
                        
                      ),
                         SizedBox(
                        height: 12,
                      ),
                       Row( 
                        children: [
                          CircleAvatar(backgroundColor: Color.fromARGB(255, 147, 255, 150),
                            child: Icon(Icons.file_upload_outlined,color: Colors.white,),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Tell a Friend',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
                          ),
                        ],
                        
                      ),

                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
