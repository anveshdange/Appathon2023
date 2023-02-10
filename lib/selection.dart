import 'package:flutter/material.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            'Utkarsh',
            style: TextStyle(
                  color: Color.fromARGB(195, 19, 44, 42),
                fontWeight: FontWeight.bold,
                fontSize: 32),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox( // This is for company navigation
                height: 80,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
          Navigator.pushNamed(context, '/compp');
        },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(195, 19, 44, 42),
                      elevation: 9,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      padding: const EdgeInsets.all(10)),
                  child: const Text('Company'),
                ),
              ),
              const SizedBox( 
                height: 20,
              ),
              SizedBox( //This is for student internship navigation
                height: 80,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.pushNamed(context, '/stud');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(195, 19, 44, 42),
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      padding: const EdgeInsets.all(10)),
                  child: const Text('Student'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}