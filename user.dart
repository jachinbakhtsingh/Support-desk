import 'package:flutter/material.dart';
import 'package:supportdesk/loginScreen.dart';

import 'admin_ticket.dart';


class user extends StatefulWidget {
  const user({super.key});

  @override
  State<user> createState() => _user();
}

class _user extends State<user> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: const Text('TICKET PROGRESS',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.lightBlue[100],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Ticket Progress'),
              onTap: () {
                // Navigate to Ticket Progress screen
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => adminticket()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                // Navigate to Profile screen
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => adminticket()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // Navigate to Logout screen
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),

      // Body
      body: Column(
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
                  Text("Total Count", style: TextStyle(fontSize: 20,color: Colors.white)),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: width / 1.5,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.transparent),
                    ),
                    child: Center(child: Text("300",style: TextStyle(fontSize:15,color: Colors.white),)),                  ),
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
                          Text("Open", style: TextStyle(fontSize: 15,color: Colors.white)),
                          SizedBox(height: 10),                          Container(
                            height: 50,
                            width: width / 3,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.transparent),
                            ),
                            child: Center(child: Text("300",style: TextStyle(fontSize:15,color: Colors.white),)),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Inprogress",style: TextStyle(fontSize:15,color: Colors.white),),
                          SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: width / 3,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.transparent),
                            ),
                            child: Center(child: Text("300",style: TextStyle(fontSize:15,color: Colors.white),)),
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
                          Text("Box 3",style: TextStyle(fontSize:15,color: Colors.white),),
                          SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: width / 3,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.transparent),
                            ),
                            child: Center(child: Text("300",style: TextStyle(fontSize:15,color: Colors.white),)),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Box 4",style: TextStyle(fontSize:15,color: Colors.white),),
                          SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: width / 3,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.transparent),
                            ),
                            child: Center(child: Text("300",style: TextStyle(fontSize:15,color: Colors.white),)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ExpansionTile(
                title: (Text('Ticket Open')),
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
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ExpansionTile(
                title: (Text('Ticket Open')),
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
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ExpansionTile(
                title: (Text('Ticket Open')),
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
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ExpansionTile(
                title: (Text('Ticket Open')),
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
            onTap: () {},
          ),
        ],
      ),
    );
  }
}



