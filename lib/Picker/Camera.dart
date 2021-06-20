import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart' as h1;

class CameraOne extends StatefulWidget {
  @override
  _CameraOneState createState() => _CameraOneState();
}

class _CameraOneState extends State<CameraOne> {
  void captureImage()async {
  }

  @override
  void initState() {
    _initApp();
    Firebase.initializeApp();
    super.initState();

  }
  @override
  void dispose(){
    controller?.dispose();
    super.dispose();
  }

  Future<void> _initApp() async {
    camera = await availableCameras();
    final firstCam =
    loading?
    camera[1] :camera[0];

    controller = CameraController(firstCam, ResolutionPreset.medium);
    _saveImage = controller.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {
         isCameraReady=true;
      });
    });
  }
  Future<void> rearApp() async {
    camera = await availableCameras();

    final secondCam = camera[1];
    controller = CameraController(secondCam, ResolutionPreset.high);
    _saveImage = controller.initialize();
    if (!mounted) {
      return;}
    setState(() {
      isCameraReady = true;
    });
  }

  List <CameraDescription>camera=[];
  Future<void> _saveImage;
  CameraController controller;
  bool isCameraReady=false;
  bool showCaptured=false;
  bool loading=true;
  String imagePath;
  File image1;
  String filepath;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    final deviceRatio = size.width / size.height;

    return  Scaffold(
      appBar: AppBar(
          title: Text('Camera App'),

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.

      ),
      body: FutureBuilder<void>(future: _saveImage,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return
                    RotationTransition(child:
                    CameraPreview(controller),
                    turns: AlwaysStoppedAnimation(90)


            );
          }
          else {
            return Center(child: CircularProgressIndicator(),);
          }
        },),
      bottomNavigationBar:
      BottomNavigationBar(
        //currentIndex: 2,

          items: [
            BottomNavigationBarItem(
                title:Text('Switch between Camera'),
                icon: IconButton(icon:
                Icon(Icons.camera_alt),
                    onPressed: (){
                      if( controller.description==
                          camera[1]) {
                        loading = false;
                      }
                      else{
                        loading = true;
                      }
                      _initApp();
                      setState(() {});
                    }
                  //_initApp,
                )
            ),
            BottomNavigationBarItem(
                title:Text('Click Photo'),
                icon: IconButton(icon:
                Icon(Icons.camera),

                    onPressed: () async {
                      if (controller.value.isInitialized) {
                        final Directory extDir = await getExternalStorageDirectory();
                        final String dirPath = '${extDir.path}/Magical Solutions';
                        await Directory(dirPath).create(recursive: true);
                        final filepath = '$dirPath/${DateTime.now()}.jpg';
                        await controller.takePicture();
                        await Fluttertoast.showToast(
                            msg: "Save to $filepath",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity:ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 30,
                            backgroundColor: Colors.black,
                            textColor: Colors.white

                        );
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Screen(filepath)));

                        setState(() {});
                      }} //_initApp,
                )
            ),
          ]),
    );
  }
}

class Screen extends StatelessWidget {
  final String path;
  Screen(this.path);
  @override
 // final drive=GoogleDrive();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Clicked Photo'),
          actions: [Icon(Icons.people),
            FlatButton(onPressed: (){
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
            }, child: Text('Log Out',style: TextStyle(
                color: Colors.white
            )))]
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      ),
      body: Container(child: Image.file(File(path)),),


    );
  }
}