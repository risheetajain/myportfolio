import 'dart:async';

import 'package:flutter/material.dart';

class PlayArea extends StatefulWidget {
  @override
  _PlayAreaState createState() => _PlayAreaState();
}

class _PlayAreaState extends State<PlayArea> {
  bool playing = false;

  Duration _duration;
  Duration _position;
  StreamSubscription _durationSubscription;
  StreamSubscription _positionSubscription;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  Widget slider() {
    return Slider(
        value: (_position != null) ? _position.inSeconds.toDouble() : 0.0,
        activeColor: Colors.black,

        /* position.inSeconds.toDouble(),*/
        min: 0.0,
        max: 100,
//        max: duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            value = value;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/bg.png'), fit: BoxFit.fill)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width / 6.5,
                ),
                Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Mental Training",
                      style: TextStyle(color: Colors.black, fontSize: 25.0),
                    )),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 6.5, top: 20.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.clear,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Image(
                              image: AssetImage('images/like.png'),
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: this.playing
                                ? Icon(
                                    Icons.pause_circle_outline,
                                    color: Colors.black,
                                    size: 35.0,
                                  )
                                : Icon(
                                    Icons.play_circle_outline,
                                    color: Colors.black,
                                    size: 35.0,
                                  ),
                            onPressed: () async {},
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image(
                              image: AssetImage('images/settings.png'),
                            ),
                          )
                        ],
                      ),
                      slider()
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
