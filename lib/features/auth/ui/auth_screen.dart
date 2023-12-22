import 'package:bloc_fb_auth/features/auth/bloc/auth_cubit.dart';
import 'package:bloc_fb_auth/features/auth/bloc/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthLoading) {
          return const CircularProgressIndicator();
        } else if (state is Authenticated) {
          return const Scaffold(
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Du hast es geschafft, Congratulations!"),
                    Image(image: AssetImage("assets/images/SantaTransparent.webp")),
                  ],
                ),
              ),
            ),
          );
        } 
        else {
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Ein unbekannter Fehler ist aufgetreten, versuche dich noch einmal anzumelden"),
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text("Zur Welcome Page zurückkehren"),
                    )
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
