import 'package:flutter/material.dart';

import '../../assets/styles/kalor_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KalorColors(context).colors.surface.one,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
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
                    const SizedBox(height: 48)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
