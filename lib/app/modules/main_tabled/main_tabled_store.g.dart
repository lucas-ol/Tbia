// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_tabled_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainTabledStore on MainTabledStoreBase, Store {
  late final _$currentIndexAtom =
      Atom(name: 'MainTabledStoreBase.currentIndex', context: context);

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  late final _$MainTabledStoreBaseActionController =
      ActionController(name: 'MainTabledStoreBase', context: context);

  @override
  void changePageIndex(int index) {
    final _$actionInfo = _$MainTabledStoreBaseActionController.startAction(
        name: 'MainTabledStoreBase.changePageIndex');
    try {
      return super.changePageIndex(index);
    } finally {
      _$MainTabledStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<dynamic> pushPage(
      {required TabbledPages page, String route = "/", dynamic args}) {
    final _$actionInfo = _$MainTabledStoreBaseActionController.startAction(
        name: 'MainTabledStoreBase.pushPage');
    try {
      return super.pushPage(page: page, route: route, args: args);
    } finally {
      _$MainTabledStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void navigatePage(
      {required TabbledPages page, String route = "/", dynamic args}) {
    final _$actionInfo = _$MainTabledStoreBaseActionController.startAction(
        name: 'MainTabledStoreBase.navigatePage');
    try {
      return super.navigatePage(page: page, route: route, args: args);
    } finally {
      _$MainTabledStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex}
    ''';
  }
}
