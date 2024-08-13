// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:deeplinker/feature/author_details/author_details_page.dart'
    as _i2;
import 'package:deeplinker/feature/authors_list/authors_list_page.dart' as _i3;
import 'package:deeplinker/feature/authors_list/authors_shell_page.dart' as _i4;
import 'package:deeplinker/feature/book_details/book_details_page.dart' as _i5;
import 'package:deeplinker/feature/books_list/books_list_page.dart' as _i6;
import 'package:deeplinker/feature/books_list/books_shell_page.dart' as _i7;
import 'package:deeplinker/feature/dashboard/dashboard_page.dart' as _i8;
import 'package:deeplinker/feature/error/error_page.dart' as _i9;
import 'package:deeplinker/feature/profile/admin_profile_page.dart' as _i1;
import 'package:deeplinker/feature/profile/profile_page.dart' as _i10;
import 'package:deeplinker/feature/profile/profile_shell_page.dart' as _i11;
import 'package:flutter/material.dart' as _i13;

/// generated route for
/// [_i1.AdminProfilePage]
class AdminProfileRoute extends _i12.PageRouteInfo<void> {
  const AdminProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AdminProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminProfileRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i1.AdminProfilePage();
    },
  );
}

/// generated route for
/// [_i2.AuthorDetailsPage]
class AuthorDetailsRoute extends _i12.PageRouteInfo<AuthorDetailsRouteArgs> {
  AuthorDetailsRoute({
    _i13.Key? key,
    required int authorId,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AuthorDetailsRoute.name,
          args: AuthorDetailsRouteArgs(
            key: key,
            authorId: authorId,
          ),
          rawPathParams: {'id': authorId},
          initialChildren: children,
        );

  static const String name = 'AuthorDetailsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<AuthorDetailsRouteArgs>(
          orElse: () =>
              AuthorDetailsRouteArgs(authorId: pathParams.getInt('id')));
      return _i2.AuthorDetailsPage(
        key: args.key,
        authorId: args.authorId,
      );
    },
  );
}

class AuthorDetailsRouteArgs {
  const AuthorDetailsRouteArgs({
    this.key,
    required this.authorId,
  });

  final _i13.Key? key;

  final int authorId;

  @override
  String toString() {
    return 'AuthorDetailsRouteArgs{key: $key, authorId: $authorId}';
  }
}

/// generated route for
/// [_i3.AuthorsListPage]
class AuthorsListRoute extends _i12.PageRouteInfo<void> {
  const AuthorsListRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AuthorsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthorsListRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i3.AuthorsListPage();
    },
  );
}

/// generated route for
/// [_i4.AuthorsShellPage]
class AuthorsShellRoute extends _i12.PageRouteInfo<void> {
  const AuthorsShellRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AuthorsShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthorsShellRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i4.AuthorsShellPage();
    },
  );
}

/// generated route for
/// [_i5.BookDetailsPage]
class BookDetailsRoute extends _i12.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute({
    _i13.Key? key,
    required int bookId,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          BookDetailsRoute.name,
          args: BookDetailsRouteArgs(
            key: key,
            bookId: bookId,
          ),
          rawPathParams: {'id': bookId},
          initialChildren: children,
        );

  static const String name = 'BookDetailsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<BookDetailsRouteArgs>(
          orElse: () => BookDetailsRouteArgs(bookId: pathParams.getInt('id')));
      return _i5.BookDetailsPage(
        key: args.key,
        bookId: args.bookId,
      );
    },
  );
}

class BookDetailsRouteArgs {
  const BookDetailsRouteArgs({
    this.key,
    required this.bookId,
  });

  final _i13.Key? key;

  final int bookId;

  @override
  String toString() {
    return 'BookDetailsRouteArgs{key: $key, bookId: $bookId}';
  }
}

/// generated route for
/// [_i6.BooksListPage]
class BooksListRoute extends _i12.PageRouteInfo<void> {
  const BooksListRoute({List<_i12.PageRouteInfo>? children})
      : super(
          BooksListRoute.name,
          initialChildren: children,
        );

  static const String name = 'BooksListRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i6.BooksListPage();
    },
  );
}

/// generated route for
/// [_i7.BooksShellPage]
class BooksShellRoute extends _i12.PageRouteInfo<void> {
  const BooksShellRoute({List<_i12.PageRouteInfo>? children})
      : super(
          BooksShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'BooksShellRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i7.BooksShellPage();
    },
  );
}

/// generated route for
/// [_i8.DashboardPage]
class DashboardRoute extends _i12.PageRouteInfo<void> {
  const DashboardRoute({List<_i12.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i8.DashboardPage();
    },
  );
}

/// generated route for
/// [_i9.ErrorPage]
class ErrorRoute extends _i12.PageRouteInfo<void> {
  const ErrorRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ErrorRoute.name,
          initialChildren: children,
        );

  static const String name = 'ErrorRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i9.ErrorPage();
    },
  );
}

/// generated route for
/// [_i10.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i10.ProfilePage();
    },
  );
}

/// generated route for
/// [_i11.ProfileShellPage]
class ProfileShellRoute extends _i12.PageRouteInfo<void> {
  const ProfileShellRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileShellRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i11.ProfileShellPage();
    },
  );
}
