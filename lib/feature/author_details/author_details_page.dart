import 'package:auto_route/auto_route.dart';
import 'package:deeplinker/model/author.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthorDetailsPage extends StatelessWidget {
  const AuthorDetailsPage({
    super.key,
    required this.author,
    @PathParam('id') required this.authorId,
  });

  final int authorId;
  final Author author;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Author Details'),
      ),
      body: _AuthorDetailsBody(author: author),
    );
  }
}

class _AuthorDetailsBody extends StatelessWidget {
  const _AuthorDetailsBody({super.key, required this.author});

  final Author author;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        author.name,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      if (author.bio != null)
        Text(
          author.bio!,
          style: Theme.of(context).textTheme.titleSmall,
        ),
    ]);
  }
}
