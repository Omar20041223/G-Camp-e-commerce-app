import 'package:flutter/material.dart';
import 'package:luxira_app/features/auth/presentation/views/widgets/register_widgets/register_body.dart';
class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: RegisterBody()),
    );
  }
}
