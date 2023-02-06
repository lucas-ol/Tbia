// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$newsAtom = Atom(name: 'HomeStoreBase.news', context: context);

  @override
  ObservableList<MainNewsItem> get news {
    _$newsAtom.reportRead();
    return super.news;
  }

  @override
  set news(ObservableList<MainNewsItem> value) {
    _$newsAtom.reportWrite(value, super.news, () {
      super.news = value;
    });
  }

  late final _$isInloadingAtom =
      Atom(name: 'HomeStoreBase.isInloading', context: context);

  @override
  bool get isInloading {
    _$isInloadingAtom.reportRead();
    return super.isInloading;
  }

  @override
  set isInloading(bool value) {
    _$isInloadingAtom.reportWrite(value, super.isInloading, () {
      super.isInloading = value;
    });
  }

  late final _$searchNewsAsyncAction =
      AsyncAction('HomeStoreBase.searchNews', context: context);

  @override
  Future<dynamic> searchNews() {
    return _$searchNewsAsyncAction.run(() => super.searchNews());
  }

  @override
  String toString() {
    return '''
news: ${news},
isInloading: ${isInloading}
    ''';
  }
}
