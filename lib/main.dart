import 'package:cubit/feauter/auth/cubit/password_cubit.dart';
import 'package:cubit/feauter/auth/signup/view/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feauter/auth/login/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => passwordCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Login()),
    );
  }
}
