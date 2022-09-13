import 'l10n.dart';

/// The translations for Portuguese (`pt`).
class L10nPt extends L10n {
  L10nPt([String locale = 'pt']) : super(locale);

  @override
  String get language => 'Português Brasil';

  @override
  String get titleWalletPage => 'Ativos em Cripto';

  @override
  String get subtitleWalletPage => 'Valor total de criptomoedas.';

  @override
  String get firstIconTextBottomNavBar => 'Portfólio';

  @override
  String get secondIconTextBottomNavBar => 'Movimentações';
}
