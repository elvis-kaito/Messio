import 'package:flutter/material.dart';

import 'ConversationPage.dart';

class ConversationPageList extends StatefulWidget {
  @override
  _ConversationPageList createState() => _ConversationPageList();
}

class _ConversationPageList extends State<ConversationPageList> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        ConversationPage(),
        ConversationPage(),
        ConversationPage(),
      ],
    );
  }
}
