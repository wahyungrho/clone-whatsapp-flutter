import 'package:flutter/material.dart';
import 'package:project_clone_whatsapp/call_page.dart';
import 'package:project_clone_whatsapp/chat_page.dart';
import 'package:project_clone_whatsapp/status_page.dart';
import 'package:project_clone_whatsapp/template/theme.dart';

class HomePage extends StatefulWidget {
  final String title;
  HomePage({this.title});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.account_circle_outlined), onPressed: () {}),
            ],
            elevation: 0,
            title: Text(
              widget.title,
              style: titleHeader,
            ),
            bottom: TabBar(
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            ChatPages(),
            StatusPages(),
            CallPages(),
          ])),
    );
  }
}
