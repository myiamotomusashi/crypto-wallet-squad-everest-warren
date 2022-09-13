import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';
import '../../shared_widgets/hide_show_button.dart';

class TitleWalletPage extends StatelessWidget {
  const TitleWalletPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Ativos em Cripto',
          style: titleTextStyle,
        ),
        HideShowButton(),
      ],
    );
  }
}
