 
import 'package:bloc_state/app/modules/start/views/home_view.dart';
import 'package:bloc_state/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const HomeView());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
