import 'package:cubit/auth/cubit/password_cubit.dart';
import 'package:cubit/auth/signup/view/signup.dart';
import 'package:cubit/auth/widget/textbuttoncustom.dart';
import 'package:cubit/const/appbuttonstyle.dart';
import 'package:cubit/const/apptextstyle.dart';
import 'package:cubit/const/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widget/buttoncustom.dart';
import '../../widget/textfiledcustom.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            reverse: true,
            padding: EdgeInsets.only(top: Sizescreen().height(context) / 5),
            child: Column(
              children: [
                Text(
                  "Login",
                  style: Apptextstyle().authtitle,
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),

                Textfiledcustom(
                  title: "Email",
                  prefix: Icons.email,
                  width: Sizescreen().widthtextfilesauth(context),
                ),

                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),

                BlocBuilder<passwordCubit, Map<PasswordCubitenum, bool>>(
                  builder: (context, state) => Textfiledcustom(
                    title: "Password",
                    width: Sizescreen().widthtextfilesauth(context),
                    prefix: Icons.lock,
                    pass: true,
                    visible: BlocProvider.of<passwordCubit>(
                      context,
                    ).getVisibility(PasswordCubitenum.loginpass),
                    sufficon: BlocProvider.of<passwordCubit>(
                      context,
                    ).getIcon(PasswordCubitenum.loginpass),
                    onpress: () {
                      BlocProvider.of<passwordCubit>(
                        context,
                      ).changeVisibility(PasswordCubitenum.loginpass);
                    },
                  ),
                ),

                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("if you don't have account then click  "),
                    Textbuttoncustom(
                      title: "sign up !",
                      onpress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Signup();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),

                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),

                Buttoncustom(
                  onpress: () {},
                  title: "login",
                  style: Appbuttonstyle().authbutton(context),
                ),

                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),

                Textbuttoncustom(
                  title: "forget your password?",
                  onpress: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
