import 'package:festou_app/domain/favorite/favorite.dart';
import 'package:festou_app/domain/favorite/projections/favorite_resume.dart';
import 'package:stream_value/core/stream_value.dart';

abstract class FavoriteRepositoryContract {
  final favoriteResumesStreamValue = StreamValue<List<FavoriteResume>?>(
    defaultValue: null,
  );

  StreamValue<bool> get hasMoreFavoriteResumesStreamValue;

  StreamValue<bool> get isFavoriteResumesPageLoadingStreamValue;

  Future<List<Favorite>> fetchFavorites();

  Future<List<FavoriteResume>> fetchFavoriteResumes();

  Future<void> initializeFavoriteResumes();

  Future<void> refreshFavoriteResumes();

  Future<void> loadNextFavoriteResumesPage();

  void clearCurrentIdentityState() {
    favoriteResumesStreamValue.addValue(null);
  }
}
