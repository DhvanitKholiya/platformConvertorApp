import 'package:flutter/material.dart';
import 'package:telegram/alert.dart';
import 'package:telegram/settings.dart';

import 'calls.dart';
import 'chats.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.blueGrey.shade700),
    routes: {
      '/': (context) => const home_page(),
    },
  ));
}

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> with TickerProviderStateMixin {
  late TabController tabController;
  PageController pageController = PageController();

  int index = 0;

  List<Widget> pages = [
    const chats_page(),
    const calls_page(),
    const settings(),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Platform converter App"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade700,
          bottom: TabBar(
              controller: tabController,
              indicatorColor: Colors.white,
              onTap: (val) {
                setState(() {
                  index = val;
                  pageController.animateToPage(val,
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.easeIn);
                });
              },
              tabs: const <Tab>[
                Tab(
                  child: Text(
                    "chats_page",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    "calls_page",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    "SETTINGS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ]),
        ),
        floatingActionButton: (tabController.index == 0)
            ? FloatingActionButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const Alert();
                      });
                },
                backgroundColor: Colors.blueGrey.shade700,
                child: const Icon(Icons.add),
              )
            : null,
        body: PageView(
          controller: pageController,
          children: pages.map((e) => e).toList(),
          onPageChanged: (val) {
            setState(() {
              tabController.animateTo(val);
              index = val;
            });
          },
        ),
      ),
    );
  }
}
