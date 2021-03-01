import 'package:flutter/material.dart';
import 'package:project_clone_whatsapp/template/theme.dart';

class CustomWidgetItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String totalChat;
  final String time;
  final bool unRead;
  final bool call;
  final bool statusCall; // status call true is "panggilan terjawab"
  final bool typeCall; // type call true is "phone"

  const CustomWidgetItem(
    this.image, {
    Key key,
    this.title = "title",
    this.subtitle = "subtitle",
    this.totalChat = "1",
    this.unRead = true,
    this.time = "",
    this.call = false,
    this.statusCall = false,
    this.typeCall = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Image.asset(
              image,
              width: 70,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: titleHeader.copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                call
                    ? Row(
                        children: [
                          statusCall
                              ? Icon(Icons.call_made_outlined, color: secodaryGreen,)
                              : Icon(Icons.call_received_outlined, color: Colors.red,),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            subtitle,
                            style: subtitleHeader.copyWith(fontSize: 14),
                          ),
                        ],
                      )
                    : Text(
                        subtitle,
                        style: unRead
                            ? titleHeader.copyWith(fontSize: 14)
                            : subtitleHeader.copyWith(fontSize: 14),
                      ),
              ],
            ),
            Spacer(),
            unRead
                ? Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: secodaryGreen, shape: BoxShape.circle),
                    child: Center(
                        child: Text(
                      totalChat,
                      style: TextStyle(color: bgwhite),
                    )),
                  )
                : call
                    ? typeCall
                        ? Icon(Icons.call, color: secodaryGreen,)
                        : Icon(Icons.videocam, color: secodaryGreen,)
                    : Text(
                        time,
                        style: subtitleHeader,
                      ),
          ],
        ),
      ],
    );
  }
}
