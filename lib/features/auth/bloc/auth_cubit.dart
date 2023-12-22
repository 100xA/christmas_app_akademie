import 'package:bloc_fb_auth/features/auth/bloc/auth_state.dart';
import 'package:bloc_fb_auth/features/auth/ui/auth_screen.dart';
import 'package:bloc_fb_auth/features/auth/ui/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../repo/auth_repo.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;
  final FirebaseAuth _firebaseAuth;
  var db = FirebaseFirestore.instance;
  AuthCubit(this._firebaseAuth, this._authRepository, super.initialState);

  Future<void> checkInput(String email, String password, BuildContext context) async {
    var value = "";

// Searching with where
    await db.collection("santas_workshop").where("Name", isEqualTo: "TestSanta").get().then((event) {
      for (var doc in event.docs) {
        value = doc.data()["Name"];
      }
    });
    if (value == email) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AuthScreen()),
      );
      emit(Authenticated("Success", email));
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AuthScreen()),
      );
      emit(Unauthenticated());
    }
  }
}
