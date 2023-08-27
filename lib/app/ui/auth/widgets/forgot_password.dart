import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pixel_insurance/app/ui/theme/app_constants.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              child: const Icon(
                Icons.arrow_back,
                color: Colors.grey,
                size: 32,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(25, 70, 0, 0),
            child: const Text(
              'Quick security check',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            child: Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.fromLTRB(20, 12, 0, 0),
              child: Image.asset('assets/images/forgot_password.png'),
            ),
          ),
          const Center(
            heightFactor: 2,
            child: Column(
              children: [
                Text('Enter your phone number to receive'),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    'Security Code',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            'Enter mobile number: *',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blueGrey),
                    ),
                    child: SizedBox(
                      height: 40,
                      width: 90,
                      child: TextFormField(
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsetsDirectional.only(
                              start: 2.0, bottom: 15),
                          hintText: "+255",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                          suffixIcon: Icon(
                            Icons.arrow_drop_down,
                          ),
                        ),
                        onSaved: (pin1) {},
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ), // Adjust this spacing as needed
                  Form(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.blueGrey),
                          ),
                          child: SizedBox(
                            height: 40,
                            width: 200,
                            child: TextFormField(
                              onChanged: (value) {},
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsetsDirectional.only(
                                    start: 50.0, bottom: 15),
                                hintText: "0786****78",
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              onSaved: (pin1) {},
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.headlineMedium,
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
              width: 230,
              height: 50,
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text('Send',
                            style: TextStyle(
                              fontSize: 16,
                            )))),
              ))
          //flat
        ],
      ),
    );
  }
}
