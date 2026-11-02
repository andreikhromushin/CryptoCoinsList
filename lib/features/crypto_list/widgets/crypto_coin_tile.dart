import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoCoinTile extends StatelessWidget {
  const new({super.key, required this.coinName});

  final String coinName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        'assets/svg/bitcoin_logo.svg',
        height: 30,
        width: 30,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),

      title: Text(coinName, style: Theme.of(context).textTheme.bodyMedium),
      subtitle: Text('20000\$', style: Theme.of(context).textTheme.labelSmall),

      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coinName);
      },
    );
  }
}
