import 'package:auto_route/auto_route.dart';
import 'package:deeplinker/model/author.dart';
import 'package:deeplinker/router/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthorsListPage extends StatelessWidget {
  const AuthorsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: authorsMocks.length,
        itemBuilder: (context, index) {
          final author = authorsMocks[index];
          return ListTile(
            title: Text(author.name),
            subtitle: Text(
              author.bio ?? '',
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () {
              context.router.push(
                AuthorDetailsRoute(
                  authorId: author.id,
                  author: author,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
