import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internbyte/company_detail.dart';
import 'package:internbyte/selection.dart';
import 'package:internbyte/student_inter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/selects': (context) => const SelectionScreen(),
        '/stud': (context) => const StudentInfo(),
        '/compp': (context) => const CompanyInfo(),
        '/workhome': (context) => const WorkHome(),
        '/officework': (context) => const OfficeWork(),
        '/signinscreen': (context) => const SignInS(),
        '/companyscreen': (context) => const CompanyScreen()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('images/applogo.png'),
          radius: 150,
        ),
  
      ),
      
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            'SignUp',
            style: TextStyle(
                color: Color.fromARGB(195, 19, 44, 42),
                fontWeight: FontWeight.bold,
                fontSize: 32),
          )),
      body: Center(
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  const CircleAvatar(
                    backgroundImage: AssetImage('images/applogo.png'),
                    radius: 100,
                  ),

                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                          hintText: 'Enter your name'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',
                          hintText: 'Enter your phone number'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Gmail',
                          hintText: 'Enter your gmail'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter your password'),
                    ),
                  ),
                  // // TextButton(
                  // //   onPressed: () {
                  // //     //forgot password screen
                  // //   },
                  //   child: const Text(
                  //     'Forgot Password',
                  //   ),
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: const Text('SignUp'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/selects');
                        },
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('Does you have account?'),
                      TextButton(
                        child: const Text(
                          'Sign In',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          //signup screen
                          Navigator.pushNamed(context, '/signinscreen');
                        },
                      )
                    ],
                  ),
                ],
              ))),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, '/selects');
      //   },
      //   backgroundColor: const Color.fromARGB(195, 19, 44, 42),
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}

class SignInS extends StatefulWidget {
  const SignInS({super.key});

  @override
  State<SignInS> createState() => _SignInSState();
}

class _SignInSState extends State<SignInS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: const Text(
              'Sign In',
              style: TextStyle(
                  color: Color.fromARGB(195, 19, 44, 42),
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            )),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView(children: <Widget>[
                  const CircleAvatar(
                    backgroundImage: AssetImage('images/applogo.png'),
                    radius: 100,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                          hintText: 'Enter your name'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',
                          hintText: 'Enter your phone number'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: const Text('Sign In'),
                        onPressed: () {},
                      )),
                ]))));
  }
}
