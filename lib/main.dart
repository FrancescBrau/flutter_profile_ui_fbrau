//import 'dart:html';

import 'package:flutter/material.dart';
import 'detail_item.dart';

void main() {
  runApp(MaterialApp(
    home: Profile(),
    theme: ThemeData(fontFamily: 'Poppins'),
  ));
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter = counter + 1;
          });
        },
        shape: const CircleBorder(),
        child: Container(
          width: 60,
          height: 60,
          child: const Icon(Icons.add),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.deepPurple.shade800, Colors.deepPurpleAccent],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.purple.shade800, Colors.deepPurpleAccent],
                    ),
                  ),
                  child: Column(
                    children: const [
                      SizedBox(height: 110.0),
                      CircleAvatar(
                        radius: 65.0,
                        backgroundImage: AssetImage('assets/erza.jpg'),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Erza Scarlet',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'S Class Mage',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                    child: Card(
                      margin: const EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                      child: Container(
                        width: 310.0,
                        height: 290.0,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              DetailItem(
                                label: "Battles",
                                value: "$counter",
                              ),
                              DetailItem(
                                label: "Birthday",
                                value: "April 7th",
                              ),
                              DetailItem(
                                label: "Age",
                                value: "19 yrs",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
