import 'package:flutter/material.dart';
import 'package:luxira_app/features/auth/presentation/views/widgets/register_widgets/forget_password_body.dart';
class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: ForgetPasswordBody()),
    );
  }
}
