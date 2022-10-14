import 'package:flutter/material.dart';

class AnimatedImageOverlay extends StatefulWidget {
  final String topic;

  const AnimatedImageOverlay(
    this.topic, {
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedImageOverlay> createState() => _AnimatedImageOverlayState();
}

class _AnimatedImageOverlayState extends State<AnimatedImageOverlay> {
  late bool _hovered;

  @override
  void initState() {
    super.initState();
    _hovered = false;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedOpacity(
        duration: kThemeAnimationDuration,
        opacity: _hovered ? 1.0 : 0.0,
        child: Container(
          alignment: Alignment.center,
          color: Colors.black54,
          child: Text(
            widget.topic,
            style: const TextStyle(
              fontSize: 24.0,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}