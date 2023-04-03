
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

class GoogleLogin {
 static GoogleSignInAccount? currentUser;

  void initState() {
    _googleSignIn.onCurrentUserChanged.listen((account) {
        currentUser = account;
      _googleSignIn.signInSilently();
    });
  }


  static googleLogin(){
    GoogleSignInAccount? user = currentUser;

    if(user != null){
      SignIn();

    }else{
      SignOut();
    }


  }

}

void SignOut(){
  _googleSignIn.disconnect();
}




Future<void> SignIn() async {
  try{
    await _googleSignIn.signIn();
  }catch(e){
    e;
  }

}