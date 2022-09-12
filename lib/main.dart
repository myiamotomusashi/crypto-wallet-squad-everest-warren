import 'package:cryptowallet/app/presenter/ui/wallet/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:cryptowallet/app/core/routes/app_routes.dart';

void main() => runApp(
      const ProviderScope(
        child: Main(),
      ),
    );

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WalletPage.walletRoute,
      routes: appRoutes,
    );
  }
}
