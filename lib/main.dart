import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));


class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: "Kefas", text: 'iseng sadja 1'),
    Quote(author: "Bagas", text: 'hehehehe 2'),
    Quote(author: "Tio", text: 'mantap gan 3'),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes apaandah'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent[400],
      ),
      body: Column(
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
      ),

    );
  }
}
