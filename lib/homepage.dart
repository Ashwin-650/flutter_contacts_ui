import 'package:flutter/material.dart';
import 'package:flutter_contacts_ui_demo/contactadd.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var arrData = [
    {'name': 'Fazil', 'mob no': 9877543200},
    {'name': 'Rabin sir', 'mob no': 9876543210},
    {'name': 'Musafir', 'mob no': 9876544210},
    {'name': 'Nidhal', 'mob no': 9876543200},
    {'name': 'Ashik', 'mob no': 9876543211},
    {'name': 'Shahid', 'mob no': 9876542210},
    {'name': 'Athul', 'mob no': 9876543310},
    {'name': 'Ashwin', 'mob no': 8876543310},
    {'name': 'Akash', 'mob no': 9876643310},
    {'name': 'Abhin', 'mob no': 9976543310},
    {'name': 'Ashin', 'mob no': 9876543300}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: const Center(
          child: Text(
            'Contacts',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: ListView(
          children: arrData
              .map((value) => ExpansionTile(
                    leading: const Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                    title: Text(
                      value['name'].toString(),
                      style: const TextStyle(fontSize: 25),
                    ),
                    children: [
                      Text(
                        value['mob no'].toString(),
                        style: const TextStyle(fontSize: 20),
                      )
                    ],
                  
                  )
                  )
              .toList()),
              
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Contactadd())),
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.add),
      ),
      
    );
  }
}
