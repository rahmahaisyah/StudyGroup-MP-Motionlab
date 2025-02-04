import 'package:shared_preferences/shared_preferences.dart';

class FavoriteService {
  Future<void> addFavorite(int productId) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList('favorites') ?? [];
    if (!favorites.contains(productId.toString())) {
      favorites.add(productId.toString());
      await prefs.setStringList('favorites', favorites);
    }
  }

  Future<void> removeFavorite(int productId) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList('favorites') ?? [];
    favorites.remove(productId.toString());
    await prefs.setStringList('favorites', favorites);
  }

  Future<List<int>> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList('favorites') ?? [];
    return favorites.map((e) => int.parse(e)).toList();
  }
}
