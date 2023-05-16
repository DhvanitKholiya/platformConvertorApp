import 'package:flutter/material.dart';
import 'global.dart';
import 'package:url_launcher/url_launcher.dart';

class calls_page extends StatefulWidget {
  const calls_page({Key? key}) : super(key: key);

  @override
  State<calls_page> createState() => _calls_pageState();
}

class _calls_pageState extends State<calls_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView(
          children: Global.contacts.map((e) => Card(
            elevation: 0,
            child: ListTile(
              onTap: (){},
              leading: CircleAvatar(radius:40,backgroundImage: AssetImage('${e['imeg']}')),
              title: Text("${e['name']}"),
              subtitle: Text("${e['time']}"),
              trailing: IconButton(
                onPressed: (){
                  final Uri url = Uri.parse('tel:${e['contact']}');
                  launchUrl(url);
                },
                color: Colors.green,
                icon: const Icon(Icons.call),

              ),

            ),
          ),
          ).toList()
      ),
    );
  }
}
