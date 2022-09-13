import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';

class SubtitleWalletPage extends StatelessWidget {
  const SubtitleWalletPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Valor total de criptomoedas.',
          textAlign: TextAlign.left,
          style: cryptoSubtitleStyle,
        ),
      ],
    );
  }
}
