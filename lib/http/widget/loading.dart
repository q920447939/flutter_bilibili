import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loading extends StatefulWidget {
  final VoidCallback? onClose;
  final Duration duration;
  const Loading({super.key, this.onClose, required this.duration});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    // loading动画
    return Container(
      padding: const EdgeInsets.only(top: 40, bottom: 10),
      child: LoadingAnimationWidget.hexagonDots(
        color: Colors.white,
        size: 40,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(widget.duration, () {
      if (widget.onClose != null) {
        widget.onClose!();
      }
      setState(() {
        Navigator.pop(context);
      });
    });
  }
}
