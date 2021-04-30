// import 'price_screen.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

import 'package:crypto_font_icons/crypto_font_icon_data.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NGN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

Iterable cryptoIconName = {
  'Bitcoin',
  'Ethereum',
  'Litecoin',
  'Dash',
  'DogeCoin',
  'Audiocoin',
  'Aeon',
  'Anoncoin',
  'Ador',
  'Auroracoin',
  'BitBay',
  'Bytecoin',
  'Breakout',
  'Breakout Stake',
  'BTC18',
  'BTC19',
  'BTC20',
  'BTC21',
  'BTC22',
  'BTC23',
  'BTC24',
  'BTC25',
  'BTC26',
  'BTC27',
  'BTC28',
  'BTC29',
  'BTC30',
  'BTC31',
  'BTC32',
  'BTC33',
  'BTC34',
  'BTC35',
};

const Iterable<CryptoFontIconData> cryptoIconList = [
  CryptoFontIcons.BTC,
  CryptoFontIcons.ETH,
  CryptoFontIcons.LTC,
  CryptoFontIcons.DASH,
  CryptoFontIcons.DOGE,
  CryptoFontIcons.ADC,
  CryptoFontIcons.AEON,
  CryptoFontIcons.ANC,
  CryptoFontIcons.ARDR,
  CryptoFontIcons.AUR,
  CryptoFontIcons.BAY,
  CryptoFontIcons.BCN,
  CryptoFontIcons.BRK,
  CryptoFontIcons.BRX,
  CryptoFontIcons.BSD,
  CryptoFontIcons.BTA,
  CryptoFontIcons.BTCD,
  CryptoFontIcons.BTS,
  CryptoFontIcons.CLAM,
  CryptoFontIcons.CLOAK,
  CryptoFontIcons.DCR,
  CryptoFontIcons.DGB,
  CryptoFontIcons.DGX,
  CryptoFontIcons.DMD,
  CryptoFontIcons.EMC,
  CryptoFontIcons.ERC,
  CryptoFontIcons.ETC,
  CryptoFontIcons.FCT,
  CryptoFontIcons.FLO,
  CryptoFontIcons.FRK,
  CryptoFontIcons.FTC,
  CryptoFontIcons.GAME,
  CryptoFontIcons.GLD,
  CryptoFontIcons.GNT,
  CryptoFontIcons.GRC,
  CryptoFontIcons.HEAT,
  CryptoFontIcons.ICN,
  CryptoFontIcons.INCNT,
  CryptoFontIcons.IOC,
  CryptoFontIcons.KMD,
  CryptoFontIcons.KOBO,
  CryptoFontIcons.KORE,
  CryptoFontIcons.LBC,
  CryptoFontIcons.LDOGE,
  CryptoFontIcons.LSK,
  CryptoFontIcons.LTC,
  CryptoFontIcons.MAID,
  CryptoFontIcons.MINT,
  CryptoFontIcons.MONA,
  CryptoFontIcons.MUE,
  CryptoFontIcons.NEOS,
  CryptoFontIcons.NLG,
  CryptoFontIcons.NMC,
  CryptoFontIcons.NOTE,
  CryptoFontIcons.NUC,
  CryptoFontIcons.NXT,
  CryptoFontIcons.OK,
  CryptoFontIcons.OMNI,
  CryptoFontIcons.PIVX,
  CryptoFontIcons.POT,
  CryptoFontIcons.PPC,
  CryptoFontIcons.QRK,
  CryptoFontIcons.RBY,
  CryptoFontIcons.RDD,
  CryptoFontIcons.REP,
  CryptoFontIcons.RISE,
  CryptoFontIcons.SJCX,
  CryptoFontIcons.SLS,
  CryptoFontIcons.STEEM,
  CryptoFontIcons.STRAT,
  CryptoFontIcons.SYS,
  CryptoFontIcons.TRIG,
  CryptoFontIcons.UBQ,
  CryptoFontIcons.UNITY,
  CryptoFontIcons.USDT,
  CryptoFontIcons.VRC,
  CryptoFontIcons.VTC,
  CryptoFontIcons.WAVES,
  CryptoFontIcons.XCP,
  CryptoFontIcons.XEM,
  CryptoFontIcons.XMR,
  CryptoFontIcons.XRP,
  CryptoFontIcons.ZEC,
];

String chosenCrypto = 'BTC';

const apiKey = '7EA9C410-5140-405D-81C3-5D24336B58B9';
const baseURL = 'https://rest.coinapi.io/v1/exchangerate';
String chosenCurrency = 'USD';

// class CoinData {
//   Future getCoinData() async {
//     String url = '$baseURL/$chosenCrypto/$chosenCurrency?apikey=$apiKey';
//
//     // String cryptoCurrency;
//     // String purchasingCurrency;
//
//     int cryptoCurrencyPrice;
//     http.Response response = await http.get(url);
//     if (response.statusCode == 200) {
//       String data = response.body;
//       var decodeData = jsonDecode(data);
//
//       // cryptoCurrency = decodeData['asset_id_base'];
//       // purchasingCurrency = decodeData['asset_id_quote'];
//
//       double cryptoCurrencyPriceDouble = decodeData['rate'];
//       cryptoCurrencyPrice = cryptoCurrencyPriceDouble.toInt();
//
//       // *********** printing data **************
//       // print(cryptoCurrency);
//       // print(purchasingCurrency);
//       // print(cryptoCurrencyPrice);
//       return cryptoCurrencyPrice;
//     } else {
//       print('Error, Status Code: ${response.statusCode}');
//     }
//   }
// }
