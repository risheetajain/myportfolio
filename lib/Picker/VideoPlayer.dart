import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';


class VideoPlayerOne extends StatefulWidget {
  final VideoPlayerController playerController;
  final bool looping;
  Key key;
  VideoPlayerOne({
    @required  this.looping,this.playerController,this.key
}):super(key: key);
  @override
  _VideoPlayerOneState createState() => _VideoPlayerOneState();
}

class _VideoPlayerOneState extends State<VideoPlayerOne> {
  ChewieController _chewieController;
  VideoPlayerController videoPlayerController;
  var url="http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4";
  @override
  void initState() {

    super.initState();
    _chewieController=ChewieController(videoPlayerController: widget.playerController,
    aspectRatio: 16/9,
      autoInitialize: true,
      looping: widget.looping,
      errorBuilder: (context,errorMsg){
      return Center(
        child: Text(errorMsg,style: TextStyle(
          color: Colors.black
        ),),
      );
      }
    );
  }
  @override
  void dispose() {

    super.dispose();
    widget.playerController.dispose();
    _chewieController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }
}

class ChewiePackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          VideoPlayerOne(playerController: VideoPlayerController.network('http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4'), looping: true,),
          VideoPlayerOne(playerController: VideoPlayerController.asset('assets/vio.mp4'), looping: true,)
        ],
      ) ,);
  }
}
