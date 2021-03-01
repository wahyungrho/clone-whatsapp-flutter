import 'package:flutter/material.dart';
import 'package:project_clone_whatsapp/template/custom_widget_item.dart';
import 'package:project_clone_whatsapp/template/theme.dart';
import 'package:project_clone_whatsapp/template/widget_view.dart';

class CallPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: secodaryGreen,
        onPressed: () {},
        child: Icon(Icons.add_call),
      ),
      body: WidgetView(
        child: ListView(
          padding: EdgeInsets.fromLTRB(24, 5, 24, 24),
          children: [
            CustomWidgetItem(
              "images/pic_kim.png",
              call: true,
              typeCall: true,
              statusCall: true,
              unRead: false,
              title: "Kim Yo You",
              subtitle: "Yesterday, 19:45 PM",
            ),
            CustomWidgetItem(
              "images/pic_shakira.png",
              call: true,
              statusCall: true,
              unRead: false,
              title: "Shakira Alyssa",
              subtitle: "Yesterday, 9:45 PM",
            ),
            CustomWidgetItem(
              "images/pic_kim.png",
              call: true,
              typeCall: true,
              unRead: false,
              title: "Kim Yo You",
              subtitle: "(3) Yesterday, 08:30 AM",
            ),
          ],
        ),
      ),
    );
  }
}
