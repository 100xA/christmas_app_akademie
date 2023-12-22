import 'package:bloc_fb_auth/features/auth/bloc/auth_cubit.dart';
import 'package:bloc_fb_auth/features/auth/bloc/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(title: const Text("Christmas Challenge")),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<AuthCubit, AuthState>(
              
                builder: (context, state) {
                  return Form(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _emailController,
                            decoration:
                                const InputDecoration(labelText: 'Name'),
                          ),
                          TextFormField(
                            controller: _passwordController,
                            decoration:
                                const InputDecoration(labelText: 'Password'),
                            obscureText: true,
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                            if(_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty){
                                    context.read<AuthCubit>().checkInput(
                                      _emailController.text,
                                      _passwordController.text,
                                      context,
                                    );
                            }
                            else{
                              ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(
            backgroundColor: Colors.red,
            content: Text('Leerer Input'),
          ),
        );
      
                            }
                                
                            },
                            child: const Text('Versuche es'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
