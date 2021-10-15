// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuracao_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ConfiguracaoStore = BindInject(
  (i) => ConfiguracaoStore(i<ReceberSalvarBDUsecasesImpl>()),
  isSingleton: false,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfiguracaoStore on _ConfiguracaoStoreBase, Store {
  final _$recDadosAsyncAction = AsyncAction('_ConfiguracaoStoreBase.recDados');

  @override
  Future<dynamic> recDados() {
    return _$recDadosAsyncAction.run(() => super.recDados());
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
