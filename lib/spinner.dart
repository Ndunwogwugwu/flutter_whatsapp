import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Spinner extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return const Scaffold(
      backgroundColor: Color(0xfffd1f4a),
      body: Center(
        child: SpinKitPianoWave(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
