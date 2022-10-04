import 'package:flutter/material.dart';
import 'Order Faild.dart';

class My_Cart extends StatefulWidget {
  const My_Cart({Key? key}) : super(key: key);

  @override
  State<My_Cart> createState() => _My_CartState();
}

class _My_CartState extends State<My_Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
         Container(
          child: ListView(scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 17,
              ),
              Center(
                  child: Text('My Cart',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Image.asset('assets/pepper.png'),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 20,),
                            Text("Bell Pepper Red",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            Icon(Icons.close)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(right: 80.0),
                          child: Text('1Kg,Priceg',style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ),
                        SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Icon(Icons.minimize),
                              height: MediaQuery.of(context).size.height * 0.045,
                              width: MediaQuery.of(context).size.width * 0.095,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            Text("1",style: TextStyle(fontSize: 20)),
                            Container(
                              child: Icon(Icons.add),
                              height: MediaQuery.of(context).size.height * 0.045,
                              width: MediaQuery.of(context).size.width * 0.095,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('\$4.99', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                          ],
                        ),
                      ],
                    )
                  ),
                ],
              ),Divider(
                indent: 10,
                endIndent: 10,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Image.asset('assets/ginger.png'),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 40.0),
                              child: Text("Ginger",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                            Icon(Icons.close)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(right: 80.0),
                          child: Text('250gm,Priceg',style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ),
                        SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Icon(Icons.minimize),
                              height: MediaQuery.of(context).size.height * 0.045,
                              width: MediaQuery.of(context).size.width * 0.095,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            Text("1",style: TextStyle(fontSize: 20)),
                            Container(
                              child: Icon(Icons.add),
                              height: MediaQuery.of(context).size.height * 0.045,
                              width: MediaQuery.of(context).size.width * 0.095,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('\$4.99', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                          ],
                        ),
                      ],
                    )
                  ),
                ],
              ),Divider(
                indent: 10,
                endIndent: 10,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Image.asset('assets/ginger1.png'),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 40.0),
                              child: Text('Ginger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                            Icon(Icons.close)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(right: 80.0),
                          child: Text('250gm,Priceg',style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ),
                        SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Icon(Icons.minimize),
                              height: MediaQuery.of(context).size.height * 0.045,
                              width: MediaQuery.of(context).size.width * 0.095,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            Text("1",style: TextStyle(fontSize: 20)),
                            Container(
                              child: Icon(Icons.add),
                              height: MediaQuery.of(context).size.height * 0.045,
                              width: MediaQuery.of(context).size.width * 0.095,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('\$4.99', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                          ],
                        ),
                      ],
                    )
                  ),
                ],
              ),Divider(
                indent: 10,
                endIndent: 10,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Image.asset('assets/chicken.png'),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 40.0),
                              child: Text("Chicken",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                            Icon(Icons.close)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(right: 80.0),
                          child: Text('250gm,Priceg',style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ),
                        SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Icon(Icons.minimize),
                              height: MediaQuery.of(context).size.height * 0.045,
                              width: MediaQuery.of(context).size.width * 0.095,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            Text("1",style: TextStyle(fontSize: 20)),
                            Container(
                              child: Icon(Icons.add),
                              height: MediaQuery.of(context).size.height * 0.045,
                              width: MediaQuery.of(context).size.width * 0.095,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('\$4.99', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                          ],
                        ),
                      ],
                    )
                  ),
                ],
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 2,
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => order_faild(),
                        ));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.08,width: MediaQuery.of(context).size.width*0.8,
                    decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        SizedBox(width: 65,),
                        Center(child: Text("Go To Check Out",style: TextStyle(color: Colors.white,fontSize: 18))),
                        SizedBox(width: 50,),
                        Container(
                          height: 18,
                          width: 45,
                          color: Colors.lightGreen,
                          child: Text('\$12.96'),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        // Slider(value: value, onChanged: onChanged)
      ],
      ),
    ));
  }
}
