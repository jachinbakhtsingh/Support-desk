import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supportdesk/loginScreen.dart';
import 'package:supportdesk/profile.dart';
import 'addticket.dart';


class adminticket extends StatefulWidget {
  const adminticket({super.key});

  @override
  State<adminticket> createState() =>createState ();
}

class _adminticketState extends State<adminticket> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery
        .of(context)
        .size;
    height = size.height;
    width = size.width;
    double drawerHeaderHeight = height / 8;
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: const Text(
          'TICKET PROGRESS', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.lightBlue[100],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Center(
                      child:Image.asset('assets/logo_depart.png',height: drawerHeaderHeight,width: width/1,)
                  ),
                ],
              ),

              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Ticket Progress'),
              onTap: () {
                // Navigate to Ticket Progress screen
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => adminticket()));
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: const Text('Add Ticket'),
              onTap: () {
                // Navigate to Ticket Progress screen
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddTicket()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                // Navigate to Profile screen
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserProfile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // Navigate to Logout screen
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),

      // Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Total Count
            Container(
              height: 450,
              width: width / 0.9,
              padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Total Count",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: width / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.transparent),
                      ),
                      child: Center(child: Text("300", style: TextStyle(
                          fontSize: 15, color: Colors.white),)),),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white.withOpacity(0.2),
                    ),
                    SizedBox(height: 30), // Add space after the line
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Open", style: TextStyle(
                                fontSize: 15, color: Colors.white)),
                            SizedBox(height: 10), Container(
                              height: 50,
                              width: width / 3,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.transparent),
                              ),
                              child: Center(child: Text("300", style: TextStyle(
                                  fontSize: 15, color: Colors.white),)),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Inprogress", style: TextStyle(
                                fontSize: 15, color: Colors.white),),
                            SizedBox(height: 10),
                            Container(
                              height: 50,
                              width: width / 3,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.transparent),
                              ),
                  child: Center(child: Text("300", style: TextStyle(
              fontSize: 15, color: Colors.white),)),
    ),
    ],
    ),
                      ],
                    ),

                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Completed", style: TextStyle(
                                fontSize: 15, color: Colors.white),),
                            SizedBox(height: 10),
                            Container(
                              height: 50,
                              width: width / 3,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.transparent),
                              ),
                              child: Center(child: Text("300", style: TextStyle(
                                  fontSize: 15, color: Colors.white),)),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Rjected", style: TextStyle(
                                fontSize: 15, color: Colors.white),),
                            SizedBox(height: 10),
                            Container(
                              height: 50,
                              width: width / 3,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.transparent),
                              ),
                              child: Center(child: Text("300", style: TextStyle(
                                  fontSize: 15, color: Colors.white),)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            CupertinoButton(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0),
                  child: ExpansionTile(
                    title: (Text(
                      'Ticket Open', style: TextStyle(color: Colors.white),)),
                    maintainState: true,
                    collapsedBackgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                        ],
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  print('Button pressed!');
                }
            ),
            CupertinoButton(
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: ExpansionTile(
                    title: (Text(
                      'Ticket Open', style: TextStyle(color: Colors.white),)),
                    maintainState: true,
                    collapsedBackgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                        ],
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  print('Button pressed!');
                }
            ),
            CupertinoButton(
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: ExpansionTile(
                    title: (Text(
                      'Ticket Open', style: TextStyle(color: Colors.white),)),
                    maintainState: true,
                    collapsedBackgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                        ],
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  print('Button pressed!');
                }
            ),
            CupertinoButton(
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: ExpansionTile(
                    title: (Text(
                      'Ticket Open', style: TextStyle(color: Colors.white),)),
                    maintainState: true,
                    collapsedBackgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                        ],
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  print('Button pressed!');
                }
            ),
          ],
        ),
      ),
    );
  }
}



