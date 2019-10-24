

import 'package:chat_app/pages/ConversationPage.dart';
import 'package:chat_app/widgets/ChatAppBar.dart';
import 'package:chat_app/widgets/ChatListWidget.dart';
import 'package:chat_app/widgets/InputWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  const MaterialApp app = MaterialApp(
    home: Scaffold(
      body:  ConversationPage(),
    ),
  );

  testWidgets('ConversationPage UI Test', (WidgetTester tester) async {
    //Build our app and trigger a frame
    await tester.pumpWidget(app);

    expect(find.byType(ChatAppBar), findsOneWidget);
    expect(find.byType(InputWidget), findsOneWidget);
    expect(find.byType(ChatListWidget), findsOneWidget);
  });
}