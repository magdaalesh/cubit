import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

enum PasswordCubitenum { loginpass, signuppass, confirmpasssignup }

class passwordCubit extends Cubit<Map<PasswordCubitenum, bool>> {
  passwordCubit()
    : super({
        PasswordCubitenum.loginpass: true,
        PasswordCubitenum.signuppass: true,
        PasswordCubitenum.confirmpasssignup: true,
      });

  void changeVisibility(PasswordCubitenum type) {
    emit({...state, type: !(state[type] ?? true)});
  }

  bool getVisibility(PasswordCubitenum type) {
    return state[type] ?? true;
  }

  IconData getIcon(PasswordCubitenum type) {
    return !getVisibility(type) ? Icons.visibility : Icons.visibility_off;
  }
}
