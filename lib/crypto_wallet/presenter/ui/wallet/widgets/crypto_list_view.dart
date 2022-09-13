import 'package:flutter/material.dart';

import '../../../../core/utils/images.dart';
import 'crypto_list_tile.dart';

class CryptoListView extends StatelessWidget {
  const CryptoListView({
    Key? key,
    required this.btcRealAmount,
    required this.btcAmount,
    required this.ethRealAmount,
    required this.ethAmount,
    required this.ltcRealAmount,
    required this.ltcAmount,
  }) : super(key: key);

  final double btcRealAmount;
  final double btcAmount;
  final double ethRealAmount;
  final double ethAmount;
  final double ltcRealAmount;
  final double ltcAmount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          CryptoListTile(
            onTap: () {},
            title: const Text('BTC'),
            subtitle: const Text('Bitcoin'),
            coinAbbreviation: ' BTC',
            cryptoIcon: bitcoinIcon,
            cryptoRealAmount: btcRealAmount,
            cryptoAmount: btcAmount,
          ),
          const SizedBox(
            height: 10,
          ),
          CryptoListTile(
            onTap: () {},
            title: const Text('ETH'),
            subtitle: const Text('Ethereum'),
            coinAbbreviation: ' ETH',
            cryptoIcon: ethereumIcon,
            cryptoRealAmount: ethRealAmount,
            cryptoAmount: ethAmount,
          ),
          const SizedBox(
            height: 10,
          ),
          CryptoListTile(
            onTap: () {},
            title: const Text('LTC'),
            subtitle: const Text('Litecoin'),
            coinAbbreviation: ' LTC',
            cryptoIcon: litecoinIcon,
            cryptoRealAmount: ltcRealAmount,
            cryptoAmount: ltcAmount,
          ),
        ],
      ),
    );
  }
}
