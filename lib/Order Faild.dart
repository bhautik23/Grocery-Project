import 'package:flutter/material.dart';
import 'My Cart.dart';
import 'Order_Accepted.dart';
class order_faild extends StatefulWidget {
  const order_faild({Key? key}) : super(key: key);

  @override
  State<order_faild> createState() => _order_faildState();
}

class _order_faildState extends State<order_faild> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80,),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height*0.42, width: MediaQuery.of(context).size.width*0.8,
              child: Image.asset('assets/order_failed_image.png',fit: BoxFit.fill),
            ),
          ),
          SizedBox(height: 15,),
          Text('Oops! Order Faild',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          Text('Something WentTemply Wrong',style: TextStyle(color: Colors.grey,fontSize: 15),),
          SizedBox(height: 30,),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => order_accepted(),
                  ));
            },
            child: Container(height: 50,
            width: 280,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.green),child: Center(child: Text("Plese Try Again",style: TextStyle(color: Colors.white,fontSize: 18))),
            ),
          ), SizedBox(height: 35,),

          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => My_Cart(),
                    ));
              },
              child: Text("Back To Home",style: TextStyle(fontSize: 18),))

        ],
      ),
    ));
  }
}
