// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $UserSearchStore = BindInject(
  (i) => UserSearchStore(i<SearchByUserLogin>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserSearchStore on _UserSearchStore, Store {
  final _$searchUserLoginAtom = Atom(name: '_UserSearchStore.searchUserLogin');

  @override
  String get searchUserLogin {
    _$searchUserLoginAtom.reportRead();
    return super.searchUserLogin;
  }

  @override
  set searchUserLogin(String value) {
    _$searchUserLoginAtom.reportWrite(value, super.searchUserLogin, () {
      super.searchUserLogin = value;
    });
  }

  final _$showUserDetailsAtom = Atom(name: '_UserSearchStore.showUserDetails');

  @override
  bool get showUserDetails {
    _$showUserDetailsAtom.reportRead();
    return super.showUserDetails;
  }

  @override
  set showUserDetails(bool value) {
    _$showUserDetailsAtom.reportWrite(value, super.showUserDetails, () {
      super.showUserDetails = value;
    });
  }

  final _$stateAtom = Atom(name: '_UserSearchStore.state');

  @override
  UserSearchState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(UserSearchState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$_UserSearchStoreActionController =
      ActionController(name: '_UserSearchStore');

  @override
  dynamic setSearchText(String value) {
    final _$actionInfo = _$_UserSearchStoreActionController.startAction(
        name: '_UserSearchStore.setSearchText');
    try {
      return super.setSearchText(value);
    } finally {
      _$_UserSearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setState(UserSearchState value) {
    final _$actionInfo = _$_UserSearchStoreActionController.startAction(
        name: '_UserSearchStore.setState');
    try {
      return super.setState(value);
    } finally {
      _$_UserSearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showDetails() {
    final _$actionInfo = _$_UserSearchStoreActionController.startAction(
        name: '_UserSearchStore.showDetails');
    try {
      return super.showDetails();
    } finally {
      _$_UserSearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
searchUserLogin: ${searchUserLogin},
showUserDetails: ${showUserDetails},
state: ${state}
    ''';
  }
}