
import 'package:chat_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('ChatListWidget UI Test', (WidgetTester tester) async {

    await tester.pumpWidget(ChatApp());

    expect(find.byType(ListView), findsOneWidget);
  });
}