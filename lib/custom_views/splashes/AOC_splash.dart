import 'package:flutter/material.dart';

class AOC_splash extends StatefulWidget {
  final Function redirection;
  final Color? backgroundColor;
  final Color? loadingCircleBackgroundColor;
  final Color loadingCircleFirstColor;
  final Color? loadingCircleSecondColor;
  final String imagePath;
  final double width;
  final double height;
  final int? primaryColorDuration;
  final int? secondaryColorDuration;
  final double? circleStrokeWidth;
  final bool? isAsset;

  const AOC_splash(
      {super.key,
      required this.redirection,
      this.backgroundColor,
      this.loadingCircleBackgroundColor,
      required this.loadingCircleFirstColor,
      this.loadingCircleSecondColor,
      required this.imagePath,
      required this.width,
      required this.height,
      this.primaryColorDuration = 600,
      this.secondaryColorDuration = 600,
      this.circleStrokeWidth = 4.0,
      this.isAsset = true});

  @override
  State<StatefulWidget> createState() {
    return _AOC_splash();
  }
}

class _AOC_splash extends State<AOC_splash> with TickerProviderStateMixin {
  late Animation<Color?>? _colorTween;
  late AnimationController _animationController;
  late Image image;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: widget.secondaryColorDuration!),
        reverseDuration: Duration(milliseconds: widget.primaryColorDuration!));
    _colorTween = _animationController.drive(ColorTween(
        begin: widget.loadingCircleFirstColor,
        end: widget.loadingCircleSecondColor));
    _animationController.repeat(reverse: true);
    image = widget.isAsset!
        ? Image.asset(widget.imagePath)
        : Image.network(widget.imagePath);
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.redirection.call();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: widget.height,
              width: widget.width,
              child: ClipOval(
                child: image,
              ),
            ),
            Container(
              height: widget.height,
              width: widget.width,
              child: CircularProgressIndicator(
                strokeWidth: widget.circleStrokeWidth!,
                valueColor: widget.loadingCircleSecondColor != null
                    ? _colorTween
                    : AlwaysStoppedAnimation(widget.loadingCircleFirstColor),
                backgroundColor: widget.loadingCircleBackgroundColor,
                semanticsLabel: 'Circular progress indicator',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
