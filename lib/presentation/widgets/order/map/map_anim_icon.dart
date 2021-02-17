import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/animate_map_cursor/animate_map_cursor_cubit.dart';

class MapAnimIcon extends StatelessWidget {
  const MapAnimIcon({
    Key key,
    this.iconAnimValue,
  }) : super(key: key);
  final double iconAnimValue;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: 100,
          width: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: 29,
                child: Container(
                  width: 4.5,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.all(
                      Radius.elliptical(90, 50),
                    ),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                height: context.read<AnimateMapCursorCubit>().cursorHeight,
                child: Container(
                  height: 40,
                  width: 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Transform.scale(
                    scale: iconAnimValue,
                    child: Icon(
                      Icons.house,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
