import 'package:flutter/material.dart';

class CompanyInfo extends StatefulWidget {
  const CompanyInfo({super.key});

  @override
  State<CompanyInfo> createState() => _CompanyInfoState();
}

class _CompanyInfoState extends State<CompanyInfo> {

  final myconttoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            'Register',
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
                  Container(
                    padding: const EdgeInsets.all(10),
                    child:  TextField(
                      controller: myconttoller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Company Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'City',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Gmail',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Industry',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Founding Date',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: const Text('Verify'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/companyscreen');
                        },
                      )),
                ],
              ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/selects');
        },
        backgroundColor: const Color.fromARGB(195, 19, 44, 42),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CompanyScreen extends StatefulWidget {
  const CompanyScreen({super.key});

  @override
  State<CompanyScreen> createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.add),
                title: Text('RK Consultancy'),
                subtitle: Text('We are looking for Interns speciallized in Full Stack Development'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Confirmed'),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('Not Yet!'),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
