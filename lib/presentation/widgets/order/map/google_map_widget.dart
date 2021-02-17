import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_app/business_logic/animate_map_cursor/animate_map_cursor_cubit.dart';
import 'package:test_app/business_logic/google_maps_watcher/google_maps_watcher_cubit.dart';

class MapWidget extends StatelessWidget {
  MapWidget({
    Key key,
    this.mapController,
    @required this.iconController,
    this.mapAnimValue,
  }) : super(key: key);

  final AnimationController mapController;
  final AnimationController iconController;
  final double mapAnimValue;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoogleMapsWatcherCubit, GoogleMapsWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => Container(),
          loadSuccess: (mapstate) => Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Transform.scale(
              scale: mapAnimValue,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  zoom: 17,
                  target: mapstate.initialPosition,
                ),
                myLocationEnabled: true,
                zoomControlsEnabled: false,
                tiltGesturesEnabled: false,
                compassEnabled: false,
                onMapCreated:
                    context.watch<GoogleMapsWatcherCubit>().onMapCreated,
                onCameraMoveStarted: () {
                  context
                      .read<AnimateMapCursorCubit>()
                      .onCameraMoveStarted(iconController, mapController);
                },
                onCameraIdle: () {
                  context
                      .read<AnimateMapCursorCubit>()
                      .onCameraIdle(iconController, mapController);
                },
                onCameraMove: (position) async {
                  context.read<GoogleMapsWatcherCubit>().lastPosition =
                      position.target;
                },
                gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                  new Factory<OneSequenceGestureRecognizer>(
                    () => new EagerGestureRecognizer(),
                  ),
                ].toSet(),
              ),
            ),
          ),
          loadFailure: (_) => Container(),
        );
      },
    );
  }
}
