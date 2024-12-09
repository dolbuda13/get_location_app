import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/location.dart';
import '../repositories/location_repository.dart';

final locationProvider = StateNotifierProvider<LocationNotifier, List<Location>>((ref) {
  return LocationNotifier();
});

class LocationNotifier extends StateNotifier<List<Location>> {
  LocationNotifier() : super([]);

  Future<void> search(String query) async {//reposiotry에서 데이터 받아오기
    final repository = LocationRepository();
    state = await repository.searchLocations(query);
  }
}
