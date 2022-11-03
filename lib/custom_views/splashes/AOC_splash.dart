import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  final Function redirection;

  const SplashView(
      {super.key, required this.redirection});

  @override
  State<StatefulWidget> createState() {
    return _SplashViewState();
  }
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<dynamic> _colorTween;

  @override
  void initState() {
    _colorTween = controller
        .drive(ColorTween(begin: Colors.yellow, end: Colors.deepPurple));
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat();
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => widget.redirection);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 100),
      body: Container(
        child: CircularProgressIndicator(
          valueColor: _colorTween.value,
          value: controller.value,
          semanticsLabel: 'Circular progress indicator',
        ),
      ),
    );
  }
/*
  void redirection() async {
    Profile? userProfile;
    Future.delayed(const Duration(milliseconds: 600));

    if (!Auth_management().isLogged()) {
      Navigator.popAndPushNamed(context, '/login');
      return;
    }

    DBprofile()
        .getUserProfile(FirebaseAuth.instance.currentUser!.uid.toString())
        .then((value) {
      userProfile = value;

      if (userProfile?.birthday == null || userProfile?.country == null) {
        Navigator.of(context).popAndPushNamed('/on-boarding');
        return;
      }

      Navigator.of(context).popAndPushNamed('/home');
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      redirection();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 100),
      body: Container(
        child: const SpinKitWave(
          color: Colors.deepPurple,
          size: 80.0,
        ),
      ),
    );
  }*/
}
