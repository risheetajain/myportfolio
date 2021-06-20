import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class ImagePickers extends StatefulWidget {
  @override
  _ImagePickersState createState() => _ImagePickersState();
}

class _ImagePickersState extends State<ImagePickers> {
   final picker=ImagePicker();
  File _file;
  Future getImage() async{
    final  image= await picker.getImage(source:  ImageSource.camera);
    setState(() {
      if (image != null) {
        _file = File(image.path);
      } else {
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        onPressed: (){showModalBottomSheet(context: context, builder: (BuildContext context){
          return
           Column(children: [ListTile(
             title: Text('From Gallery'),
             leading: Icon(FontAwesomeIcons.phone),
             onTap: (){
               Navigator.pop(context);
             },
           ),ListTile(
             title: Text('From Camera'),
             leading: Icon(FontAwesomeIcons.phone),
             onTap: (){
              getImage();
             },
           )],);
        });}
      ),
    );
  }
}
