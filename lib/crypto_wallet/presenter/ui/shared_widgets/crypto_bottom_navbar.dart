import 'package:cryptowallet/l10n/l10n.dart';
import 'package:flutter/material.dart';

import '../transactions/transactions_page.dart';
import '../wallet/wallet_page.dart';

class CryptoBottomNavbar extends StatelessWidget {
  const CryptoBottomNavbar({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      key: const Key('BottomNavBar'),
      currentIndex: currentIndex,
      elevation: 10,
      selectedItemColor: const Color.fromRGBO(224, 43, 87, 1),
      items: [
        BottomNavigationBarItem(
          icon: InkWell(
            key: const Key('firstIconBottomNavBar'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(WalletPage.walletRoute);
            },
            child: const ImageIcon(
              AssetImage('assets/icons/warrenIcon.png'),
            ),
          ),
          label: L10n.of(context)?.firstIconTextBottomNavBar,
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            key: const Key('secondIconBottomNavBar'),
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed(TransactionsPage.transactionsRoute);
            },
            icon: const Icon(Icons.currency_exchange),
          ),
          label: L10n.of(context)?.secondIconTextBottomNavBar,
        ),
      ],
    );
  }
}
