import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class MobileHome extends StatefulWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MaterialButton(
          color: Colors.blue,
          minWidth: size.width / 2,
          height: size.height / 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 10,
              ),
              Transform.rotate(
                angle: 0,
                child: SvgPicture.asset(
                  'assets/icons/rocket-blue.svg',
                  color: Colors.white,
                  width: 60,
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: const SizedBox(
                  width: 120,
                  height: 30,
                  child: Center(child: Text('Send')),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        MaterialButton(
          color: Colors.blue,
          minWidth: size.width / 2,
          height: size.height / 6,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 10,
              ),
              Transform.rotate(
                angle: math.pi / 1.34,
                child: SvgPicture.asset(
                  'assets/icons/arrow-blue.svg',
                  color: Colors.white,
                  width: 60,
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: const SizedBox(
                  width: 120,
                  height: 30,
                  child: Center(child: Text('Receive')),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
