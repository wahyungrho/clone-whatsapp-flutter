import 'package:flutter/material.dart';
import 'package:project_clone_whatsapp/template/custom_widget_item.dart';
import 'package:project_clone_whatsapp/template/theme.dart';
import 'package:project_clone_whatsapp/template/widget_view.dart';

class ChatPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: secodaryGreen,
        child: Icon(Icons.chat),
      ),
      body: WidgetView(
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Text(
              "Friends",
              style: titleHeader.copyWith(fontSize: 16),
            ),
            CustomWidgetItem(
              "images/pic_peter.png",
              title: "Peter Scwalzer",
              subtitle: "I wish you enjoy for this ...",
            ),
            CustomWidgetItem(
              "images/pic_elizabeth.png",
              title: "Elizabeth Rose",
              subtitle: "I can go visit tomorrow",
              unRead: false,
              time: "11:17",
            ),
            CustomWidgetItem(
              "images/pic_shakira.png",
              title: "Shakira Alyssa",
              subtitle: "Ehm, thankyou",
              unRead: false,
              time: "09:20",
            ),
            CustomWidgetItem(
              "images/pic_kim.png",
              title: "Kim Yo You",
              subtitle: "Yes, of course",
              totalChat: "2",
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Groups",
              style: titleHeader.copyWith(fontSize: 16),
            ),
            CustomWidgetItem(
              "images/pic_group1.png",
              title: "Enjoy Travel",
              subtitle: "I will prepare immediately ... ",
              totalChat: "10",
            ),
            CustomWidgetItem(
              "images/pic_group2.png",
              title: "Android Flutter",
              subtitle: "Sory, How about container ? ...",
              unRead: false,
              time: "11:17",
            ),
          ],
        ),
      ),
    );
  }
}
