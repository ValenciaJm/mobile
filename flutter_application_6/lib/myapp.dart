import 'package:flutter/material.dart';
import 'package:flutter_application_5/nextpage.dart';
import 'package:flutter_application_5/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/images/logo.jpg',
                width: 200,
                height: 200, 
              ),
              const SizedBox(height: 20), 
              const Text(
                'E-HandyHelp: Barangay 37 Zone 3 Pasay City', 
                style: TextStyle(fontFamily: 'dm', fontSize: 16),
              ),
              const SizedBox(height: 170), 
              ElevatedButton(
                onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NextPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 7, 49, 112), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    'Register Now',
                    style: TextStyle(fontFamily: 'dm',
                      fontSize: 20, 
                      color: Colors.white,
                      fontWeight: FontWeight.bold, 
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  LoginPage())
                   );
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text('Already Registered? Login Here',
                   style: TextStyle(fontFamily: 'dm', fontSize: 12, 
                   color: Colors.black,
                   ),
                ),
               ) ),
            ],
          ),
        ),
      ),
    );
  }
}
