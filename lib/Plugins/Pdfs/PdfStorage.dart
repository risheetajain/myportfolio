import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ext_storage/ext_storage.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class MyPdf extends StatefulWidget {
  @override
  _MyPdfState createState() => _MyPdfState();
}

class _MyPdfState extends State<MyPdf> {
  final imgUrl="";

  var dio;

//get mobilw dwnload path
  @override
  void initState(){
    super.initState();
   gtpath();
    }


Future<String> gtpath() async{
  String path =
      await ExtStorage.getExternalStoragePublicDirectory(
      ExtStorage.DIRECTORY_DOWNLOADS);

  String fullPath = "$path/newtask1.pdf";
}


  //get storage permission
  void getPermission() async {
    print("getPermission");
    await Permission.storage;
  }

  Future download2(Dio dio, String url, String savePath) async {
    //get pdf from link
    Response response = await dio.get(
      url,
     // onReceiveProgress: showDownloadProgress,
    //  Received data with List<int>
      options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
          validateStatus: (status) {
            return status < 500;
          }),
    );

    //write in download folder
    File file = File(savePath);
    var raf = file.openSync(mode: FileMode.write);
    raf.writeFromSync(response.data);
    await raf.close();
  }

  @override
  Widget build(BuildContext context) {
         return Container( child: Center(child: Text('Download'),),);
  }
//progress bar
//   showDownloadProgress() {
//     if (total != -1) {
//       print((received / total * 100).toStringAsFixed(0) + "%");
//     }
  }
