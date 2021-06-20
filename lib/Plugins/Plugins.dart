import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Plugins/PdfViewer.dart';
import 'package:knowledgeable_content/Plugins/Pdfs/PdfStorage.dart';
import 'package:knowledgeable_content/Plugins/PushNotifiation.dart';
import 'package:knowledgeable_content/Plugins/UpiPay.dart';
import 'package:knowledgeable_content/Plugins/localnotifications.dart';

class Plugins extends StatefulWidget {
  @override
  _PluginsState createState() => _PluginsState();
}

class _PluginsState extends State<Plugins> {
  List Pages = ['Login'];

  @override
  Widget build(BuildContext context) {
    return ListView(
        //itemCount: Pages.length,
        children: [
          // Padding( padding: EdgeInsets.all(16),
          //     child:Card(
          //       child: ListTile(
          //         title: Text('Pdf Viewer'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: (){
          //             Navigator.push(context,MaterialPageRoute(builder: (context)=>Pdf1()));
          //           },
          //         ),
          //       ),
          //     )),
          // Padding( padding: EdgeInsets.all(16),
          //     child:Card(
          //       child: ListTile(
          //         title: Text(' Pdf Storag '),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: (){
          //             Navigator.push(context,MaterialPageRoute(builder: (context)=>MyPdf()));
          //           },
          //         ),
          //       ),
          //     )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Upi Pay'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UpiPay()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Push Notification'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PushNotification()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Local Notifications'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Localnotifications()));
                    },
                  ),
                ),
              )),
        ]);
  }
}
