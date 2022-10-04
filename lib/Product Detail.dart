import 'package:flutter/material.dart';

class Product_detail extends StatefulWidget {
  const Product_detail({Key? key}) : super(key: key);

  @override
  State<Product_detail> createState() => _Product_detailState();
}

class _Product_detailState extends State<Product_detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlueAccent[100],
                  image:
                      DecorationImage(image: AssetImage('assets/apple.png'))),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Red Apple',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              SizedBox(
                width: 80,
              ),
              Icon(Icons.favorite_border)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: Text(
              '1Kg,Priceg',
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Icon(Icons.minimize),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black),
                ),
              ),
              Text("1",style: TextStyle(fontSize: 20)),
              Container(
                child: Icon(Icons.add),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black),
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Text('\$4.99', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ],
          ),
          SizedBox(height: 40,),
          Divider(
            height: 20,
            color: Colors.grey,
            indent: 20,
            endIndent: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Product Detail',style: TextStyle(fontSize: 16)),
              SizedBox(width: 50,),
              Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
          Divider(
            height: 40,
            color: Colors.grey,
            indent: 20,
            endIndent: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Nutritions',style: TextStyle(fontSize: 16)),
              SizedBox(width: 100,),
              Text('100gm'),
              Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
          Divider(
            height: 40,
            color: Colors.grey,
            indent: 20,
            endIndent: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Review',style: TextStyle(fontSize: 16)),
              SizedBox(width: 80,),
              Container(
                  height: 40,
                  width: 100,
                  child: Image.asset('assets/star.jpg',)),
              Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),SizedBox(height: 40,),
          Container(
            child: Center(
              child: Text('Add To Basket',
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.green,
            ),
          )
        ],
      ),
    ));
  }
}
