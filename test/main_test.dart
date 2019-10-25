import 'package:chat_app/main.dart';
import 'package:chat_app/pages/ConversationPageSlide.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Main UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ChatApp());

    expect(find.byType(ConversationPageSlide),findsOneWidget);
  });
}