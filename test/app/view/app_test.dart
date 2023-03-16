import 'package:blog_app/app/app.dart';
import 'package:blog_app/counter/counter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const ProviderScope(child: App()));
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
