import 'package:flutter/material.dart';

import '../../../repositories/crypto_coins/models/crypto_coin.dart';

class CryptoCoinTile extends StatelessWidget {
  const new({super.key, required this.coin});

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(coin.imageUrl, width: 40, height: 40),
      trailing: const Icon(Icons.arrow_forward_ios),

      title: Text(coin.name, style: Theme.of(context).textTheme.bodyMedium),
      subtitle: Text(
        '${coin.priceInUSD}\$',
        style: Theme.of(context).textTheme.labelSmall,
      ),

      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coin);
      },
    );
  }
}
