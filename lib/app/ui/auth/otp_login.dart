// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: camel_case_types
class OTP_Login extends StatelessWidget {
  const OTP_Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 55),
        child: Text(
          'OTP VERIFICATION',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Image(image: AssetImage('assets/images/OTP_Login.png')),
      const SizedBox(
        height: 20,
      ),
      const Text('Enter the code from sms we sent to +255 784****98'),
      const SizedBox(
        height: 15,
      ),
      Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 116, 217),
                  )),
              child: SizedBox(
                  height: 48,
                  width: 48,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "5",
                        hintStyle: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.normal)),
                    onSaved: (pin1) {},
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 116, 217),
                  )),
              child: SizedBox(
                height: 48,
                width: 48,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  decoration: const InputDecoration(
                      hintText: "3",
                      hintStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                      )),
                  onSaved: (pin2) {},
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 116, 217),
                  )),
              child: SizedBox(
                height: 48,
                width: 48,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  decoration: const InputDecoration(
                      hintText: "6",
                      hintStyle: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.normal)),
                  onSaved: (pin3) {},
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 116, 217),
                  )),
              child: SizedBox(
                height: 48,
                width: 48,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  decoration: const InputDecoration(
                      hintText: "2",
                      hintStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                      )),
                  onSaved: (pin4) {},
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 116, 217),
                    )),
                child: SizedBox(
                  height: 48,
                  width: 48,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        hintText: "4",
                        hintStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                        )),
                    onSaved: (pin5) {},
                    style: Theme.of(context).textTheme.headlineMedium,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ))
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 20),
        child: Text(
          '02:32',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      Row(
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(90, 40, 0, 15),
            child: Text('I didnt receive any code?'),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(5, 40, 0, 15),
              child: Text(
                'Resend',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
              ))
        ],
      ),
      Container(
        width: 230,
        height: 40,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text('Verify'),
        ),
      )
    ]));
  }
}
