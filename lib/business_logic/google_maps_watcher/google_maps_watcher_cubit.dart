import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

part 'google_maps_watcher_state.dart';
part 'google_maps_watcher_cubit.freezed.dart';

@injectable
class GoogleMapsWatcherCubit extends Cubit<GoogleMapsWatcherState> {
  GoogleMapController mapController;

  GoogleMapsWatcherCubit() : super(GoogleMapsWatcherState.initial());

  LatLng lastPosition = LatLng(0.0, 0.0);

  void setInitialPosition() async {
    emit(GoogleMapsWatcherState.loadInProgress());

    var currentLocation = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        forceAndroidLocationManager: false);
    emit(
      GoogleMapsWatcherState.loadSuccess(
        initialPosition:
            LatLng(currentLocation.latitude, currentLocation.longitude),
      ),
    );
  }

  void onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    var currentLocation = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        forceAndroidLocationManager: false);

    if (mapController != null) {
      LatLng position =
          LatLng(currentLocation.latitude, currentLocation.longitude);

      Future.delayed(
        Duration(milliseconds: 1),
        () async {
          controller.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: position,
                zoom: 17.5,
                tilt: 10,
              ),
            ),
          );
        },
      );
    }
  }
}
