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
    return SafeArea(
       child: Scaffold(
         key: _scaffoldKey,
         appBar: ChatAppBar(), 
         body: Container(
           color: Palette.otherMessageBackgroundColor,
           child: Stack(
             children: <Widget>[
               ChatListWidget(),
               GestureDetector(
                 child: InputWidget(),
                 onPanUpdate: (details) {
                   if (details.delta.dy < 0) {
                     _scaffoldKey.currentState.showBottomSheet<Null>((BuildContext context) {
                       return ConversationBottomSheet();
                     });
                   }
                 },
               )
             ],
           ) ,
           
         ), //Barra de aplicaciones personalizada para la pantalla de chat
       ),
    );
  }
}