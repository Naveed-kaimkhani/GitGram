import 'package:easy_github/app/routes/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Wellcome extends StatefulWidget {
  Wellcome({Key? key}) : super(key: key);

  @override
  State<Wellcome> createState() => _HomepageState();
}

class _HomepageState extends State<Wellcome> {
  bool mode = true;

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    return Scaffold(
      //appBar: _appbar(),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://icon-library.com/images/github-icon-white/github-icon-white-6.jpg")),
                )),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 80,
              width: 250,
              child: AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText('WELLCOME',
                      textStyle: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      )),
                  RotateAnimatedText('TO',
                      textStyle: TextStyle(
                        letterSpacing: 3,
                        fontSize: 40,
                      )),
                  RotateAnimatedText(
                    'G i t G r a m',
                    textStyle: TextStyle(
                      fontSize: 40,
                      // decoration: TextDecoration.underline,
                    ),
                  ),
                ],
                isRepeatingAnimation: true,
                totalRepeatCount: 3,
                pause: Duration(milliseconds: 1000),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 40,
              width: 150,
              child: ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(AppRoutes.homepage),
                  child: Icon(Icons.arrow_forward_sharp)),
            ),
          ],
        ),
      ),
    );
  }
}
