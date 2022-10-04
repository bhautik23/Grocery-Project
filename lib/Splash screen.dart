import 'package:flutter/material.dart';
import 'login page.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  Future _navigatetohome() async {

    await Future.delayed(Duration(seconds: 2), () {});
    setState(() {
    });
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => login()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.green[400],
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height*0.6, width: MediaQuery.of(context).size.width*0.6,
              child: Image.asset('assets/Icon1.png'),
            ),
          ),
        ));
  }
}
