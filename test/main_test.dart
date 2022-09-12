import 'package:cryptowallet/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  testWidgets('Verifying main.dart file configuration', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: Main(),
      ),
    );
  });
}
