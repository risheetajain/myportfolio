import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Homes/HomePageOne.dart';
import 'package:knowledgeable_content/Logins/LoginPageOne.dart';
import 'package:knowledgeable_content/Logins/LoginPageThree.dart';
import 'package:knowledgeable_content/Logins/LoginPageTwo.dart';

class Homes extends StatefulWidget {
  @override
  _HomesState createState() => _HomesState();
}

class _HomesState extends State<Homes> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      //   .builder(
      // itemCount: Pages.length,
      // itemBuilder: (context ,inx){
      //   return
      children:[ Padding( padding: EdgeInsets.all(16),
          child:Card(
            child: ListTile(
              title: Text('Login 1'),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePageOne()));
                },
              ),
            ),
          )),
        Padding( padding: EdgeInsets.all(16),
            child:Card(
              child: ListTile(
                title: Text('Login 2'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPageTwo()));
                  },
                ),
              ),
            )),
        Padding( padding: EdgeInsets.all(16),
            child:Card(
              child: ListTile(
                title: Text('Login 3'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPageThree()));
                  },
                ),
              ),
            ))
      ],

    );
  }
}
