import 'sse_client_stub.dart'
    if (dart.library.io) 'sse_client_io.dart'
    if (dart.library.js_interop) 'sse_client_web.dart';

import 'package:festou_app/infrastructure/services/sse/sse_message.dart';

abstract class SseClient {
  Stream<SseMessage> connect(
    Uri uri, {
    Map<String, String>? headers,
    String? lastEventId,
  });
}

SseClient createSseClient() => getSseClient();
