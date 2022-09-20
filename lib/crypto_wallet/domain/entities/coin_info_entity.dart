class CoinInfoEntity {
  String coinIcon;
  String coinName;
  String coinAbbreviatedName;
  int coinCurrencyValue;
  int fractionalCurrency;
  int walletAmountCurrency;
  int? actualPrice;
  Map<String, double>? dailyVariation;
  Map<String, double>? graphicVariation;

  CoinInfoEntity({
    required this.coinIcon,
    required this.coinName,
    required this.coinAbbreviatedName,
    required this.coinCurrencyValue,
    required this.fractionalCurrency,
    required this.walletAmountCurrency,
    this.actualPrice,
    this.graphicVariation,
  });
}
