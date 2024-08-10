import 'package:auto_route/auto_route.dart';
import 'package:deeplinker/model/book.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({
    super.key,
    required this.book,
    @PathParam('id') required this.bookId,
  });

  final int bookId;
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Details'),
      ),
      body: _BookDetailsBody(book: book),
    );
  }
}

class _BookDetailsBody extends StatelessWidget {
  const _BookDetailsBody({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        book.title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      Text(
        book.author,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      Text(
        book.description,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    ]);
  }
}
