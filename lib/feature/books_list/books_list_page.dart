import 'package:auto_route/auto_route.dart';
import 'package:deeplinker/model/book.dart';
import 'package:deeplinker/router/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BooksListPage extends StatelessWidget {
  const BooksListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: booksMocks.length,
        itemBuilder: (context, index) {
          final book = booksMocks[index];
          return ListTile(
            title: Text(book.title),
            subtitle: Text(book.author.name),
            onTap: () {
              context.router.push(
                BookDetailsRoute(
                  bookId: book.id,
                  book: book,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
