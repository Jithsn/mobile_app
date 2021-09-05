import 'package:fifth/third.dart';
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
                height: 380,
                image: AssetImage(
                  "images/c.jpg",
                )),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Manage your",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "daily tasks",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Team and project managment with",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "solution providing app",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Third()));
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.orange[800],
                            radius: 30,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Get",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "started",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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
