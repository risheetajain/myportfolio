import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Api%20Integration/ApiIntegration.dart';
import 'package:knowledgeable_content/Apps/Courses%20App/Main1.dart';
import 'package:knowledgeable_content/BottomBar/BottomBar.dart';
import 'package:knowledgeable_content/BottomSheet/BottomSheet.dart';
import 'package:knowledgeable_content/Drawer/Drawers.dart';
import 'package:knowledgeable_content/Ecommerce%20Apps/ECommerceApps.dart';
import 'package:knowledgeable_content/Logins/Login.dart';
import 'package:knowledgeable_content/Apps/Meditation/Main2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:knowledgeable_content/Picker/AllPicker.dart';
import 'package:knowledgeable_content/Picker/Picker.dart';
import 'package:knowledgeable_content/Apps/Apps.dart';
import 'package:knowledgeable_content/BottomSheet/BottomSheet.dart';
import 'package:knowledgeable_content/Plugins/Plugins.dart';
import 'package:knowledgeable_content/SplashScreens/SplashScreens.dart';
import 'package:knowledgeable_content/TabBar/TabBar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List Pages = ['Login'];

  @override
  Widget build(BuildContext context) {
    return ListView(
        //itemCount: Pages.length,
        children: [
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Login'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('SignUp'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                  ),
                ),
              )),
          // Padding( padding: EdgeInsets.all(16),
          //     child:Card(
          //       child: ListTile(
          //         title: Text('Courses Apps'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: (){
          //             Navigator.push(context,MaterialPageRoute(builder: (context)=>Main1()));
          //           },
          //         ),
          //       ),
          //     )),
          // Padding( padding: EdgeInsets.all(16),
          //     child:Card(
          //       child: ListTile(
          //         title: Text('Meditation Apps'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: (){
          //             Navigator.push(context,MaterialPageRoute(builder: (context)=>Main2()));
          //           },
          //         ),
          //       ),
          //     )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Bottom Navigation'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BottomBar()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Drawers'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Drawers()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Pickers'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Picker()));
                    },
                  ),
                ),
              )),
          // Padding( padding: EdgeInsets.all(16),
          //     child:Card(
          //       child: ListTile(
          //         title: Text('Apps'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: (){
          //             Navigator.push(context,MaterialPageRoute(builder: (context)=>Apps()));
          //           },
          //         ),
          //       ),
          //     )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Bottom Sheet'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomSheets()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Tab Bar'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TabBar1()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Splash Screens'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SplashScreens()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('EcommerceApps'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EcommerceApps()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Plugins'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Plugins()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Api Integration'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ApiIntegration()));
                    },
                  ),
                ),
              )),
        ]);
  }
}
