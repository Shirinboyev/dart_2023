import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? val;
  bool switch0 = false;
  bool switch1 = false;
  bool switch2 = false;
  bool switch3 = false;
  bool check = false;
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  int sa = 0;
  // double scale = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset('images/google.png'),
                ),
                title: const Center(
                  child: Text(
                    'Gmail',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              SwitchListTile(
                tileColor: Colors.blue,
                activeColor: Colors.white,
                title: Text('Show notification'),
                value: switch0,
                onChanged: (value) {
                  setState(() {
                    switch0 = value;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('  Account 1'),
                  ),
                ],
              ),
              SwitchListTile(
                title: Text('Show notification'),
                value: switch1,
                onChanged: (value) {
                  setState(() {
                    switch1 = value;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Mail'),
                value: check,
                onChanged: (value1) {
                  setState(() {
                    check = value1!;
                  });
                },
              ),
              Container(
                color: Colors.grey,
                height: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('  Account 2'),
                  ),
                ],
              ),
              SwitchListTile(
                title: Text('Show notification'),
                value: switch2,
                onChanged: (value) {
                  setState(() {
                    switch2 = value;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Mail'),
                value: check1,
                onChanged: (value1) {
                  setState(() {
                    check1 = value1!;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('  Miscellaneous'),
                  ),
                ],
              ),
              SwitchListTile(
                title: Text('Show notification'),
                value: switch3,
                onChanged: (value) {
                  setState(() {
                    switch3 = value;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Miscellaneous'),
                value: check2,
                onChanged: (value1) {
                  setState(() {
                    check2 = value1!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Attechments'),
                value: check3,
                onChanged: (value1) {
                  setState(() {
                    check3 = value1!;
                  });
                },
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      )),
    );
  }
}
