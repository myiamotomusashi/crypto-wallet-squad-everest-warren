import 'package:cryptowallet/l10n/l10n.dart';
import 'package:flutter/material.dart';

class CryptoBottomNavbar extends StatelessWidget {
  const CryptoBottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      elevation: 10,
      selectedItemColor: const Color.fromRGBO(224, 43, 87, 1),
      items: [
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {},
            child: const ImageIcon(
              AssetImage('assets/icons/warrenIcon.png'),
            ),
          ),
          label: L10n.of(context)!.firstIconTextBottomNavBar,
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.currency_exchange),
          ),
          label: L10n.of(context)!.secondIconTextBottomNavBar,
        ),
      ],
    );
  }
}
