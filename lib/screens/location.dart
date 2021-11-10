import 'package:geolocator/geolocator.dart';

class location {
  double latitude = 0.0;
  double longitutde = 0.0;

  Future<void> getLoc() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);

      latitude = position.latitude;
      longitutde = position.longitude;
    } catch (e) {}
  }
}
