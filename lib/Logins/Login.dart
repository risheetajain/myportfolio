import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Logins/LoginPageOne.dart';
import 'package:knowledgeable_content/Logins/LoginPageThree.dart';
import 'package:knowledgeable_content/Logins/LoginPageTwo.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List Pages=[ 'LoginPageOne' ];
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
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPageOne()));
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
