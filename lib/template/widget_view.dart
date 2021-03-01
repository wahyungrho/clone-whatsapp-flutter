import 'package:flutter/material.dart';
import 'package:project_clone_whatsapp/template/theme.dart';

class WidgetView extends StatelessWidget {
  final Widget child;

  const WidgetView({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: primaryGreen,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height:  MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: bgwhite,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: child ?? SizedBox(),
        )
      ],
    );
  }
}
