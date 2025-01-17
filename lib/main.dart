import 'package:bloc_fb_auth/features/auth/bloc/auth_cubit.dart';
import 'package:bloc_fb_auth/features/auth/bloc/auth_state.dart';
import 'package:bloc_fb_auth/features/auth/repo/auth_repo.dart';
import 'package:bloc_fb_auth/features/auth/ui/auth_screen.dart';
import 'package:bloc_fb_auth/features/auth/ui/home_screen.dart';
import 'package:bloc_fb_auth/firebase_options.dart';
import 'package:bloc_fb_auth/playground.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
hackPassword();
  runApp(BlocAuthFbApp());
}



class BlocAuthFbApp extends StatelessWidget {
  final AuthRepository authRepository = AuthRepository();

  BlocAuthFbApp({super.key});


  

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AuthCubit( AuthInitial()),
          
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/auth": (context) => const AuthScreen(),
        },
        title: 'Christmas Challenge',
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}
