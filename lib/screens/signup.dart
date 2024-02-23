import 'package:flutter/material.dart';
import '../utility/colors.dart';
import 'login.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChecked = false; // Initial state of the checkbox
  bool obscureText = true; // Initial state of password visibility

  InputDecoration customInputDecoration(String hintText, IconData icon) {
    return InputDecoration(
      hintText: hintText,
      prefixIcon: Container(
        width: 24, // Adjust the width as needed
        height: 24, // Adjust the height as needed
        child: Icon(icon, color: Colors.black),
      ),
      filled: true,
      fillColor: Colors.grey[200],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(
          color: AppColors.borderColor,
          width: 3.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 30, // Larger font size
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    color: AppColors.darkGreen, // Dark green font color
                  ),
                  textAlign: TextAlign.center, // Center aligned
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: customInputDecoration('Name', Icons.account_circle),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration:
                    customInputDecoration('Phone Number', Icons.local_phone),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: customInputDecoration('Email', Icons.email),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: obscureText,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Container(
                    width: 24, // Adjust the width as needed
                    height: 24, // Adjust the height as needed
                    child: Icon(Icons.lock, color: Colors.black),
                  ),
                  suffixIcon: IconButton(
                    color: Colors.black,
                    icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        obscureText =
                            !obscureText; // Toggle password visibility
                      });
                    },
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: AppColors.borderColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Login logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.buttonColor,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontFamily: 'Inter', // Font family
                    fontSize: 20, // Font size
                    fontWeight: FontWeight.bold, // Font weight
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Google sign-in logic here
                },
                icon: const Icon(Icons.mail),
                label: const Text(
                  'Sign up with Google',
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontFamily: 'Inter', // Font family
                    fontSize: 20, // Font size
                    fontWeight: FontWeight.bold, // Font weight
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: const Text(
                  "Already have an account? Login here",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
