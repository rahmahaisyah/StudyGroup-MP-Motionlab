import 'package:shared_preferences/shared_preferences.dart';

class FavoriteService {
  Future<void> toggleFavorite(int productId) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList('favorites') ?? [];

    if (favorites.contains(productId.toString())) {
      favorites.remove(productId.toString());
    } else {
      favorites.add(productId.toString());
    }

    await prefs.setStringList('favorites', favorites);
  }

  Future<bool> isFavorite(int productId) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList('favorites') ?? [];
    return favorites.contains(productId.toString());
  }

  Future<List<int>> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList('favorites') ?? [];
    return favorites.map(int.parse).toList();
  }
}