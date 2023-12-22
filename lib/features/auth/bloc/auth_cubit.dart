import 'dart:convert';

import 'package:bloc_fb_auth/features/auth/bloc/auth_state.dart';
import 'package:bloc_fb_auth/features/auth/ui/auth_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

var passwordKey;
var db = FirebaseFirestore.instance;

class AuthCubit extends Cubit<AuthState> {
  var db = FirebaseFirestore.instance;
  AuthCubit(super.initialState);

  Future<void> checkInput(
      String email, String password, BuildContext context) async {
    var value = "";
    var value2 = "";

    await db
        .collection("santas_workshop")
        .where("Name", isEqualTo: "TestSanta")
        .get()
        .then((event) {
      for (var doc in event.docs) {
        value = doc.data()["Name"];
      }
    });
    await db
        .collection("santas_password")
        .where("Password", isEqualTo: "123NIV")
        .get()
        .then((event) {
      for (var doc in event.docs) {
        value2 = doc.data()["Password"];
      }
    });
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    passwordKey = stringToBase64.encode(value2);

    if (value == email && passwordKey == password) {
      if(context.mounted){Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AuthScreen()),
      );}
      
      emit(Authenticated("Success", email));
    } else {

      if(context.mounted){
 ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.red,
            content: Text('Leider hast du noch nicht die richtigen Parameter herausgefunden, versuchs nochmal :)'),
          ),
        );
      }
     
      emit(Unauthenticated());
    }
  }


 
}
 Future<void> firstClue() async{
    String pw ="";
    await db
        .collection("santas_password")
        .where("Password", isEqualTo: "123NIV")
        .get()
        .then((event) {
      for (var doc in event.docs) {
        pw = doc.data()["Password"];
        Codec<String, String> stringToBase64 = utf8.fuse(base64);
        passwordKey = stringToBase64.encode(pw);
        print(passwordKey);
      }
    });
    


  }