import 'package:flutter/material.dart';
import 'package:project_clone_whatsapp/template/custom_widget_item.dart';
import 'package:project_clone_whatsapp/template/theme.dart';
import 'package:project_clone_whatsapp/template/widget_view.dart';

class StatusPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16),
            height: 50,
            width: 50,
            decoration: BoxDecoration(shape: BoxShape.circle, color: lightGrey),
            child: Icon(Icons.create_outlined, color: primaryGrey,),
          ),
          FloatingActionButton(
            backgroundColor: secodaryGreen,
            onPressed: () {},
            child: Icon(Icons.camera_alt_outlined),
          )
        ],
      ),
      body: WidgetView(
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Container(
              height: 70,
              child: Stack(
                children: [
                  // tumpukan pertama gambar
                  Image.asset("images/pic_mystatus.png"),

                  // tumpukan kedua icon
                  Positioned(
                    left: 50,
                    bottom: 0,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: secodaryGreen),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  // tumpukan ketiga text
                  Positioned(
                    left: 90,
                    top: 15,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My Status",
                            style: titleHeader.copyWith(fontSize: 16),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Tap to add status update",
                              style: subtitleHeader.copyWith(fontSize: 14)),
                        ]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Recent Updates",
              style: titleHeader.copyWith(fontSize: 14, color: primaryGrey),
            ),
            CustomWidgetItem(
              "images/status_elizabeth.png",
              unRead: false,
              title: "Elizabeth Rose",
              subtitle: "Today, 9:45 AM",
            ),
            CustomWidgetItem(
              "images/status_shakira.png",
              unRead: false,
              title: "Shakira Alyssa",
              subtitle: "Today, 7:59 AM",
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Viewed Updates",
              style: titleHeader.copyWith(fontSize: 14, color: primaryGrey),
            ),
            CustomWidgetItem(
              "images/status_kim.png",
              unRead: false,
              title: "Kim Yo You",
              subtitle: "Yesterday, 12:57 AM",
            ),
          ],
        ),
      ),
    );
  }
}
