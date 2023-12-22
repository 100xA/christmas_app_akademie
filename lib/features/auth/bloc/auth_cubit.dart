import 'package:bloc_fb_auth/features/auth/bloc/auth_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../repo/auth_repo.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;
  final FirebaseAuth _firebaseAuth;

  AuthCubit(this._firebaseAuth, this._authRepository, super.initialState);

  Future<void> checkInput(
      String email, String password, BuildContext context) async {
    DocumentReference<Map<String, dynamic>> queryEmail = FirebaseFirestore
        .instance
        .collection("santas_workshop")
        .doc("Santa/Name");

    try {
      emit(AuthLoading());
    } on FirebaseAuthException catch (e) {
      emit(AuthError(e.toString()));
    }
  }
}
