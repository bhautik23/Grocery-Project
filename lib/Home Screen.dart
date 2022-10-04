import 'package:flutter/material.dart';
import 'Product Detail.dart';
import 'Categories.dart';
import 'My Cart.dart';
import 'Profile.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 38,
                width: 40,
                child: Column(
                  children: [
                    Icon(Icons.home_outlined),
                    Text("shop",style: TextStyle(fontSize: 10),)
                  ],
                ),), InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => categories(),));
            },
                  child: Container(
              height: 38,
                  width: 40,
                  child: Column(
                    children: [
                      Icon(Icons.travel_explore),
                      Text("Explor",style: TextStyle(fontSize: 10),)
                    ],
                  ),),
                ), Container(
              height: 38,
                width: 40,
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => My_Cart(),
                              ));
                        },
                        child: Icon(Icons.shopping_cart)),
                    Text("cart",style: TextStyle(fontSize: 10),)
                  ],
                ),), Container(
              height: 38,
                width: 45,
                child: Column(
                  children: [
                    Icon(Icons.favorite_border),
                    Text("Favourite",style: TextStyle(fontSize: 10),)
                  ],
                ),), InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => profile(),
                    ));
              },
                  child: Container(
              height: 38,
                  width: 40,
                  child: Column(
                    children: [
                      Icon(Icons.person),
                      Text("Account",style: TextStyle(fontSize: 10),)
                    ],
                  ),),
                ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_bag_outlined),
      //       backgroundColor: Colors.yellow,
      //       label: 'Shop',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.travel_explore),
      //       label: 'Explore',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.add_shopping_cart),
      //       label: 'Cart',
      //     ),
      // BottomNavigationBarItem(
      //   icon: Icon(Icons.favorite_border),
      //   label: 'Favarite',
      // ),
      // BottomNavigationBarItem(
      //   icon: Icon(
      //     Icons.person_outline,
      //     color: Colors.black,
      //   ),
      //   label: 'Account',
      //
      // ),
      // ],
      // ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.1,
              child: Image.asset('assets/icon_color.png'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on_sharp),
              Text(
                'Khartoun,Sudan',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
                height: 35,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search Store",
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage("assets/banner_background.png"))),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 80,
                    child: Image.asset('assets/banner_image (1).png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Fresh Vegetable',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Get Up To 40% OFF',
                        style: TextStyle(fontSize: 12, color: Colors.green),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Exclusive Order',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(
                width: 100,
              ),
              Text(
                'See All',
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.28,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Image.asset('assets/banana.png'),
                    ),
                    Text('Organic',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Bananas',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('7Pcs,Priceg'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "\$4.99",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.035,
                          width: MediaQuery.of(context).size.width * 0.08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: Icon(Icons.add),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.28,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Product_detail()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.165,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Image.asset('assets/apple.png'),
                      ),
                    ),
                    Text('Red Apple',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('1Kg,Priceg'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "\$4.99",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.035,
                          width: MediaQuery.of(context).size.width * 0.08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: Icon(Icons.add),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Best Selling',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(
                width: 100,
              ),
              Text(
                'See All',
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.28,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Image.asset('assets/pepper.png'),
                    ),
                    Text('Bell Paper Red',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('1Kg,Priceg'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "\$4.99",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.035,
                          width: MediaQuery.of(context).size.width * 0.08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: Icon(Icons.add),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.28,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.165,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Image.asset('assets/ginger.png'),
                    ),
                    Text('Ginger',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('250gm,Priceg'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "\$4.99",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.035,
                          width: MediaQuery.of(context).size.width * 0.08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: Icon(Icons.add),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Groceries',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(
                width: 100,
              ),
              Text(
                'See All',
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.pinkAccent[100]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.17,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/pulses.jpg'),
                                    fit: BoxFit.fill),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(40)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Pulses',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lightBlue[100]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.17,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/snacks.jpg'),
                                    fit: BoxFit.fill),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(40)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Snacks',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow[200]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.17,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/healthy.jpg'),
                                    fit: BoxFit.fill),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(40)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Healthy',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.28,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Image.asset('assets/ginger1.png'),
                    ),
                    Text('Ginger',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('250gm,Priceg'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "\$4.99",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.035,
                          width: MediaQuery.of(context).size.width * 0.08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: Icon(Icons.add),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.28,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.165,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Image.asset('assets/chicken.png'),
                    ),
                    Text('Chicken',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('250gm,Priceg'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "\$4.99",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.035,
                          width: MediaQuery.of(context).size.width * 0.08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: Icon(Icons.add),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
