// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on AuthStoreBase, Store {
  late final _$emailContAtom =
      Atom(name: 'AuthStoreBase.emailCont', context: context);

  @override
  TextEditingController get emailCont {
    _$emailContAtom.reportRead();
    return super.emailCont;
  }

  @override
  set emailCont(TextEditingController value) {
    _$emailContAtom.reportWrite(value, super.emailCont, () {
      super.emailCont = value;
    });
  }

  late final _$passContAtom =
      Atom(name: 'AuthStoreBase.passCont', context: context);

  @override
  TextEditingController get passCont {
    _$passContAtom.reportRead();
    return super.passCont;
  }

  @override
  set passCont(TextEditingController value) {
    _$passContAtom.reportWrite(value, super.passCont, () {
      super.passCont = value;
    });
  }

  late final _$signInFormStateAtom =
      Atom(name: 'AuthStoreBase.signInFormState', context: context);

  @override
  GlobalKey<FormState> get signInFormState {
    _$signInFormStateAtom.reportRead();
    return super.signInFormState;
  }

  @override
  set signInFormState(GlobalKey<FormState> value) {
    _$signInFormStateAtom.reportWrite(value, super.signInFormState, () {
      super.signInFormState = value;
    });
  }

  late final _$onSignSubmitAsyncAction =
      AsyncAction('AuthStoreBase.onSignSubmit', context: context);

  @override
  Future<void> onSignSubmit() {
    return _$onSignSubmitAsyncAction.run(() => super.onSignSubmit());
  }

  late final _$disposeAsyncAction =
      AsyncAction('AuthStoreBase.dispose', context: context);

  @override
  Future<void> dispose() {
    return _$disposeAsyncAction.run(() => super.dispose());
  }

  @override
  String toString() {
    return '''
emailCont: ${emailCont},
passCont: ${passCont},
signInFormState: ${signInFormState}
    ''';
  }
}
