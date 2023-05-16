import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Global {
  static List<Map<String, dynamic>> contacts = [
    {
      'name': "tony stark",
      'subtitle': "Iron man",
      'time': "12:28 pm",
      'contact': "7845346789",
      'imeg': "asset/imeg/iron-man.jpg"
    },
    {
      'name': "captani america",
      'subtitle': "Steve Rogers",
      'time': "1:25 pm",
      'contact': "7845346789",
      'imeg': "asset/imeg/captainamerica.jpg"
    },
    {
      'name': "Thor",
      'subtitle': "Chris Hemsworth",
      'time': "2:09 pm",
      'contact': "9145746789",
      'imeg': "asset/imeg/thir.jpg"
    },
    {
      'name': "Thanos",
      'subtitle': "Josh Brolin",
      'time': "12:44 pm",
      'contact': "9845746789",
      'imeg': "asset/imeg/thanos.jpg"
    },
    {
      'name': "Dr.strange",
      'subtitle': "Benedict Cumberbatch",
      'time': "1:44 pm",
      'contact': "8895849789",
      'imeg': "asset/imeg/doctor-strange.jpg"
    },
    {
      'name': "Natasha Romanova",
      'subtitle': "Scarlett Johansson",
      'time': "Today",
      'contact': "8255847898",
      'imeg': "asset/imeg/Natasha_Romanoff.jpg"
    },
    {
      'name': "Wanda",
      'subtitle': "Elizabeth Olsen",
      'time': "Today",
      'contact': "8205840898",
      'imeg': "asset/imeg/wanda.jpg"
    },
    {
      'name': "Captain Marvel",
      'subtitle': "Brie Larson",
      'time': "Today",
      'contact': "8205840898",
      'imeg': "asset/imeg/Captain Marvel.jpg"
    },
    {
      'name': "pepper potts ",
      'subtitle': "pepper potts ",
      'time': "2:33 ",
      'contact': "8235840898",
      'imeg': "asset/imeg/gf.jpg"
    },
  ];
  static List<Map<dynamic, dynamic>> step = [
    {
      'title': 'Profile Photo',
      'subTitle': 'Add Profile Photo',
      'content': Stack(
        alignment: Alignment.bottomRight,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey,
          ),
          FloatingActionButton(
            mini: true,
            onPressed: () {},
            child: const Icon(Icons.add),
          )
        ],
      ),
    },
    {
      'title': 'Name',
      'subTitle': 'Add Name',
      'content': const TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(), hintText: 'Virat Kohli'),
      )
    },
    {
      'title': 'Contact',
      'subTitle': 'Add Contact',
      'content': const TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(), hintText: '1234567890'),
      )
    }
  ];
  static int index = 0;
  static String selDate =
      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}';
  static String selTime = '';
}
