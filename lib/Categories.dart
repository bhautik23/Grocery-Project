import 'package:flutter/material.dart';
import 'Beverages.dart';
import 'Home Screen.dart';

class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => home(),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 300.0),
              child: Icon(Icons.close),
            ),
          ),
          Center(
              child: Text("Find Products",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 320,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 6),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Store',
                fillColor: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 170,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.greenAccent[100],border: Border.all(color: Colors.green)),
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      child: Image.asset('assets/fruit.png'),
                    ),
                    Text(
                      'Fresh Fruit &',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ), Text(
                      'Vegetables',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                height: 170,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.pinkAccent[100],border: Border.all(color: Colors.green)),
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      child: Image.asset('assets/oil.png'),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'Coocking Oil',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ), SizedBox(height: 20,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 170,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.pinkAccent[100],border: Border.all(color: Colors.green)),
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      child: Image.asset('assets/meat.png'),
                    ),
                    Text(
                      'Meat & Fish',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 170,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.greenAccent[100],border: Border.all(color: Colors.green)),
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      child: Image.asset('assets/bakery.png'),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'Bakery & Snacks',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ), SizedBox(height: 20,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 170,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.greenAccent[100],border: Border.all(color: Colors.green)),
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      child: Image.asset('assets/dairy.png'),
                    ),
                    Text(
                      'Dairy & Eggs',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => beverages(),));
              },
                child: Container(
                  height: 170,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pinkAccent[100],border: Border.all(color: Colors.green)),
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset('assets/beverages.png'),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Beverages',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
