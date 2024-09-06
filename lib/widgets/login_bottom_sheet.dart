import 'package:flutter/material.dart';
import '../core/utils/consntants.dart';
import '../core/utils/styles.dart';
import '../core/utils/validation.dart';
import 'custom_elvated_button.dart';
import 'custom_text_form_field.dart';

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({super.key});

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool isEmailVisible = true;
  bool isPasswordVisible = true;
  bool isTrue = false;

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    'Welcome Back!!!',
                    style: Styles.textStyle20.copyWith(
                      color: const Color(0xff050522),
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    'Login',
                    style: Styles.textStyle30.copyWith(
                      fontWeight: FontWeight.w900,
                      color: const Color(0xff050522),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  obscureText: isEmailVisible,
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  labelText: 'Email',
                  hintText: 'Please enter your email',
                  validator: (value) {
                    return emailValidateLogin(value);
                  },
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
                  keyboardType: TextInputType.text,
                  obscureText: isPasswordVisible,
                  controller: passwordController,
                  validator: (value) {
                    return passwordValidateLogin(value);
                  },
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
                Padding(
                  padding: MediaQuery.of(context).viewInsets,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                activeColor: kPrimaryColor,
                                value: isTrue,
                                onChanged: (value) {
                                  setState(() {
                                    isTrue = !isTrue;
                                  });
                                },
                              ),
                              const Text(
                                'Remember me',
                                style: Styles.textStyle16,
                              ),
                            ],
                          ),
                          const Text(
                            'Forget Password?',
                            style: Styles.textStyle16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 22),
                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          height: 65,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: CustomElvatedButton(
                              borderSide: kPrimaryColor,
                              text: 'Login',
                              backgroundColor: kPrimaryColor,
                              color: const Color(0xffFFDE69),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {}
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account ? ',
                            style: Styles.textStyle18,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Register',
                              style: Styles.textStyle18.copyWith(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
