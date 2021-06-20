import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:knowledgeable_content/SignUps/SignUpOne.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'dart:convert' as Json;
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:knowledgeable_content/Loginwithsocialmedia.dart';
import 'package:provider/provider.dart';
import 'package:knowledgeable_content/Homes/Homes.dart';
import 'dart:async';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in/src/common.dart';
import 'package:google_sign_in/google_sign_in.dart';




class LoginPageTwo extends StatefulWidget {
  @override
  _LoginPageTwoState createState() => _LoginPageTwoState();
}

class _LoginPageTwoState extends State<LoginPageTwo> {
  StreamSubscription<User> loginStateSubscription;

  bool isLogged=false;
  Map user;
  final facebooklogin=FacebookLogin();
  FirebaseAuth _auth=FirebaseAuth.instance;

  loginwithFacebook( FacebookLoginResult result) async{
    final FacebookAccessToken accessToken=result.accessToken;
    AuthCredential credential=FacebookAuthProvider.credential(accessToken.token);
    var a=await _auth.signInWithCredential(credential);
    setState(() {
      isLogged=true;
    });
  }



  _loginwithFb() async {
    FacebookLoginResult result= await facebooklogin.logIn(['mail']);
    switch(result.status){
      case FacebookLoginStatus.loggedIn:
        try{
          await loginwithFacebook(result);
        }
        catch(e){}
        break;
        // final token=result.accessToken.token;
        // final graphResponse= await http.get('https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${token}');
        // final profile=Json.jsonDecode(graphResponse.body);
        // print(profile);
        // setState(() {
        //   user=profile;
        //   isLogged=true;
        // });
        // break;
      case FacebookLoginStatus.cancelledByUser:
        setState(() {
          isLogged=false;
        });
        break;
      case FacebookLoginStatus.error:
        setState(() {
          isLogged=false;
        });
    }
  }

  logout() async {
    facebooklogin.logOut();
    setState(() {
      isLogged=false;
    });
  }
  @override
  void initState()  {
    // var authBloc = Provider.of<AuthBloc>( context, listen: false);
    // loginStateSubscription = authBloc.currentUser.listen((fbUser) {
    //   if (fbUser != null) {
    //     // Navigator.of(context).push(
    //     //   MaterialPageRoute(
    //     //     builder: (context) => Homes(),
    //     //  ),
    //     // );
    //   }
    // });
    // super.initState();
  }
  final authService = AuthService();
  final googleSign = GoogleSignIn(scopes: ['email']);


  Stream <User> get currentUser => authService.currentUser;

  loginGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await googleSign.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser
          .authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken
      );

      //Firebase Sign in
      final result = await authService.loginwithgoogle(credential);

      print('${result.user.displayName}');
    }
    catch (error) {
      print(error);
    }
  }




  @override
  void dispose() {
    loginStateSubscription.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context)  {
   // final authBloc = Provider.of<AuthBloc>(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.orange[900],
                  Colors.orange[800],
                  Colors.orange[400]
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),)),
                  SizedBox(height: 10,),
                  FadeAnimation(1.3, Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60,),
                        FadeAnimation(1.4, Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Email or Phone number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(height: 30,),
                        FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Colors.grey),)),
                        SizedBox(height: 30,),
                        FadeAnimation(1.6, Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange[900]
                          ),
                          child: Center(
                            child:InkWell( onTap:(){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpOne()));
                            },
                                child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                          ),
                        )),
                        SizedBox(height: 20,),
                        FadeAnimation(1.6, Container(

                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange[900]
                          ),
                          child: Center(
                            child:InkWell( onTap:(){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpOne()));
                            },
                                child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                          ),
                        )),
                        SizedBox(height: 40,),
                        FadeAnimation(1.7, Text("Continue with social media", style: TextStyle(color: Colors.grey),)),
                        SizedBox(height: 30,),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: FadeAnimation(1.8, Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blue
                                ),
                                child: Center(
                                  child: InkWell( onTap:(){
                                    _loginwithFb();
                                  },
                                      child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                                ),
                              )),
                            ),
                            SizedBox(width: 30,),
                            Expanded(
                              child: FadeAnimation(1.9, Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.redAccent
                                ),
                                child: Center(
                                  child: InkWell( onTap:() async{
                                    // var authBloc = Provider.of<AuthBloc>( context, listen: false);
                                    //  loginStateSubscription =  await authBloc.currentUser.listen((fbUser) {
                                    //   if (fbUser != null) {
                                    //     // Navigator.of(context).push(
                                    //     //   MaterialPageRoute(
                                    //     //     builder: (context) => Homes(),
                                    //     //  ),
                                    //     // );
                                    //   }
                                    // });

                                   await  loginGoogle();
                                  },
                                      child: Text("Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                                ),
                              )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity").add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      Track("translateY").add(
          Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
          curve: Curves.easeOut)
    ]);

    // ignore: deprecated_member_use
    return ControlledAnimation(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(0, animation["translateY"]),
            child: child
        ),
      ),
    );
  }
}