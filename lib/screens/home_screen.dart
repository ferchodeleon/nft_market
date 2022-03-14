import 'package:flutter/material.dart';
import 'package:ntf_marketplace/widgets/image_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ShaderMask(
              blendMode: BlendMode.dstOut,
              shaderCallback: (rect) {
                return LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.9),
                    Colors.black,
                  ],
                  stops: [0, 0.62, 0.67, 0.85, 1],
                ).createShader(rect);
              },
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 30),
                    ImageListView(
                      startIndex: 1,
                      duration: 25,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
