import 'package:se_challenge/app/data/providers/profile_local_storage_provider.dart';

class ProfileRepository {
  final ProfileLocalStorageProvider profileLocalStorageProvider =
      new ProfileLocalStorageProvider();

  handleFavoriteSave(args) {
    return profileLocalStorageProvider.handleFavoriteSave(args);
  }
}
