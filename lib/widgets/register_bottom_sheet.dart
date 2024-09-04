import 'package:flutter/material.dart';
import 'package:login_register/core/utils/consntants.dart';
import 'package:login_register/core/utils/styles.dart';
import 'package:login_register/widgets/custom_elvated_button.dart';
import 'package:login_register/widgets/custom_text_form_field.dart';

class RegisterBottomSheet extends StatelessWidget {
  const RegisterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffFFECAA),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Hello..',
                  style: Styles.textStyle20.copyWith(
                    color: const Color(0xff050522),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Register',
                  style: Styles.textStyle30.copyWith(
                    fontWeight: FontWeight.w900,
                    color: const Color(0xff050522),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextFormField(
                labelText: 'Email',
                hintText: 'Please enter your email',
                suffixIcon: IconButton(
                  color: const Color(0xff050522),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.visibility_outlined,
                    size: 28,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextFormField(
                labelText: 'Course',
                hintText: 'Please enter course',
                suffixIcon: IconButton(
                  color: const Color(0xff050522),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.visibility_outlined,
                    size: 28,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextFormField(
                labelText: 'Password',
                hintText: 'Please enter your password',
                suffixIcon: IconButton(
                  color: const Color(0xff050522),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.lock_outline,
                    size: 28,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextFormField(
                labelText: 'Confirm Password',
                hintText: 'Please enter confirm password',
                suffixIcon: IconButton(
                  color: const Color(0xff050522),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.lock_outline,
                    size: 28,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
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
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account ? ',
                    style: Styles.textStyle18,
                  ),
                  InkWell(
                    onTap: () {},
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
          ),
        ),
      ),
    );
  }
}
