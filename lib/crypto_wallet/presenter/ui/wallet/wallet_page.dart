import 'package:cryptowallet/crypto_wallet/presenter/ui/transactions/transactions_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../shared_widgets/crypto_bottom_navbar.dart';

import 'widgets/crypto_list_view.dart';
import 'widgets/subtitle_wallet_page.dart';
import 'widgets/title_wallet_page.dart';
import 'widgets/total_currency_wallet.dart';

class WalletPage extends ConsumerWidget {
  const WalletPage({Key? key}) : super(key: key);

  static const walletRoute = '/wallet-page';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double btcAmount = 0.65;
    double ethAmount = 0.94;
    double ltcAmount = 0.82;

    double btcRealAmount = 6557.01;
    double ethRealAmount = 7996.01;
    double ltcRealAmount = 245.01;

    double cryptoWalletAmount = btcRealAmount + ethRealAmount + ltcRealAmount;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15,
            left: 21,
            right: 40,
          ),
          child: Column(
            children: [
              const TitleWalletPage(),
              TotalCurrencyWallet(totalCryptoWalletAmount: cryptoWalletAmount),
              const SubtitleWalletPage(),
              const SizedBox(height: 60),
              CryptoListView(
                btcRealAmount: btcRealAmount,
                btcAmount: btcAmount,
                ethRealAmount: ethRealAmount,
                ethAmount: ethAmount,
                ltcRealAmount: ltcRealAmount,
                ltcAmount: ltcAmount,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CryptoBottomNavbar(
        onTap: () {},
        onPressed: () {
          Navigator.of(context)
              .pushReplacementNamed(TransactionsPage.transactionsRoute);
        },
        currentIndex: 0,
      ),
    );
  }
}
