import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Jwt{
  static const storage = FlutterSecureStorage();

  static const jwtKey = "jwt";

  static Future setJwt(String jwt)async =>
      await storage.write(key: jwtKey, value: jwt);

  static Future<String?> getJwt()async =>
      await storage.read(key: jwtKey);
}