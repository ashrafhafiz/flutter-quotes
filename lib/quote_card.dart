import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber[50],
      margin: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 10.0),
            TextButton.icon(
              onPressed: delete,
              label: const Text('Delete'),
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
