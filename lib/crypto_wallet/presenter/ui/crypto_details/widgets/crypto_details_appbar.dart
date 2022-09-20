import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';

class CryptoDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CryptoDetailsAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.grey),
      elevation: 1,
      title: const Text(
        'Detalhes',
        style: cryptoSubtitleStyle,
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 56);
}
