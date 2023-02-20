import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureService {
  static storeApiKey(String apiKey) async {
    const storage = FlutterSecureStorage();
    await storage.write(key: "api_key", value: apiKey);
  }

  static Future<String?> loadApiKey() async {
    const storage = FlutterSecureStorage();
    String? apiKey = await storage.read(key: "api_key");
    return apiKey;
  }

  static Future<void> removeApiKey() async {
    const storage = FlutterSecureStorage();
    await storage.delete(key: "api_key");
  }
}
