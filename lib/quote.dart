class Quote {
  String text;
  String author;

  // Quote({String text, String author}) {
  //   this.text = text;
  //   this.author = author;
  // }

  Quote({required this.text, required this.author});
}

Quote myQuote = Quote(text: 'This is the quote text.', author: 'Oscar Wild');
