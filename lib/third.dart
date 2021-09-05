import 'package:fifth/fourth.dart';
import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: "",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.note_sharp)),
          BottomNavigationBarItem(
              label: "", icon: Icon(Icons.person_add_disabled)),
          BottomNavigationBarItem(
              label: "", icon: Icon(Icons.ring_volume_sharp)),
        ],
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage("images/avatar.png"),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Hi Ghulam",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "6 Task are pending",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 25, top: 10),
                height: 125,
                width: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                        colors: [Color(0xff1A1A1A), Color(0xff5D3016)])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mobile App Design",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Mike and Anita",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("images/bat.jpg"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("images/spider.jpg"),
                        ),
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.only(right: 20),
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Text(
                      "Monthly Review",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Fourt()));
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.orange[800],
                          child: Icon(
                            Icons.calendar_today,
                            size: 20,
                          ),
                        )),
                    SizedBox(
                      width: 40,
                    ),
                    // CircleAvatar(
                    //   backgroundColor: Colors.orange[800],
                    //   child: Icon(
                    //     Icons.calendar_today,
                    //     size: 20,
                    //   ),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(13),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff5D3016),
                                      Color(0xff1A1A1A),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            child: Column(
                              children: [
                                Text(
                                  "16",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 17),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff5D3016),
                                      Color(0xff1A1A1A),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            child: Column(
                              children: [
                                Text(
                                  "16",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 17),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff5D3016),
                                      Color(0xff1A1A1A),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            child: Column(
                              children: [
                                Text(
                                  "22",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff5D3016),
                                      Color(0xff1A1A1A),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            child: Column(
                              children: [
                                Text(
                                  "22",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
