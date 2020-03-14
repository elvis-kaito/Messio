import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:messio/config/Palette.dart';

class ChatItemWidget extends StatelessWidget {
  var index;

  ChatItemWidget(this.index);

  @override
  Widget build(BuildContext context) {
    if (index % 2 == 0) {
      return Container(
        // this is a sent message
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Text(
                    'This is a sent message',
                    style: TextStyle(color: Palette.selfMessageColor),
                  ),
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  width: 200,
                  decoration: BoxDecoration(
                      color: Palette.selfMessageBackgroundColor,
                      borderRadius: BorderRadius.circular(8)),
                  margin: EdgeInsets.only(right: 10),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Text(
                    DateFormat('dd MMM kk:mm').format(
                        DateTime.fromMillisecondsSinceEpoch(
                            DateTime.now().millisecondsSinceEpoch)),
                    style: TextStyle(
                        color: Palette.greyColor,
                        fontSize: 12,
                        fontStyle: FontStyle.normal),
                  ),
                  margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
                )
              ],
            )
          ],
        ),
      );
    } else {
      // this is a received message
      return Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Text(
                    'This is a received message',
                    style: TextStyle(color: Palette.otherMessageColor),
                  ),
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  width: 200,
                  decoration: BoxDecoration(
                      color: Palette.otherMessageBackgroundColor,
                      borderRadius: BorderRadius.circular(8)),
                  margin: EdgeInsets.only(left: 10),
                )
              ],
            ),
            Container(
              child: Text(
                DateFormat('dd MMM kk:mm').format(
                    DateTime.fromMillisecondsSinceEpoch(
                        DateTime.now().millisecondsSinceEpoch)),
                style: TextStyle(
                    color: Palette.greyColor,
                    fontSize: 12,
                    fontStyle: FontStyle.normal),
              ),
              margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        margin: EdgeInsets.only(bottom: 10),
      );
    }
  }
}
