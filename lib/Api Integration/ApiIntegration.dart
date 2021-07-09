import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Api%20Integration/GoogleDrive.dart';
import 'package:knowledgeable_content/Api%20Integration/GoogleMap.dart';
import 'package:knowledgeable_content/Api%20Integration/PaymentMethod.dart';

class ApiIntegration extends StatefulWidget {
  @override
  _ApiIntegrationState createState() => _ApiIntegrationState();
}

class _ApiIntegrationState extends State<ApiIntegration> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        //itemCount: Pages.length,
        children: [
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Google Map'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GoogleMaps()));
                    },
                  ),
                ),
              )),
          Padding( padding: EdgeInsets.all(16),
              child:Card(
                child: ListTile(
                  title: Text('Google Drive'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>GoogleDrives()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Payment Method'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PaymentMethod()));
                    },
                  ),
                ),
              )),
          // Padding(
          //     padding: EdgeInsets.all(16),
          //     child: Card(
          //       child: ListTile(
          //         title: Text('Scrollable List'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => ScrollableList()));
          //           },
          //         ),
          //       ),
          //     )),
          // Padding(
          //     padding: EdgeInsets.all(16),
          //     child: Card(
          //       child: ListTile(
          //         title: Text('ShiftingTab'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => ShiftingTab1()));
          //           },
          //         ),
          //       ),
          //     )),
          // Padding(
          //     padding: EdgeInsets.all(16),
          //     child: Card(
          //       child: ListTile(
          //         title: Text('Tab Indicator'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => TabIndicator()));
          //           },
          //         ),
          //       ),
          //     )),
          // // Padding( padding: EdgeInsets.all(16),
          // //     child:Card(
          // //       child: ListTile(
          // //         title: Text('TabView'),
          // //         trailing: IconButton(
          // //           icon: Icon(Icons.arrow_forward_ios),
          // //           onPressed: (){
          // //             Navigator.push(context,MaterialPageRoute(builder: (context)=>TabView()));
          // //           },
          // //         ),
          // //       ),
          // //     )),
          // Padding(
          //     padding: EdgeInsets.all(16),
          //     child: Card(
          //       child: ListTile(
          //         title: Text('Toggle Tab'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: () {
          //             Navigator.push(context,
          //                 MaterialPageRoute(builder: (context) => ToggleTab()));
          //           },
          //         ),
          //       ),
          //     )),
        ]);
  }
}