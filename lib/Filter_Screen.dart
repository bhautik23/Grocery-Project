import 'package:flutter/material.dart';
import 'Beverages.dart';

class filter extends StatefulWidget {
  const filter({Key? key}) : super(key: key);

  @override
  State<filter> createState() => _filterState();
}

class _filterState extends State<filter> {
  bool value = false;
  bool _isChecked = true;
  String _currText = '';

  List<String> text = [
    'Eggs',
    'Noodles & pasta',
    'Chips & Crisps',
    'Fast Food'
  ];
  List<String> text1 = [
    'Individual Collection',
    'Cocacola',
    'Ifad',
    'Kazi Formas'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => beverages(),
                          ));
                    },
                    child: Icon(Icons.close)),
                SizedBox(
                  width: 120,
                ),
                Text(
                  'Filters',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.878,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text("Categories",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                  ),
                  Expanded(
                      child: Column(
                        children: text
                            .map((t) => CheckboxListTile(
                          title: Text(t),
                          value: _isChecked,
                          onChanged: (val) {
                            setState(() {
                              _isChecked = val!;
                              if (val == true) {
                                _currText = t;
                              }
                            });
                          },
                        ))
                            .toList(),
                      )),
                  // Row(
                  //   children: [
                  //     Text("abc",
                  //         style: TextStyle(
                  //             fontSize: 18, fontWeight: FontWeight.bold)),
                  //     Checkbox(
                  //       value: this.value,
                  //       onChanged: (value) {
                  //         setState(() {
                  //           this.value = ;
                  //         });
                  //       },
                  //     ), //Check
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Text("abc",
                  //         style: TextStyle(
                  //             fontSize: 18, fontWeight: FontWeight.bold)),
                  //     Checkbox(
                  //       value: this.value,
                  //       onChanged: (value) {
                  //         setState(() {
                  //           this.value = value!;
                  //         });
                  //       },
                  //     ), //Check
                  //   ],
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text(
                      'Brand',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: text1
                        .map((t) => CheckboxListTile(
                              title: Text(t),
                              value: _isChecked,
                              onChanged: (val) {
                                setState(() {
                                  _isChecked = val!;
                                  if (val == true) {
                                    _currText = t;
                                  }
                                });
                              },
                            ))
                        .toList(),
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Center(
                      child: Text("Apply Filter",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                    height: 42,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
