import 'package:chat_app/config/Palette.dart';
import 'package:chat_app/config/Styles.dart';
import 'package:chat_app/widgets/ChatRowWidget.dart';
import 'package:chat_app/widgets/NavigationPillWidget.dart';
import 'package:flutter/material.dart';

class ConversationBottomSheet extends StatefulWidget {
 

  @override
  _ConversationBottomSheetState createState() => _ConversationBottomSheetState();

  const ConversationBottomSheet();
}

class _ConversationBottomSheetState extends State<ConversationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            NavigationPillWidget(),
            Center(
              child: Text('Messages', style: Styles.textLight),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 5,
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(left: 75, right: 20),
                child: Divider(
                  color: Palette.accentColor,
                ),
              ),
              itemBuilder: (context, index) {
                return ChatRowWidget();
              },
            )
          ],
        ),
      ),
    );
  }
}