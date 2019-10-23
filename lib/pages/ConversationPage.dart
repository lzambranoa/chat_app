import 'package:chat_app/widgets/ChatAppBar.dart';
import 'package:chat_app/widgets/ChatListWidget.dart';
import 'package:chat_app/widgets/InputWidget.dart';
import 'package:flutter/material.dart';


class ConversationPage extends StatefulWidget {
  

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
         appBar: ChatAppBar(), 
         body: Stack(
           children: <Widget>[
             Column(
               children: <Widget>[
                 ChatListWidget(),  //Lista de Chat
                 InputWidget()      // El widget de la entrada
               ],
             )
           ],
         ), //Barra de aplicaciones personalizada para la pantalla de chat
       ),
    );
  }
}