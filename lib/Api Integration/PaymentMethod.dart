import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        //itemCount: Pages.length,
        children: [
          // Padding(
          //     padding: EdgeInsets.all(16),
          //     child: Card(
          //       child: ListTile(
          //         title: Text('RazorPay'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: () {
          //             Navigator.push(context,
          //                 MaterialPageRoute(builder: (context) => BubbleTab()));
          //           },
          //         ),
          //       ),
          //     )),
          // // Padding( padding: EdgeInsets.all(16),
          // //     child:Card(
          // //       child: ListTile(
          // //         title: Text('ExtendedTab'),
          // //         trailing: IconButton(
          // //           icon: Icon(Icons.arrow_forward_ios),
          // //           onPressed: (){
          // //             Navigator.push(context,MaterialPageRoute(builder: (context)=>ExtendedTab()));
          // //           },
          // //         ),
          // //       ),
          // //     )),
          // Padding(
          //     padding: EdgeInsets.all(16),
          //     child: Card(
          //       child: ListTile(
          //         title: Text('Pay U'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: () {
          //             Navigator.push(context,
          //                 MaterialPageRoute(builder: (context) => PointTab()));
          //           },
          //         ),
          //       ),
          //     )),
          // Padding(
          //     padding: EdgeInsets.all(16),
          //     child: Card(
          //       child: ListTile(
          //         title: Text('Stripe'),
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
