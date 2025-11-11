import 'package:cubit/auth/login/view/login.dart';
import 'package:cubit/auth/widget/textbuttoncustom.dart';
import 'package:cubit/const/appbuttonstyle.dart';
import 'package:cubit/const/apptextstyle.dart';
import 'package:cubit/const/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/password_cubit.dart';
import '../../widget/buttoncustom.dart';
import '../../widget/textfiledcustom.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
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
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Signup", style: Apptextstyle().authtitle),
                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
                Textfiledcustom(
                  title: "Name",
                  prefix: Icons.person,
                  width: Sizescreen().widthtextfilesauth(context),
                ),
                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
                Textfiledcustom(
                  title: "Email",
                  prefix: Icons.email,
                  width: Sizescreen().widthtextfilesauth(context),
                ),
                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
                BlocBuilder<passwordCubit, Map<PasswordCubitenum, bool>>(
                  builder: (context, state) {
                    final cubit = context.read<passwordCubit>();
                    final bool isVisible = cubit.getVisibility(
                      PasswordCubitenum.signuppass,
                    );
                    final IconData icon = cubit.getIcon(
                      PasswordCubitenum.signuppass,
                    );

                    return Textfiledcustom(
                      title: "Password",
                      width: Sizescreen().widthtextfilesauth(context),
                      prefix: Icons.lock,
                      pass: true,
                      visible: isVisible,
                      sufficon: icon,
                      onpress: () =>
                          cubit.changeVisibility(PasswordCubitenum.signuppass),
                    );
                  },
                ),
                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
                BlocBuilder<passwordCubit, Map<PasswordCubitenum, bool>>(
                  builder: (context, state) {
                    final cubit = context.read<passwordCubit>();
                    final bool isVisible = cubit.getVisibility(
                      PasswordCubitenum.confirmpasssignup,
                    );
                    final IconData icon = cubit.getIcon(
                      PasswordCubitenum.confirmpasssignup,
                    );

                    return Textfiledcustom(
                      title: "Confirm Password",
                      width: Sizescreen().widthtextfilesauth(context),
                      prefix: Icons.lock,
                      pass: true,
                      visible: isVisible,
                      sufficon: icon,
                      onpress: () => cubit.changeVisibility(
                        PasswordCubitenum.confirmpasssignup,
                      ),
                    );
                  },
                ),
                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("if you already have an account then click  "),
                    Textbuttoncustom(
                      title: "login !",
                      onpress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Login();
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
                  title: "Signup",
                  style: Appbuttonstyle().authbutton(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
