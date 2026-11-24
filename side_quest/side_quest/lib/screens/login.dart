import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6F0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 40, 24, 24),
              child: Column(
                spacing: 20,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 210,
                    fit: BoxFit.contain,
                  ),
                  const LoginForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      padding: const EdgeInsets.all(24),
      color: const Color(0xFFE4DFD0),

      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            // Login heading
            const Text(
              'LOGIN',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Gotcha',
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 24),

            // Email field
            const Text('Email'),
            const SizedBox(height: 8),

            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Email is required';
                }
                return null;
              },
            ),

            const SizedBox(height: 20),

            // Password field
            const Text('Password'),
            const SizedBox(height: 8),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required';
                }
                return null;
              },
            ),

            const SizedBox(height: 8),

            // Remember Me and Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true, //change later to reflect state
                      activeColor: const Color(0xFF6D4740),
                      onChanged: (value) {},
                    ),
                    const Text(
                      'Remember Me',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),

                Flexible(
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Login button
            Center(
              child: SizedBox(
                width: 190,
                height: 44,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.login),
                  label: const Text('Login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6D4740),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Sign Up link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't Have An Account? ",
                  style: TextStyle(fontSize: 11),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}