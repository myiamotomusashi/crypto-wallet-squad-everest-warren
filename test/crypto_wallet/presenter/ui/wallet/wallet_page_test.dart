import 'package:cryptowallet/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  testWidgets('Visible button smoke test', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: Main(),
      ),
    );

    expect(find.byKey(const Key('ShowIconButton')), findsOneWidget);

    await tester.tap(find.byKey(const Key('ShowIconButton')));
    await tester.pump();

    expect(find.text('*********'), findsWidgets);
    expect(find.text('***** BTC'), findsOneWidget);
    expect(find.text('***** ETH'), findsOneWidget);
    expect(find.text('***** LTC'), findsOneWidget);
  });
}
