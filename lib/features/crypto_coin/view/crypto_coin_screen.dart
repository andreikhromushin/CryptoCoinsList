import 'package:flutter/material.dart';

class CryptoCoinsScreen extends StatefulWidget {
  const CryptoCoinsScreen({super.key});

  @override
  State<CryptoCoinsScreen> createState() => _CryptoCoinsScreenState();
}

class _CryptoCoinsScreenState extends State<CryptoCoinsScreen> {
  String? coinName;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is String, 'You must provide String args');
    coinName = args as String;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(coinName ?? '...')));
  }
}
