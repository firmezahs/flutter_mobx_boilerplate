import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_store.g.dart';

class AuthStore = AuthStoreBase with _$AuthStore;

abstract class AuthStoreBase with Store {
  @observable
  TextEditingController emailCont = TextEditingController();

  @observable
  TextEditingController passCont = TextEditingController();

  @observable
  GlobalKey<FormState> signInFormState = GlobalKey();

  @action
  Future<void> onSignSubmit() async {
    if (signInFormState.currentState!.validate()) {
      signInFormState.currentState!.save();

      final supabase = Supabase.instance.client;

      try {
        final response = await supabase.auth.signUp(
          email: emailCont.text,
          password: passCont.text,
        );

        final user = response.user;

        if (user != null) {
          await supabase.from('users').insert({
            'id': user.id, // 👈 must match auth.uid()
            'email': emailCont.text,
            'name': "Ankit Gada", // 👈 better than using password
          });
        }
      } on PostgrestException catch (e) {
        print("Insert error: ${e.message}");
      } catch (e) {
        print("Unexpected error: $e");
      }
    }
  }

  @action
  Future<void> dispose() async {
    // Enter the dispose methods
  }
}
