import 'package:flutter/material.dart';
import 'package:login_register/widgets/register_bottom_sheet_check_account.dart';
import '../core/utils/styles.dart';
import '../core/utils/validation.dart';
import 'custom_text_form_field.dart';

class RegisterBottomSheet extends StatefulWidget {
  const RegisterBottomSheet({super.key});

  @override
  State<RegisterBottomSheet> createState() => _RegisterBottomSheetState();
}

class _RegisterBottomSheetState extends State<RegisterBottomSheet> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final courseController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool isEmailVisible = true;
  bool isCourseVisible = true;
  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffFFECAA),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Hello..',
                        style: Styles.textStyle20.copyWith(
                          color: const Color(0xff050522),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Register',
                        style: Styles.textStyle30.copyWith(
                          fontWeight: FontWeight.w900,
                          color: const Color(0xff050522),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Column(
                      children: [
                        CustomTextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            return emailValidateSignUp(value);
                          },
                          obscureText: isEmailVisible,
                          controller: emailController,
                          labelText: 'Email',
                          hintText: 'Please enter your email',
                          suffixIcon: IconButton(
                            color: const Color(0xff050522),
                            onPressed: () {
                              setState(() {
                                isEmailVisible = !isEmailVisible;
                              });
                            },
                            icon: Icon(
                              isEmailVisible
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              size: 28,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        CustomTextFormField(
                          obscureText: isCourseVisible,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Course is required';
                            }
                            return null;
                          },
                          controller: courseController,
                          labelText: 'Course',
                          hintText: 'Please enter course',
                          suffixIcon: IconButton(
                            color: const Color(0xff050522),
                            onPressed: () {
                              setState(() {
                                isCourseVisible = !isCourseVisible;
                              });
                            },
                            icon: Icon(
                              isCourseVisible
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              size: 28,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        CustomTextFormField(
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            return passwordValidateSignUp(value);
                          },
                          obscureText: isPasswordVisible,
                          controller: passwordController,
                          labelText: 'Password',
                          hintText: 'Please enter your password',
                          suffixIcon: IconButton(
                            color: const Color(0xff050522),
                            onPressed: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                            icon: Icon(
                              isPasswordVisible
                                  ? Icons.lock_outline
                                  : Icons.lock_open_outlined,
                              size: 28,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        CustomTextFormField(
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            return passwordValidateAndCheckMatchingSignUp(
                                value);
                          },
                          controller: confirmPasswordController,
                          obscureText: isConfirmPasswordVisible,
                          labelText: 'Confirm Password',
                          hintText: 'Please enter confirm password',
                          suffixIcon: IconButton(
                            color: const Color(0xff050522),
                            onPressed: () {
                              setState(() {
                                isConfirmPasswordVisible =
                                    !isConfirmPasswordVisible;
                              });
                            },
                            icon: Icon(
                              isConfirmPasswordVisible
                                  ? Icons.lock_outline
                                  : Icons.lock_open_outlined,
                              size: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: MediaQuery.of(context).viewInsets,
                      child: RegisterBottomSheetCheckAccount(formKey: formKey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
