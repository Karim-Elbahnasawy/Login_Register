import 'package:flutter/material.dart';
import '../core/utils/consntants.dart';
import '../core/utils/styles.dart';
import 'custom_elvated_button.dart';

class RegisterBottomSheetCheckAccount extends StatelessWidget {
  const RegisterBottomSheetCheckAccount({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: double.infinity,
            height: 65,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomElvatedButton(
                borderSide: kPrimaryColor,
                text: 'Register',
                backgroundColor: kPrimaryColor,
                color: const Color(0xffFFDE69),
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Already have an account ? ',
              style: Styles.textStyle18,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Login',
                style: Styles.textStyle18.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
