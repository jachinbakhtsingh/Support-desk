import 'package:flutter/material.dart';

class AddTicket extends StatefulWidget {
  const AddTicket({Key? key}) : super(key: key);

  @override
  _AddTicketState createState() => _AddTicketState();
}

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20.0),
      children: [
        buildPersonRow('Ticket Open'),
        buildPersonRow('Library'),
        buildPersonRow('Office'),
        buildPersonRow('Teaching/Learning'),
        buildPersonRow('Department'),
        buildPersonRow('Faculty Affairs'),
        buildPersonRow('Student Affairs'),
        // Add more items as needed
      ],
    );
  }

  Widget buildPersonRow(String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          ViewButton(),
        ],
      ),
    );
  }
}

class AboutContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20.0),
      children: [
        buildPersonRow('Ticket Open'),
        buildPersonRow('Library'),
        buildPersonRow('Office'),
        buildPersonRow('Teaching/Learning'),
        buildPersonRow('Department'),
        buildPersonRow('Faculty Affairs'),
        buildPersonRow('Student Affairs'),
        // Add more items as needed
      ],
    );
  }

  Widget buildPersonRow(String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          ViewButton(),
        ],
      ),
    );
  }
}

class _AddTicketState extends State<AddTicket> {
  String selectedTab = 'Open'; // Default selected tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
        title: Text(selectedTab),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildTab('Open'),
                buildTab('Inprogress'),
                buildTab('Completed'),
                buildTab('Rejected'),
              ],
            ),
          ),
          Expanded(
            child: getContentForTab(selectedTab),
          ),
        ],
      ),
    );
  }

  Widget buildTab(String tabText) {
    return GestureDetector(
      onTap: () {
        // Handle tab selection
        setState(() {
          selectedTab = tabText;
        });
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Text(
          tabText,
          style: TextStyle(
            color: selectedTab == tabText ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget getContentForTab(String tab) {
    if (tab == 'Open') {
      return AboutContent();
    } else if (tab == 'Inprogress') {
      return ProfileContent();
    } else if (tab == 'Completed' || tab == 'Rejected') {
      return SharedContent();
    } else {
      return Center(
        child: Text('Content for $tab'),
      );
    }
  }
}

class SharedContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20.0),
      children: [
        buildPersonRow('Ticket Open'),
        buildPersonRow('Library'),
        buildPersonRow('Office'),
        buildPersonRow('Teaching/Learning'),
        buildPersonRow('Department'),
        buildPersonRow('Faculty Affairs'),
        buildPersonRow('Student Affairs'),
        // Add more items as needed
      ],
    );
  }

  Widget buildPersonRow(String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          ViewButton(),
        ],
      ),
    );
  }
}

class ViewButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showMyDialog(context);
        // Handle button press for the respective person
      },
      child: Text('View'),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('TICKET INFORMATION'),
        content: Column(
          children: <Widget>[
            // Display your Firestore data here
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                          padding: EdgeInsets.all(15),
                          child: Text('Description',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                    ),
                    TableCell(
                      child: Container(
                          padding: EdgeInsets.all(15),
                          child: Text('Details',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                    ),
                  ],
                ),
                // Add more table rows as needed
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Accepted'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Rejected'),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}