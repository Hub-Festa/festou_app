export 'backend_domain.dart';
export 'backend_source.dart';

import 'package:festou_app/infrastructure/dal/dao/backend_domain.dart';
import 'package:festou_app/infrastructure/dal/dao/backend_source.dart';

class BackendRoutingPolicy {
  const BackendRoutingPolicy();

  BackendSource resolve(BackendDomain domain) {
    return BackendSource.live;
  }
}
