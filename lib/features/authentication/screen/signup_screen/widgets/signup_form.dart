import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/features/authentication/controller/onboarding_controller/signup_controller.dart';
import 'package:shoe_app/utilities/validators/validation.dart';

import '../../../../../utilities/constants/sizes.dart';
import '../../../../../utilities/constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(SignUpController());

    return Form(
      key: controller.signUpFormKey,
      child: Column(
        children: [
          ///first and last name fields
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                    validator: (value)=> EValidator.validateEmptyField('First Name', value),
                    controller: controller.firstNameController,
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: ETextStrings.firstName,
                        prefixIcon: Icon(Iconsax.user)
                    ),
                  )),
              const SizedBox(width: ESizes.spaceBetweenTextFormFields,),
              Expanded(child: TextFormField(
                validator: (value)=> EValidator.validateEmptyField('Last Name', value),
                controller: controller.lastNameController,
                expands: false,
                decoration: const InputDecoration(
                    labelText: ETextStrings.lastName,
                    prefixIcon: Icon(Iconsax.user)
                ),
              )),
            ],
          ),
          const SizedBox(height: ESizes.spaceBetweenTextFormFields,),
          ///username field
          TextFormField(
            validator: (value)=> EValidator.validateEmptyField('UserName', value),
            controller: controller.userNameController,
            decoration: const InputDecoration(
                labelText: ETextStrings.username,
                prefixIcon: Icon(Iconsax.user_edit)
            ),
          ),
          const SizedBox(height: ESizes.spaceBetweenTextFormFields,),
          ///email field
          TextFormField(
            validator: (value)=> EValidator.emailValidator(value),
            controller: controller.emailController,
            decoration: const InputDecoration(
                labelText: ETextStrings.email,
                prefixIcon: Icon(Iconsax.direct_right)
            ),
          ),
          const SizedBox(height: ESizes.spaceBetweenTextFormFields,),
          ///phone number field
          TextFormField(
            validator: (value)=> EValidator.validatePhoneNumber(value),
            controller: controller.phoneNumberController,
            decoration: const InputDecoration(
                labelText: ETextStrings.phoneNo,
                prefixIcon: Icon(Iconsax.call)
            ),
          ),
          const SizedBox(height: ESizes.spaceBetweenTextFormFields,),
          Obx(
            ()=> TextFormField(
              validator: (value)=> EValidator.validatePassword(value),
              obscureText: controller.hidePassword.value,
              controller: controller.passwordController,
              decoration: InputDecoration(
                labelText: ETextStrings.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                    icon: controller.hidePassword.value ? const Icon(Iconsax.eye_slash) : const Icon(Iconsax.eye)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
