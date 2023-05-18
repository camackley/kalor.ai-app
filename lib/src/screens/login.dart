import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:star_lord/bloc/auth/auth_bloc.dart';
import 'package:star_lord/assets/styles/kalor_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<dynamic>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        return Scaffold(
          backgroundColor: KalorColors(context).colors.surface.one,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('lib/assets/brand/full.png'),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(48),
                  topRight: Radius.circular(48),
                ),
                child: Container(
                  color: Theme.of(context).colorScheme.surface,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 56, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sign in or Sign up',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 48),
                        ElevatedButton(
                          onPressed: () => _authenticateWithGoogle(context),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: KalorColors(context).colors.black,
                            backgroundColor: KalorColors(context).colors.withe,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('lib/assets/icons/google_icon.png'),
                              const SizedBox(width: 8),
                              Text(
                                'Sign in with Google',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(color: KalorColors(context).colors.black),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: () => {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: KalorColors(context).colors.withe,
                            backgroundColor: KalorColors(context).colors.black,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('lib/assets/icons/apple_icon.png'),
                              const SizedBox(width: 8),
                              Text(
                                'Sign in with Apple',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(color: KalorColors(context).colors.withe),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _authenticateWithGoogle(context) {
    BlocProvider.of<AuthBloc>(context).add(GoogleSignInRequested());
  }
}
