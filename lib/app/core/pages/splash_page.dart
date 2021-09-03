import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_challenge/app/app_theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {

  AnimationController animation;
  Animation<double> _fadeInFadeOut;

  splashScreenPage() async {
    Future.delayed(Duration(seconds: 5))
        .whenComplete(() => Modular.to.pushReplacementNamed("/home"));
  }

  @override
  void initState() {
    splashScreenPage();
    animationController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          color: AppTheme.appColor,
          child: FadeTransition(
            opacity: _fadeInFadeOut,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 150, maxHeight: 142),
                    child: Image.asset("assets/images/github_logo.png")
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text("Mobile Challenge",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: "Raleway",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }

  animationController() {
    animation = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 1).animate(animation);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animation.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animation.forward();
      }
    });
    animation.forward();
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }
}
