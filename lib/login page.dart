import 'package:flutter/material.dart';
import 'Home Screen.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: 724,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/welcome.jpg',
                    fit: BoxFit.fill,
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 380,
                  ),
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.12,
                      child: Image.asset('assets/app_icon.png'),
                    ),
                  ),
                  Text("Welcome",
                      style: TextStyle(fontSize: 35, color: Colors.white)),
                  Text("to our Store",
                      style: TextStyle(fontSize: 35, color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Get your grecories as fast as in hour ",
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                  SizedBox(
                    height: 28,
                  ),
                  InkWell(
                    onTap: () {
                      print("abc");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => home(),
                          ));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.green[400]),
                      child: Center(
                          child: Text("Get Started",
                              style: TextStyle(
                                  fontSize: 25, color: Colors.white))),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ));
  }
}
