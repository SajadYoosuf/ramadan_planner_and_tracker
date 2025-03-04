import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class CurrentLocation {
  Position? currentPosition;
  String? currentAdress;
  Placemark? place;

  Future<bool> _handleLocationPermission(BuildContext context) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

  Future<String> getCurrentPosition(BuildContext context) async {
    final hasPermission = await _handleLocationPermission(context);

    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      currentPosition = position;
      print(currentPosition!.latitude);
      print(currentPosition!.longitude);
      // ignore: unrelated_type_equality_checks
      return currentAdress !=
          getAddressFromLatLng(
              currentPosition!.latitude, currentPosition!.longitude);
    }).catchError((e) {
      debugPrint(e);
    });
    return currentAdress!;
  }

  Future<String> getAddressFromLatLng(double latitude, double longitude) async {
    await placemarkFromCoordinates(latitude, longitude)
        .then((List<Placemark> placemarks) {
      print("object");
      return currentAdress = place!.subLocality;
    }).catchError((e) {
      debugPrint(e);
    });
    print(currentAdress);
    currentAdress = place!.street.toString();
    return currentAdress!;
  }
}
