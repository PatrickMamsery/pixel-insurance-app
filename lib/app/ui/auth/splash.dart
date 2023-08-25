import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pixel_insurance/app/ui/auth/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => LoginPage(),
        ),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 180),
            const Text(
              'PIXEL INSURANCE',
              style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                  letterSpacing: 0.9),
            ), // Adjust the height as needed

            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/SplashImage.png",
                  ),
                  const SizedBox(height: 20), // Add spacing below the image
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        _buildCircleWithTick(fontSize: 16),
                        const SizedBox(width: 10),
                        const Text(
                          'Quick and easy to setup',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        _buildCircleWithTick(fontSize: 16),
                        const SizedBox(width: 10),
                        const Text(
                          'Fast and easy claiming process',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20), // Add spacing below the text
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                    ),
                    child: const Text('Get started'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircleWithTick({double fontSize = 16}) {
    final iconSize = fontSize * 0.8; // Adjust the scale factor as needed
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: iconSize * 0.7, // Adjust the scale factor as needed
          backgroundColor: Colors.blue,
        ),
        Icon(
          Icons.check,
          color: Colors.white,
          size: iconSize,
        ),
      ],
    );
  }
}
