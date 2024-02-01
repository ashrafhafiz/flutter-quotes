import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _MainState();
}

class _MainState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wild',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Ashraf Hafiz',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wild',
        text: 'The truth is rarely pure and never simple'),
  ];

  // Widget quoteTemplate(q) {
  //   return QuoteCard(quote: q);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((q) => QuoteCard(
                  quote: q,
                  delete: () {
                    setState(() {
                      quotes.remove(q);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
