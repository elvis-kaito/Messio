import 'package:flutter/material.dart';
import 'package:messio/widgets/ChatAppBar.dart';
import 'package:messio/widgets/ChatListWidget.dart';
import 'package:messio/widgets/InputWidget.dart';

class ConversationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ChatAppBar(), // custom app bar for chat screen
        body: Stack(children: <Widget>[
          Column(
            children: <Widget>[
              ChatListWidget(), // chat list
              InputWidget() // input widget
            ],
          )
        ],),
      ),
    );
  }
}