import 'package:flutter/material.dart';
import 'package:nectar/Splash%20screen.dart';
import 'Home Screen.dart';

class order_accepted extends StatefulWidget {
  const order_accepted({Key? key}) : super(key: key);

  @override
  State<order_accepted> createState() => _order_acceptedState();
}

class _order_acceptedState extends State<order_accepted> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Container(
              height: 190,
              width: 200,
              child: Image.asset('assets/order_accepted_icon.png',
                  fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text("Your Order Has ",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 5,
          ),
          Text("Been Accepted ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Text("Your item Has been placed and is ",
              style: TextStyle(fontSize: 18, color: Colors.grey)),
          Text("On it's way to being Processed ",
              style: TextStyle(fontSize: 18, color: Colors.grey)),
          SizedBox(
            height: 35,
          ),
          Container(
            height: 50,
            width: 280,
            child: Center(
                child: Text("Track Order",
                    style: TextStyle(color: Colors.white, fontSize: 20))),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.green),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => home(),
                  ));
            },
            child: Text(
              'Back To Home',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ));
  }
}
