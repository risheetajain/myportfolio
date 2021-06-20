import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Apps/Courses%20App/Main1.dart';
import 'package:knowledgeable_content/Apps/E-commerce/Main2.dart';
import 'package:knowledgeable_content/Apps/Food%20Ordering/Main1.dart';
import 'package:knowledgeable_content/Apps/Hostel/Home.dart';
import 'package:knowledgeable_content/BottomBar/BottomBar.dart';
import 'package:knowledgeable_content/Drawer/Drawers.dart';
import 'package:knowledgeable_content/Ecommerce%20Apps/Ecommerce%20App%201/MainApps.dart';
import 'package:knowledgeable_content/Ecommerce%20Apps/Ecommerce%20App%202/MainApps2.dart';
import 'package:knowledgeable_content/Ecommerce%20Apps/Ecommerce%20App%203/MainApps3.dart';
import 'package:knowledgeable_content/Logins/Login.dart';
import 'package:knowledgeable_content/Apps/Meditation/Main2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:knowledgeable_content/Picker/AllPicker.dart';
import 'package:knowledgeable_content/Picker/Picker.dart';

class EcommerceApps extends StatefulWidget {
  @override
  _EcommerceAppsState createState() => _EcommerceAppsState();
}

class _EcommerceAppsState extends State<EcommerceApps> {
  List Pages = ['Login'];

  @override
  Widget build(BuildContext context) {
    return ListView(
        //itemCount: Pages.length,
        children: [
          // Padding( padding: EdgeInsets.all(16),
          //     child:Card(
          //       child: ListTile(
          //         title: Text('EcommerceApps 1'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: (){
          //             Navigator.push(context,MaterialPageRoute(builder: (context)=>EcommerceApps1()));
          //           },
          //         ),
          //       ),
          //     )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('EcommerceApps 2'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EcommerceApps2()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('EcommerceApps 3'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EcommerceApps3()));
                    },
                  ),
                ),
              )),
        ]);
  }
}
