import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in/src/common.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


class AuthBloc {
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


  logout() {
    authService.logout();
  }
}

class AuthService{
  FirebaseAuth _auth=FirebaseAuth.instance;
  Future<UserCredential>loginwithgoogle(AuthCredential credential)async{

    var a=await _auth.signInWithCredential(credential);
  }
  Stream<User> get currentUser=>_auth.authStateChanges();
  Future<void> logout() => _auth.signOut();
}

//Facebook Login
