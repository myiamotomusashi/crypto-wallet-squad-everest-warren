import 'l10n.dart';

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get language => 'English';

  @override
  String get titleWalletPage => 'Crypto Assets';

  @override
  String get subtitleWalletPage => 'Total value of cryptocurrencies.';

  @override
  String get firstIconTextBottomNavBar => 'Portfolio';

  @override
  String get secondIconTextBottomNavBar => 'Transactions';
}
