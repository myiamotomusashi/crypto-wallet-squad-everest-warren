import 'package:cryptowallet/l10n/l10n.dart';
import 'package:flutter/material.dart';

class CryptoBottomNavbar extends StatelessWidget {
  const CryptoBottomNavbar({
    Key? key,
    required this.onTap,
    required this.onPressed,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;
  final Function()? onTap;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      elevation: 10,
      selectedItemColor: const Color.fromRGBO(224, 43, 87, 1),
      items: [
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: onTap,
            child: const ImageIcon(
              AssetImage('assets/icons/warrenIcon.png'),
            ),
          ),
          label: L10n.of(context)!.firstIconTextBottomNavBar,
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.currency_exchange),
          ),
          label: L10n.of(context)!.secondIconTextBottomNavBar,
        ),
      ],
    );
  }
}
