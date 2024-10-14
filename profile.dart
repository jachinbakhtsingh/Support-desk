import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
        backgroundColor: Colors.lightBlue[100],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white, // Set the background color to blue
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/Akash_Profile.jpg'), // Add your profile picture
                ),
                SizedBox(height: 20),
                Text(
                  'John Doe',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(height: 8),
                Text(
                  'B.Tech Information Technology',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                SizedBox(height: 8),
                Text(
                  'john.doe@email.com',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                SizedBox(height: 8),
                Text(
                  '+1 123-456-7890',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                SizedBox(height: 20),
                buildCard('Date of Birth', 'January 1, 1990', Icons.cake),
                buildCard('Mail', 'john.doe@email.com', Icons.mail),
                buildCard('Personal Mobile', '+1 123-456-7890', Icons.phone),
                buildCard('Father\'s Mobile', '+1 123-456-7890', Icons.phone),
                buildCard('Mother\'s Mobile', '+1 123-456-7890', Icons.phone),
                buildCard('Address', '123 Main Street, Cityville', Icons.location_on),
                buildCard('Community', 'Your Community', Icons.people),
                buildCard('Caste', 'Your Caste', Icons.person),
                buildCard('Religion', 'Your Religion', Icons.star),
                // Add more cards as needed
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(String title, String subtitle, IconData icon) {
    return Card(
      elevation: 3,
      color: Colors.white, // Set card background color
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(icon),
      ),
    );
  }
}
