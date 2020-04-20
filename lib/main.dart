import 'package:flutter/material.dart';
import 'quote.dart';
import 'QuoteCard.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author:'Oscar Wilde',text:'To live is the rarest thing in the world. Most people exist that is all.'),
    Quote(author:'Oscar Wilde',text:'Be yourself, everyone else is already taken'),
    Quote(author:'Oscar Wilde',text:'I have nothing to declare except my genius'),
    Quote(author:'Oscar Wilde',text:'The truth is rarely pure and never simple'),
    Quote(author:'Mark Twain',text:'To suceed in life, you need two things : ignorance and confidence'),
    Quote(author:'Michael Jordan',text:'The key to success is failure'),
    Quote(author:'Mark Twain',text: 'Name greatest of all inventors. Accident.')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote,)).toList(),
      ),
    );
  }
}

