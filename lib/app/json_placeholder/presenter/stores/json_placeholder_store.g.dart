// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_placeholder_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$JsonPlaceholderStore on _JsonPlaceholderStoreBase, Store {
  late final _$jsonPlaceholderListAtom =
      Atom(name: '_JsonPlaceholderStoreBase.jsonPlaceholderList', context: context);

  @override
  List<JsonPlaceholderModel> get jsonPlaceholderList {
    _$jsonPlaceholderListAtom.reportRead();
    return super.jsonPlaceholderList;
  }

  @override
  set jsonPlaceholderList(List<JsonPlaceholderModel> value) {
    _$jsonPlaceholderListAtom.reportWrite(value, super.jsonPlaceholderList, () {
      super.jsonPlaceholderList = value;
    });
  }

  late final _$getJsonPlaceholderAsyncAction =
      AsyncAction('_JsonPlaceholderStoreBase.getJsonPlaceholder', context: context);

  @override
  Future<void> getJsonPlaceholder() {
    return _$getJsonPlaceholderAsyncAction.run(() => super.getJsonPlaceholder());
  }

  @override
  String toString() {
    return '''
jsonPlaceholderList: ${jsonPlaceholderList}
    ''';
  }
}
