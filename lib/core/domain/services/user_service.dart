import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:hwm48/core/domain/entities/user.dart';

class UserService {
  final _storage = const FlutterSecureStorage();

  Future<String?> _getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else if (Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.id; // unique ID on Android
    }
    return null;
  }

  Future<void> saveUserId() async {
    final key = await _getId() ?? 'none';
    if (await _storage.containsKey(key: key)) {
      return;
    }
    await _storage.write(key: key, value: UniqueKey().toString());
  }

  Future<bool> isExist() async {
    final key = await _getId() ?? 'none';
    return await _storage.containsKey(key: key);
  }

  Future<void> exit() async {
    final key = await _getId() ?? 'none';
    await _storage.delete(key: key);
    await _storage.delete(key: 'email');
    await _storage.delete(key: 'firstName');
    await _storage.delete(key: 'lastName');
  }

  Future<void> saveUserData({
    required String email,
    required String firstName,
    required String lastName,
  }) async {
    await _storage.write(key: 'email', value: email);
    await _storage.write(key: 'firstName', value: firstName);
    await _storage.write(key: 'lastName', value: lastName);
  }

  Future<User> getUser() async {
    final email = await _storage.read(key: 'email') ?? '';
    final firstName = await _storage.read(key: 'firstName') ?? '';
    final lastName = await _storage.read(key: 'lastName') ?? '';

    final user = User(email: email, firstName: firstName, lastName: lastName);
    return user;
  }
}
