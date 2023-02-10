import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

// Select for type of work [Work from Home] or [Work from office]
class StudentInfo extends StatefulWidget {
  const StudentInfo({super.key});

  @override
  State<StudentInfo> createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            'Filter',
            style: TextStyle(
                color: Color.fromARGB(195, 19, 44, 42),
                fontWeight: FontWeight.bold,
                fontSize: 28),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 90,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/workhome');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(195, 19, 44, 42),
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.all(20)),
                child: const Text('Work From Home'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 90,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/officework');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(195, 19, 44, 42),
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.all(20)),
                child: const Text('From Office'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
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

// Work From Home

class WorkHome extends StatefulWidget {
  const WorkHome({super.key});

  @override
  State<WorkHome> createState() => _WorkHomeState();
}

class _WorkHomeState extends State<WorkHome> {

  final Uri _url = Uri.parse(
      'https://www.linkedin.com/jobs/view/internship-at-homeroom-yc-w22-3423676383');
  Future<void> _hoomaroom() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  final Uri _url1 =
      Uri.parse('https://www.andersonsinc.com/careers/internship-program/');
  Future<void> _anderson() async {
    if (!await launchUrl(_url1)) {
      throw Exception('Could not launch $_url1');
    }
  }

  final Uri _url2 = Uri.parse('https://www.dk.com/in/information/internship/');
  Future<void> _dk() async {
    if (!await launchUrl(_url2)) {
      throw Exception('Could not launch $_url2');
    }
  }

  final Uri _url3 = Uri.parse(
      'https://corporate.ford.com/careers/programs/students-and-recent-graduates/ford-summer-internship-program.html');
  Future<void> _ford() async {
    if (!await launchUrl(_url3)) {
      throw Exception('Could not launch $_url3');
    }
  }

  final Uri _url4 = Uri.parse(
      'https://careers.adidas-group.com/teams/students/internships-students');
  Future<void> _adidas() async {
    if (!await launchUrl(_url4)) {
      throw Exception('Could not launch $_url4');
    }
  }

  final number = '+918275234235';

  //Headquater url

  final Uri _url11 = Uri.parse('https://www.google.com/maps/search/homeroom+headquarters/@29.5138508,75.444001,15z/data=!3m1!4b1');
  Future<void> _hoomaroomq() async {
    if (!await launchUrl(_url11)) {
      throw Exception('Could not launch $_url11');
    }
  }

   final Uri _url12 =
      Uri.parse('https://www.google.com/maps?q=anderson+company+headquarters&um=1&ie=UTF-8&sa=X&ved=2ahUKEwjKnY__94n9AhWnUGwGHZpOCvoQ_AUoA3oECAEQBQ');
  Future<void> _andersonq() async {
    if (!await launchUrl(_url12)) {
      throw Exception('Could not launch $_url12');
    }
  }

  final Uri _url13 = Uri.parse('https://www.google.com/maps/place/DK+Company');
  Future<void> _dkq() async {
    if (!await launchUrl(_url13)) {
      throw Exception('Could not launch $_url13');
    }
  }

  final Uri _url14 = Uri.parse(
      'https://www.google.com/maps/place/Dearborn');
  Future<void> _fordq() async {
    if (!await launchUrl(_url14)) {
      throw Exception('Could not launch $_url14');
    }
  }

  final Uri _url15 = Uri.parse(
      'https://www.google.com/maps?q=adidas+headquarters+map&um=1&ie=UTF-8&sa=X&ved=2ahUKEwiazt-j-In9AhU8UGwGHaD_BNYQ_AUoAnoECAEQBA');
  Future<void> _adidasq() async {
    if (!await launchUrl(_url15)) {
      throw Exception('Could not launch $_url15');
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Work From Home'),
        backgroundColor: const Color.fromARGB(195, 19, 44, 42),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            //5th Company hoomaroom
            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: const Color.fromARGB(255, 243, 241, 253),
              child: SizedBox(
                width: 400,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/hoomaroomlogo.jpg'),
                        radius: 90,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Hoomaroom Furniture',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 18, 2, 44),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'We provide best furniture for home.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 18, 2, 44),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: _hoomaroom,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(195, 19, 44, 42))),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: const [
                                Icon(Icons.touch_app),
                                Text('Visit'),
                              ],
                            ),
                          ),
                        ),
                      ),
                     const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          child: IconButton(
                      
                        onPressed: () async {
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                        icon: const Icon(Icons.call),
                      )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: IconButton(
                          onPressed: _hoomaroomq,
                          icon: const Icon(Icons.maps_home_work_sharp),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //2nd Company Anderson
            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: const Color.fromARGB(255, 243, 241, 253),
              child: SizedBox(
                width: 400,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/andersonlogo.png'),
                        radius: 90,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Anderson',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 18, 2, 44),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'The Anderson Company is a leader in site preparation, excavation, demolition, and material removal in the Washington DC metropolitan area.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 18, 2, 44),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: _anderson,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(195, 19, 44, 42))),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: const [
                                Icon(Icons.touch_app),
                                Text('Visit')
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          child: IconButton(
                      
                        onPressed: () async {
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                        icon: const Icon(Icons.call),
                      )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: IconButton(
                          onPressed: _andersonq,
                          icon: const Icon(Icons.maps_home_work_sharp),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //3rd Company Dk Company

            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: const Color.fromARGB(255, 243, 241, 253),
              child: SizedBox(
                width: 400,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/dklogo.jpeg'),
                        radius: 90,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'D.K And Company',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 18, 2, 44),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Since 2001 D.K Company has grown to become one of leading suppliers of Fashison and Lifestyle brand',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 18, 2, 44),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: _dk,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(195, 19, 44, 42))),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: const [
                                Icon(Icons.touch_app),
                                Text('Visit')
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          child: IconButton(
                      
                        onPressed: () async {
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                        icon: const Icon(Icons.call),
                      )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: IconButton(
                          onPressed: _dkq,
                          icon: const Icon(Icons.maps_home_work_sharp),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //4th Company ford
            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: const Color.fromARGB(255, 243, 241, 253),
              child: SizedBox(
                width: 400,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/fordlogo.png'),
                        radius: 90,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Ford',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 18, 2, 44),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'We are one of the largest Automobile comany in the world. We are looking for talented young people to join our company',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 18, 2, 44),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: _ford,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(195, 19, 44, 42))),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: const [
                                Icon(Icons.touch_app),
                                Text('Visit')
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          child: IconButton(
                      
                        onPressed: () async {
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                        icon: const Icon(Icons.call),
                      )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: IconButton(
                          onPressed: _fordq,
                          icon: const Icon(Icons.maps_home_work_sharp),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //1st company Adidas
            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: const Color.fromARGB(255, 243, 241, 253),
              child: SizedBox(
                width: 400,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/adidaslogo.jpeg'),
                        radius: 90,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Adidas',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 18, 2, 44),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'We are one of the largest footware comany in the world. We are looking for talented young people to join our company',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 18, 2, 44),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: _adidas,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(195, 19, 44, 42))),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: const [
                                Icon(Icons.touch_app),
                                Text('Visit')
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          child: IconButton(
                      
                        onPressed: () async {
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                        icon: const Icon(Icons.call),
                      )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: IconButton(
                          onPressed: _adidasq,
                          icon: const Icon(Icons.maps_home_work_sharp),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Office Work
class OfficeWork extends StatefulWidget {
  const OfficeWork({super.key});

  @override
  State<OfficeWork> createState() => _OfficeWorkState();
}

class _OfficeWorkState extends State<OfficeWork> {


  final Uri _url = Uri.parse('https://www.freshersnow.com/huawei-internship/');
  Future<void> _huawei() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  final Uri _url1 = Uri.parse('https://jobs.intel.com/en/internships');
  Future<void> _intel() async {
    if (!await launchUrl(_url1)) {
      throw Exception('Could not launch $_url1');
    }
  }

  final Uri _url2 = Uri.parse('https://www.lg.com/global/careers');
  Future<void> _lg() async {
    if (!await launchUrl(_url2)) {
      throw Exception('Could not launch $_url2');
    }
  }

  final Uri _url3 = Uri.parse('https://www.mckinsey.com/careers/students');
  Future<void> _mck() async {
    if (!await launchUrl(_url3)) {
      throw Exception('Could not launch $_url3');
    }
  }

  final Uri _url4 = Uri.parse(
      'https://www.occstrategy.com/en/careers/your-application/undergraduate-internship/');
  Future<void> _oc() async {
    if (!await launchUrl(_url4)) {
      throw Exception('Could not launch $_url4');
    }
  }
 
  final number = '+918275234235';

  //Headquater url

  final Uri _url11 = Uri.parse('https://www.google.com/maps/place/Santa+Clara');
  Future<void> _intelq() async {
    if (!await launchUrl(_url11)) {
      throw Exception('Could not launch $_url11');
    }
  }

   final Uri _url12 =
      Uri.parse('https://www.google.com/maps?q=oc+consultancy+headquarters&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAxgAMgUIIRCgATIFCCEQoAEyBQghEKABMgUIIRCgATIFCCEQoAE6GwguEJoDEKgDEOoCELQCEEMQiwMQqAMQpgMYAToMCAAQ6gIQtAIQQxgBOhgILhDHARDRAxDSAxCoAxDqAhC0AhBDGAE6DQgAEI8BEOoCELQCGAI6HAguEMcBENEDENQCEKgDENIDEEMQiwMQpgMQqAM6BAgAEEM6CwgAEIAEELEDEIMBOgUIABCABDoNCC4Q1AIQqAMQmgMQQzokCC4QxwEQ0QMQ1AIQqAMQ0gMQQxCLAxCmAxDcBBDeBBDgBBgDOhMILhDHARDUAhCoAxDRAxDSAxBDOggIABCxAxCRAjoRCC4QxwEQrwEQqAMQpgMQkQI6FgguEOUEEKgDEKADEEMQiwMQoAMQqAM6HgguEMcBENQCEKgDENEDENIDEEMQ3AQQ3gQQ4AQYAzoZCC4QxwEQ0QMQqAMQ0gMQQxCLAxCoAxDSAzoICAAQgAQQsQM6BwgAELEDEEM6CwgAEIAEELEDEMkDOgcIABCABBAKOhEILhCABBDHARCvARCoAxCmAzoRCC4QgAQQxwEQrwEQpgMQqAM6EQguEK8BEMcBEKYDEKgDEIAEOgkIABAWEB4Q8QQ6BggAEBYQHjoFCAAQhgM6CwghEBYQHhDxBBAdOgcIIRCgARAKOgQIIRAVSgQIQRgASgQIRhgBUABY1CxgzTNoAXAAeACAAbMBiAHZD5IBBDAuMTKYAQCgAQGwARS4AQLAAQHaAQQIARgH2gEGCAIQARgK2gEGCAMQARgU&um=1&ie=UTF-8&sa=X&ved=2ahUKEwijvI3V-on9AhWzyXMBHZX6CgsQ_AUoAXoECAEQAw');
  Future<void> _ocq() async {
    if (!await launchUrl(_url12)) {
      throw Exception('Could not launch $_url12');
    }
  }

  final Uri _url13 = Uri.parse('https://www.google.com/maps?q=huawei+headquarters&um=1&ie=UTF-8&sa=X&ved=2ahUKEwjq6d_k-on9AhUbCrcAHRzJDk4Q_AUoA3oECAEQBQ');
  Future<void> _huaweiq() async {
    if (!await launchUrl(_url13)) {
      throw Exception('Could not launch $_url13');
    }
  }

  final Uri _url14 = Uri.parse(
      'https://www.google.com/maps?q=lg+company+headquarters&um=1&ie=UTF-8&sa=X&ved=2ahUKEwjrs7nv-on9AhVjxHMBHaPQBPMQ_AUoAnoECAEQBA');
  Future<void> _lgq() async {
    if (!await launchUrl(_url14)) {
      throw Exception('Could not launch $_url14');
    }
  }

  final Uri _url15 = Uri.parse(
      'https://www.google.com/maps/search/mckinsey+%26+company+headquarters/@32.4425467');
  Future<void> _mckq() async {
    if (!await launchUrl(_url15)) {
      throw Exception('Could not launch $_url15');
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Work From Office'),
        backgroundColor: const Color.fromARGB(195, 19, 44, 42),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: const Color.fromARGB(255, 243, 241, 253),
              child: SizedBox(
                width: 400,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/intellogo.png'),
                        radius: 90,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Intel Company',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 18, 2, 44),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Intel Corporation is an American multinational corporation and technology company headquartered in Santa Clara, California. It is the worlds largest semiconductor chip manufacturer by revenue, and is one of the developers of the x86 series of instruction sets, the instruction sets found in most personal computers.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 18, 2, 44),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: _intel,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(195, 19, 44, 42))),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: const [
                                Icon(Icons.touch_app),
                                Text('Visit')
                              ],
                            ),
                          ),
                        ),
                      ),
                       const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          child: IconButton(
                      
                        onPressed: () async {
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                        icon: const Icon(Icons.call),
                      )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: IconButton(
                          onPressed: _intelq,
                          icon: const Icon(Icons.maps_home_work_sharp),
                        ),
                      )
                     
                    ],
                  ),
                ),
              ),
            ),

            //5th Company OC Consultancy
            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: const Color.fromARGB(255, 243, 241, 253),
              child: SizedBox(
                width: 400,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/oclogo.png'),
                        radius: 90,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'OC Consultancy',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 18, 2, 44),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Overseas Consultants is an Education focused company which assists new budding and existing education business entrepreneurs for establishing Educational ventures. It is pioneer in providing foreign collaboration,student recruitment and marketing and branding of Indian and Foreign Schools, Colleges, Institutes and Universities.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 18, 2, 44),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: _oc,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(195, 19, 44, 42))),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: const [
                                Icon(Icons.touch_app),
                                Text('Visit'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                       const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          child: IconButton(
                        onPressed: () async {
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                        icon: const Icon(Icons.call),
                      )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: IconButton(
                          onPressed: _ocq,
                          icon: const Icon(Icons.maps_home_work_sharp),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //1st company Huawei
            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: const Color.fromARGB(255, 243, 241, 253),
              child: SizedBox(
                width: 400,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/huwailogo.jpeg'),
                        radius: 90,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Huawei Company',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 18, 2, 44),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Huawei Technologies Co., Ltd. is a Chinese multinational technology corporation headquartered in Shenzhen, Guangdong province, that designs, develops, manufactures and sells telecommunications equipment, consumer electronics, smart devices and various rooftop solar power products.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 18, 2, 44),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: _huawei,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(195, 19, 44, 42))),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: const [
                                Icon(Icons.touch_app),
                                Text('Visit')
                              ],
                            ),
                          ),
                        ),
                      ),
                     
                       const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          child: IconButton(
                      
                        onPressed: () async {
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                        icon: const Icon(Icons.call),
                      )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: IconButton(
                          onPressed: _huaweiq,
                          icon: const Icon(Icons.maps_home_work_sharp),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //2nd Company Intel

            //3rd Company LG Company

            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: const Color.fromARGB(255, 243, 241, 253),
              child: SizedBox(
                width: 400,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/lglogo.png'),
                        radius: 90,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'L.G Company',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 18, 2, 44),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'LG Electronics Inc is a South Korean multinational electronics company headquartered in Yeouido-dong, Seoul, South Korea.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 18, 2, 44),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: _lg,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(195, 19, 44, 42))),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: const [
                                Icon(Icons.touch_app),
                                Text('Visit')
                              ],
                            ),
                          ),
                        ),
                      ),
                   
                       const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          child: IconButton(
                      
                        onPressed: () async {
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                        icon: const Icon(Icons.call),
                      )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: IconButton(
                          onPressed: _lgq,
                          icon: const Icon(Icons.maps_home_work_sharp),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //4th Company McKinsey & Company
            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: const Color.fromARGB(255, 243, 241, 253),
              child: SizedBox(
                width: 400,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/mcklogo.png'),
                        radius: 90,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'McKinsey & Company',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 18, 2, 44),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'McKinsey & Company is a global management consulting firm founded in 1926 by University of Chicago professor James O. McKinsey, that offers professional services to corporations, governments, and other organizations.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 18, 2, 44),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: _mck,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(195, 19, 44, 42))),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: const [
                                Icon(Icons.touch_app),
                                Text('Visit')
                              ],
                            ),
                          ),
                        ),
                      ),
                     
                       const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          child: IconButton(
                      
                        onPressed: () async {
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                        icon: const Icon(Icons.call),
                      )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: IconButton(
                          onPressed: _mckq,
                          icon: const Icon(Icons.maps_home_work_sharp),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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
