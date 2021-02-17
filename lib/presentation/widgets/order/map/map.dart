import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:test_app/business_logic/google_maps_watcher/google_maps_watcher_cubit.dart';
import 'package:test_app/business_logic/map_anim_icon/map_anim_icon_cubit.dart';
import 'package:test_app/injection.dart';
import 'package:test_app/presentation/widgets/order/map/google_map_widget.dart';
import 'package:test_app/presentation/widgets/order/map/map_anim_icon.dart';

class MapScreen extends HookWidget {
  MapScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(context.watch<GoogleMapsWatcherCubit>().lastPosition);
    var iconController =
        useAnimationController(duration: Duration(milliseconds: 650));
    var mapController =
        useAnimationController(duration: Duration(milliseconds: 600));
    return BlocBuilder<MapAnimIconCubit, MapAnimIconState>(
      cubit: getIt<MapAnimIconCubit>()..onStart(iconController, mapController),
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              width: 400,
              child: ClipRRect(
                child: MapWidget(
                  iconController: iconController,
                  mapController: mapController,
                  mapAnimValue: state.mapAnimValue,
                ),
              ),
            ),
            MapAnimIcon(
              iconAnimValue: state.iconAnimValue,
            ),
          ],
        );
      },
    );
  }
}
