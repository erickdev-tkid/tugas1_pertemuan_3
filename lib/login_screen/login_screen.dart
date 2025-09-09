// import 'dart:ffi';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final String title;
  const LoginScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.white,
    body: SingleChildScrollView(
      padding: EdgeInsets.all(24),
      child: Column(
        spacing: 5,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 80),
          Icon(
            Icons.lock_outlined,
            size: 80,
            color: Colors.deepPurple,
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.deepPurple
            ),
          ),
          Text(
            'Enter your credential to start your journey with us',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 13
            ),
          ),
          const SizedBox(height: 40),
          TextField(
            decoration: InputDecoration(
              label: const Text('Enter Username'),
              prefixIcon: const Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16)
              )
            ),
          ),
          const SizedBox(height: 16),
          TextField(
              obscureText: true,
            decoration: InputDecoration(
              label: const Text('Enter Password'),
              prefixIcon: const Icon(Icons.lock_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16)
              )

            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){}, 
                child: const Text(
                  'Lupa Password?',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    decoration: TextDecoration.underline
                    )
                  ),
                )
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {}, 
                label: const Text('Login'),
                icon: const Icon(Icons.login_outlined),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                 padding: const EdgeInsets.symmetric(
                  horizontal: 24, vertical: 12
                 )
                ),
                ),
                OutlinedButton.icon(
                  onPressed: (){}, 
                  label: const Text('Register'),
                  icon: const Icon(Icons.person_add_alt_1),
                  style: OutlinedButton.styleFrom(
                   padding: EdgeInsets.symmetric(
                    horizontal: 24, vertical: 12
                   )
                  ),
                  )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: Divider(thickness: 1)),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                child: const Text('atau'),
                ),
                Expanded(child: Divider(thickness: 1)),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {}, 
            label: const Text('Login with Google'),
            icon: Image.network(
               "https://img.icons8.com/color/48/google-logo.png",
               height:20
            ),
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                color: Colors.grey
              ),
              minimumSize: const Size(double.infinity, 50)
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {}, 
            label: const Text('Login with Facebook'),
            icon: Image.network(
               "https://img.icons8.com/color/48/facebook-new.png",
               height: 20,
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
              side: BorderSide(
                color: Colors.grey
              ),
              minimumSize: const Size(double.infinity, 50)
              
            ),
            )
        ],
      )
    ),
   );
      
  }
}