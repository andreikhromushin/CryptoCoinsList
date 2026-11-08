import 'package:dio/dio.dart';

import 'models/crypto_coin.dart';

class CryptoCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await Dio().get(
      'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&symbols=btc,eth,usdt,gram,sol,bnb,xrp,doge,sui',
    );
    final data = response.data as List<dynamic>;
    final cryptoCoinsList = data.map((e) {
      final coin = e as Map<String, dynamic>;
      return CryptoCoin(
        name: (coin['symbol'] as String).toUpperCase(),
        priceInUSD: (coin['current_price'] as num).toDouble(),
        imageUrl: (coin['image'] as String).replaceFirst(
          'coin-images.coingecko.com',
          'assets.coingecko.com',
        ),
      );
    }).toList();

    return cryptoCoinsList;
  }
}
