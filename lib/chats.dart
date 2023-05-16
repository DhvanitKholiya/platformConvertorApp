import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import 'global.dart';

class chats_page extends StatefulWidget {
  const chats_page({Key? key}) : super(key: key);

  @override
  State<chats_page> createState() => _chats_pageState();
}

class _chats_pageState extends State<chats_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView(
          children: Global.contacts
              .map(
                (e) => Card(
                  elevation: 0,
                  child: ListTile(
                    onTap: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25))),
                          context: context,
                          builder: (context) {
                            return BottomSheet(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(25))),
                                onClosing: () {},
                                builder: (context) {
                                  return SizedBox(
                                    height: 300,
                                    width: double.infinity,
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 80,
                                          backgroundImage:
                                              AssetImage("${e['imeg']}"),
                                          backgroundColor: Colors.grey,
                                        ),
                                        Text("${e['name']}"),
                                        Text("${e['contact']}"),
                                        ElevatedButton(
                                            onPressed: () {
                                              Share.share("${e['name']}");
                                              Share.share("${e['contact']}");
                                            },
                                            child: const Text("Share Contact")),
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text("Cancel")),
                                      ],
                                    ),
                                  );
                                });
                          });
                    },
                    leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('${e['imeg']}')),
                    title: Text("${e['name']}"),
                    subtitle: Text("${e['subtitle']}"),
                    trailing: Text("${e['time']}"),
                  ),
                ),
              )
              .toList()),
    );
  }
}

