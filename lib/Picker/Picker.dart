import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Picker/AllPicker.dart';
import 'package:knowledgeable_content/Picker/Camera.dart';
import 'package:knowledgeable_content/Picker/AudioPlayer.dart';
import 'package:knowledgeable_content/Picker/VideoPlayer.dart';
import 'package:knowledgeable_content/Picker/maps.dart';


class Picker extends StatefulWidget {
  @override
  _PickerState createState() => _PickerState();
}

class _PickerState extends State<Picker> {
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
              title: Text('All Picker'),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>AllPicker()));
                },
              ),

            ),
          )),
        Padding( padding: EdgeInsets.all(16),
            child:Card(
              child: ListTile(
                title: Text('Camera'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>CameraOne()));
                  },
                ),
              ),
            )),
        Padding( padding: EdgeInsets.all(16),
            child:Card(
              child: ListTile(
                title: Text('Audio Players'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>AudioPlayerOne()));
                  },
                ),
              ),
            )),
        Padding( padding: EdgeInsets.all(16),
            child:Card(
              child: ListTile(
                title: Text('Video Players'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ChewiePackage()));
                  },
                ),
              ),
            )),
        Padding( padding: EdgeInsets.all(16),
            child:Card(
              child: ListTile(
                title: Text('Video Players'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Maps()));
                  },
                ),
              ),
            )),



      ],

    );
  }
}
