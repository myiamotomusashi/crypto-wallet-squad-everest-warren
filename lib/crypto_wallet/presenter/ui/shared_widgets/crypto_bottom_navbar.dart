import 'package:cryptowallet/l10n/l10n.dart';
import 'package:flutter/material.dart';

class CryptoBottomNavbar extends StatelessWidget {
  const CryptoBottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      elevation: 10,
      selectedItemColor: const Color.fromRGBO(224, 43, 87, 1),
      items: [
        BottomNavigationBarItem(
          icon: const ImageIcon(
            AssetImage('assets/icons/warrenIcon.png'),
          ),
          label: L10n.of(context)!.firstIconTextBottomNavBar,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.currency_exchange),
          label: L10n.of(context)!.secondIconTextBottomNavBar,
        ),
      ],
    );
  }
}
