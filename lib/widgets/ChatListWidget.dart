import 'package:flutter/material.dart';
import 'package:messio/widgets/ChatItemWidget.dart';

class ChatListWidget extends StatelessWidget {
  final ScrollController listScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemBuilder: (context, index) => ChatItemWidget(index),
        padding: EdgeInsets.all(10),
        itemCount: 20,
        reverse: true,
        controller: listScrollController,
      ),
    );
  }
}