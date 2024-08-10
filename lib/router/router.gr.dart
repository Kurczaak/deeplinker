// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:deeplinker/feature/book_details/book_details_page.dart' as _i1;
import 'package:deeplinker/feature/books_list/book_list_shell_page.dart' as _i2;
import 'package:deeplinker/feature/books_list/books_list_page.dart' as _i3;
import 'package:deeplinker/feature/dashboard/dashboard_page.dart' as _i4;
import 'package:deeplinker/model/book.dart' as _i7;
import 'package:flutter/material.dart' as _i6;

/// generated route for
/// [_i1.BookDetailsPage]
class BookDetailsRoute extends _i5.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute({
    _i6.Key? key,
    required _i7.Book book,
    required int bookId,
    List<_i5.PageRouteInfo>? children,
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

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookDetailsRouteArgs>();
      return _i1.BookDetailsPage(
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

  final _i6.Key? key;

  final _i7.Book book;

  final int bookId;

  @override
  String toString() {
    return 'BookDetailsRouteArgs{key: $key, book: $book, bookId: $bookId}';
  }
}

/// generated route for
/// [_i2.BookListShellPage]
class BookListShellRoute extends _i5.PageRouteInfo<void> {
  const BookListShellRoute({List<_i5.PageRouteInfo>? children})
      : super(
          BookListShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookListShellRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.BookListShellPage();
    },
  );
}

/// generated route for
/// [_i3.BooksListPage]
class BooksListRoute extends _i5.PageRouteInfo<void> {
  const BooksListRoute({List<_i5.PageRouteInfo>? children})
      : super(
          BooksListRoute.name,
          initialChildren: children,
        );

  static const String name = 'BooksListRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.BooksListPage();
    },
  );
}

/// generated route for
/// [_i4.DashboardPage]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.DashboardPage();
    },
  );
}
