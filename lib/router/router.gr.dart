// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:deeplinker/feature/author_details/author_details_page.dart'
    as _i1;
import 'package:deeplinker/feature/authors_list/authors_list_page.dart' as _i2;
import 'package:deeplinker/feature/authors_list/authors_shell_page.dart' as _i3;
import 'package:deeplinker/feature/book_details/book_details_page.dart' as _i4;
import 'package:deeplinker/feature/books_list/books_list_page.dart' as _i5;
import 'package:deeplinker/feature/books_list/books_shell_page.dart' as _i6;
import 'package:deeplinker/feature/dashboard/dashboard_page.dart' as _i7;
import 'package:deeplinker/feature/login/login_page.dart' as _i8;
import 'package:deeplinker/feature/profile/profile_page.dart' as _i9;
import 'package:deeplinker/model/author.dart' as _i12;
import 'package:deeplinker/model/book.dart' as _i13;
import 'package:flutter/material.dart' as _i11;

/// generated route for
/// [_i1.AuthorDetailsPage]
class AuthorDetailsRoute extends _i10.PageRouteInfo<AuthorDetailsRouteArgs> {
  AuthorDetailsRoute({
    _i11.Key? key,
    required _i12.Author author,
    required int authorId,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          AuthorDetailsRoute.name,
          args: AuthorDetailsRouteArgs(
            key: key,
            author: author,
            authorId: authorId,
          ),
          rawPathParams: {'id': authorId},
          initialChildren: children,
        );

  static const String name = 'AuthorDetailsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AuthorDetailsRouteArgs>();
      return _i1.AuthorDetailsPage(
        key: args.key,
        author: args.author,
        authorId: args.authorId,
      );
    },
  );
}

class AuthorDetailsRouteArgs {
  const AuthorDetailsRouteArgs({
    this.key,
    required this.author,
    required this.authorId,
  });

  final _i11.Key? key;

  final _i12.Author author;

  final int authorId;

  @override
  String toString() {
    return 'AuthorDetailsRouteArgs{key: $key, author: $author, authorId: $authorId}';
  }
}

/// generated route for
/// [_i2.AuthorsListPage]
class AuthorsListRoute extends _i10.PageRouteInfo<void> {
  const AuthorsListRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AuthorsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthorsListRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i2.AuthorsListPage();
    },
  );
}

/// generated route for
/// [_i3.AuthorsShellPage]
class AuthorsShellRoute extends _i10.PageRouteInfo<void> {
  const AuthorsShellRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AuthorsShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthorsShellRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.AuthorsShellPage();
    },
  );
}

/// generated route for
/// [_i4.BookDetailsPage]
class BookDetailsRoute extends _i10.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute({
    _i11.Key? key,
    required _i13.Book book,
    required int bookId,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          BookDetailsRoute.name,
          args: BookDetailsRouteArgs(
            key: key,
            book: book,
            bookId: bookId,
          ),
          rawPathParams: {'id': bookId},
          initialChildren: children,
        );

  static const String name = 'BookDetailsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookDetailsRouteArgs>();
      return _i4.BookDetailsPage(
        key: args.key,
        book: args.book,
        bookId: args.bookId,
      );
    },
  );
}

class BookDetailsRouteArgs {
  const BookDetailsRouteArgs({
    this.key,
    required this.book,
    required this.bookId,
  });

  final _i11.Key? key;

  final _i13.Book book;

  final int bookId;

  @override
  String toString() {
    return 'BookDetailsRouteArgs{key: $key, book: $book, bookId: $bookId}';
  }
}

/// generated route for
/// [_i5.BooksListPage]
class BooksListRoute extends _i10.PageRouteInfo<void> {
  const BooksListRoute({List<_i10.PageRouteInfo>? children})
      : super(
          BooksListRoute.name,
          initialChildren: children,
        );

  static const String name = 'BooksListRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i5.BooksListPage();
    },
  );
}

/// generated route for
/// [_i6.BooksShellPage]
class BooksShellRoute extends _i10.PageRouteInfo<void> {
  const BooksShellRoute({List<_i10.PageRouteInfo>? children})
      : super(
          BooksShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'BooksShellRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i6.BooksShellPage();
    },
  );
}

/// generated route for
/// [_i7.DashboardPage]
class DashboardRoute extends _i10.PageRouteInfo<void> {
  const DashboardRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i7.DashboardPage();
    },
  );
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i8.LoginPage();
    },
  );
}

/// generated route for
/// [_i9.ProfilePage]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i9.ProfilePage();
    },
  );
}
