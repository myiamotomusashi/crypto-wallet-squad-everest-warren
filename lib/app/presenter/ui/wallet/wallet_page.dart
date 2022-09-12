import 'package:cryptowallet/app/presenter/riverpod/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Ativos em Cripto',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      color: Color.fromRGBO(224, 43, 87, 1),
                    ),
                  ),
                  IconButton(
                    onPressed: () => ref.read(visibilityProvider.state).state =
                        !ref.read(visibilityProvider.state).state,
                    icon: const Icon(
                      Icons.remove_red_eye,
                      size: 32,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'R\$ ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      color: Color.fromRGBO(47, 46, 50, 1),
                    ),
                  ),
                  Visibility(
                    replacement: const Text(
                      '*********',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color: Color.fromRGBO(47, 46, 50, 1),
                      ),
                    ),
                    visible: ref.watch(visibilityProvider.state).state,
                    child: Text(
                      cryptoWalletAmount.toString(),
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color: Color.fromRGBO(47, 46, 50, 1),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    'Valor total de criptomoedas.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color.fromARGB(153, 47, 46, 50),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Material(
                      elevation: 10,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/icons/bitcoinIcon.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        title: const Text('BTC'),
                        subtitle: const Text('Bitcoin'),
                        trailing: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'R\$ ',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color.fromRGBO(47, 46, 50, 1),
                                  ),
                                ),
                                Visibility(
                                  replacement: const Text(
                                    '*********',
                                  ),
                                  visible:
                                      ref.watch(visibilityProvider.state).state,
                                  child: Text(
                                    btcRealAmount.toString(),
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
                                  onTap: () {},
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
                              replacement: const Text(
                                '***** BTC',
                              ),
                              visible:
                                  ref.watch(visibilityProvider.state).state,
                              child: Text(
                                "$btcAmount BTC",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Material(
                      elevation: 10,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/icons/ethereumIcon.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        title: const Text('ETH'),
                        subtitle: const Text('Ethereum'),
                        trailing: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'R\$ ',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color.fromRGBO(47, 46, 50, 1),
                                  ),
                                ),
                                Visibility(
                                  replacement: const Text(
                                    '*********',
                                  ),
                                  visible:
                                      ref.watch(visibilityProvider.state).state,
                                  child: Text(
                                    ethRealAmount.toString(),
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
                                  onTap: () {},
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
                              replacement: const Text(
                                '***** ETH',
                              ),
                              visible:
                                  ref.watch(visibilityProvider.state).state,
                              child: Text(
                                '$ethAmount ETH',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Material(
                      elevation: 10,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/icons/litecoinIcon.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        title: const Text('LTC'),
                        subtitle: const Text('Litecoin'),
                        trailing: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'R\$ ',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color.fromRGBO(47, 46, 50, 1),
                                  ),
                                ),
                                Visibility(
                                  replacement: const Text(
                                    '*********',
                                  ),
                                  visible:
                                      ref.watch(visibilityProvider.state).state,
                                  child: Text(
                                    ltcRealAmount.toString(),
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
                                  onTap: () {},
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
                              replacement: const Text(
                                '***** LTC',
                              ),
                              visible:
                                  ref.watch(visibilityProvider.state).state,
                              child: Text(
                                "$ltcAmount LTC",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        elevation: 10,
        selectedItemColor: const Color.fromRGBO(224, 43, 87, 1),
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/warrenIcon.png'),
            ),
            label: 'Porfólio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_exchange),
            label: 'Movimentações',
          ),
        ],
      ),
    );
  }
}
