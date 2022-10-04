import 'package:flutter/material.dart';
import 'Home Screen.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 25,),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),image: DecorationImage(image: AssetImage('assets/person.jpg'),fit: BoxFit.fill)),
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Text('Mohammed Hashim',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('Mohammedhashim@gmail.com',style: TextStyle(color: Colors.grey),)
                ],
              ),
            ],
          ),
          SizedBox(height: 30,),
          Divider(
            height: 40,indent: 10,endIndent: 10,color: Colors.black,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.shop),
              Text('Orders',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(width: 100,),
              Icon(Icons.arrow_forward_ios)
            ],
          ), Divider(
            height: 40,indent: 10,endIndent: 10,color: Colors.black,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.credit_card),
              Text('My Detail',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(width: 100,),
              Icon(Icons.arrow_forward_ios)
            ],
          ), Divider(
            height: 40,indent: 10,endIndent: 10,color: Colors.black,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.location_on_sharp),
              Text('Delivery Access',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(width: 50,),
              Icon(Icons.arrow_forward_ios)
            ],
          ), Divider(
            height: 40,indent: 10,endIndent: 10,color: Colors.black,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.payment),
              Text('Payments Method',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(width: 40,),
              Icon(Icons.arrow_forward_ios)
            ],
          ),Divider(
            height: 40,indent: 10,endIndent: 10,color: Colors.black,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.airplane_ticket),
              Text('Promo Card',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(width: 100,),
              Icon(Icons.arrow_forward_ios)
            ],
          ),Divider(
            height: 40,indent: 10,endIndent: 10,color: Colors.black,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.notifications),
              Text('Notifications',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(width: 100,),
              Icon(Icons.arrow_forward_ios)
            ],
          ),Divider(
            height: 40,indent: 10,endIndent: 10,color: Colors.black,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.help_outline_outlined),
              Text('Helps',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(width: 130,),
              Icon(Icons.arrow_forward_ios)
            ],
          ),Divider(
            height: 40,indent: 10,endIndent: 10,color: Colors.black,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.vertical_align_bottom_outlined),
              Text('About',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(width: 130,),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
          SizedBox(height: 30,),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => home(),
                  ));
            },
            child: Container(
              height: 45,
                width: 300,
              child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.login),
                  SizedBox(width: 50,),
                  Text('Log Out',style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),),
                  SizedBox(width: 80,),
                ],
              )),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
            ),
          )
        ],
      ),
    ));
  }
}
