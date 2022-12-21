import 'package:flutter/material.dart';

import 'login.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
              Image.asset("assets/images/logoo-mdpi.png",
                  width: MediaQuery.of(context).size.width / 1.2),
              SizedBox(
                height: MediaQuery.of(context).size.height / 9,
              ),
              MaterialButton(
                shape: const StadiumBorder(),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return Login();
                  }));
                },
                color: Colors.purple,
                child: const Text(
                  "MeeTU",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
