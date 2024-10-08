import 'package:auto_route/auto_route.dart';
import 'package:deeplinker/model/book.dart';
import 'package:deeplinker/router/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({
    super.key,
    @PathParam('id') required this.bookId,
  });

  final int bookId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Details'),
      ),
      body: _BookDetailsBody(
          book: booksMocks.firstWhere((book) => book.id == bookId)),
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
      TextButton(
        child: Text(
          book.author.name,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        onPressed: () => context.router.push(
          AuthorDetailsRoute(
            authorId: book.author.id,
          ),
        ),
      ),
      Text(
        book.description,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    ]);
  }
}
