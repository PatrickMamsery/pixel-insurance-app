import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pixel_insurance/app/ui/theme/app_constants.dart';
import 'package:pixel_insurance/app/ui/widgets/button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    var phoneNumberTextEditController = TextEditingController();
    var passwordTextEditController = TextEditingController();

    // String initialCountry = 'NG';
    PhoneNumber number = PhoneNumber(isoCode: 'TZ');

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        minimum: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70.0,
              ),
              Center(
                child: Image.asset(
                  "assets/images/login_person.png",
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                      // elevation: 6,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 5.0,
                        ),
                        child: InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber number) {
                            // controller.phoneNumber(number.phoneNumber);
                          },
                          onInputValidated: (bool value) {
                            print(value);
                            // controller.phoneNumber(number.phoneNumber);
                          },
                          selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          ),
                          ignoreBlank: false,
                          autoFocus: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle:
                              const TextStyle(color: Colors.black),
                          initialValue: number,
                          textFieldController: phoneNumberTextEditController,
                          formatInput: false,
                          keyboardType: TextInputType.phone,
                          inputBorder: InputBorder.none,
                          onSaved: (PhoneNumber number) {
                            print('On Saved: $number');
                          },
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                      // elevation: 6,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 5.0,
                        ),
                        child: TextFormField(
                          controller: passwordTextEditController,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Password",
                            border: InputBorder.none,
                          ),
                          // onChanged: (value) => controller.userName(value),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              CustomButton(
                  function: () {},
                  // function: () => controller.verifyPhoneNumber(context),
                  text: "Login"),
              const SizedBox(
                height: 20.0,
              ),
              TextButton(
                child: const Text(
                  "Not a user? Create account",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
                onPressed: () {
                  // TODO: navigate to the create account page
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
