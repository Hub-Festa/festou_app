import 'package:festou_app/infrastructure/dal/dao/invites/invite_contact_import_cache_entry.dart';

export 'package:festou_app/infrastructure/dal/dao/invites/invite_contact_import_cache_entry.dart';

abstract class InviteContactImportCacheContract {
  Future<InviteContactImportCacheEntry?> read(String cacheKey);

  Future<void> write(String cacheKey, InviteContactImportCacheEntry entry);

  Future<void> clearAll();
}
