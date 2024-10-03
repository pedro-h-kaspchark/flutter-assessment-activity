import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService{
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  registerUser({required String name, required String email, required String password}) async{
    try{
      UserCredential credential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      await credential.user!.updateDisplayName(name);
    } on FirebaseAuthException catch (e){
      if(e.code == 'email-already-in-use'){
        return 'Email já cadastrado';
      }
      else if(e.code == 'invalid-email'){
        return 'Email inválido';
      }
      else if(e.code == 'weak-password'){
        return 'Senha fraca. Por favor, use uma senha mais forte';
      }
    }
  } 
}