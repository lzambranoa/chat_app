import 'package:chat_app/config/Palette.dart';
import 'package:chat_app/widgets/ChatAppBar.dart';
import 'package:chat_app/widgets/ChatListWidget.dart';
import 'package:chat_app/widgets/ConversationBottomSheet.dart';
import 'package:chat_app/widgets/InputWidget.dart';
import 'package:flutter/material.dart';


class ConversationPage extends StatefulWidget {
  

  @override
  _ConversationPageState createState() => _ConversationPageState();

  const ConversationPage();
}

class _ConversationPageState extends State<ConversationPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(flex: 2, child: ChatAppBar()),
        Expanded(
          flex: 11,
          child: Container(
            color: Palette.otherMessageBackgroundColor,
            child: ChatListWidget(),
          ),
        )
      ],
    );
  }
}