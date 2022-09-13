import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../riverpod/providers.dart';

class CryptoListTile extends ConsumerWidget {
  const CryptoListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.coinAbbreviation,
    required this.cryptoRealAmount,
    required this.cryptoAmount,
    required this.cryptoIcon,
    required this.onTap,
  }) : super(key: key);

  final double cryptoRealAmount;
  final double cryptoAmount;
  final String cryptoIcon;
  final Text title;
  final Text subtitle;
  final String coinAbbreviation;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      elevation: 10,
      child: ListTile(
        leading: CircleAvatar(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cryptoIcon),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        title: title,
        subtitle: subtitle,
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Visibility(
                  replacement: const Text(
                    '*********',
                  ),
                  visible: ref.watch(visibilityProvider.state).state,
                  child: Text(
                    NumberFormat.simpleCurrency(
                            locale: 'pt-BR', decimalDigits: 2)
                        .format(cryptoRealAmount),
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Color.fromRGBO(47, 46, 50, 1),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: onTap,
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Visibility(
              replacement: Text(
                hideCryptoAmount + coinAbbreviation,
              ),
              visible: ref.watch(visibilityProvider.state).state,
              child: Text(
                "$cryptoAmount BTC",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
