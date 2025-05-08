import 'dart:convert';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:dio/dio.dart';

class DeviceService {

  Future<void> getDeviceInfo() async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    Map<String, dynamic> deviceData = {};

    if (kIsWeb) {
      WebBrowserInfo webInfo = await deviceInfoPlugin.webBrowserInfo;
      deviceData = {
        "browser_name": webInfo.browserName.toString(),
        "user_agent": webInfo.userAgent,
        "platform": webInfo.platform,
        "vendor": webInfo.vendor,
        "language": webInfo.language,
      };
    } else if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      deviceData = {
        "device_model": androidInfo.model,
        "manufacturer": androidInfo.manufacturer,
        "android_id": androidInfo.product,
        "version": androidInfo.version.release,
        "brand": androidInfo.brand,
        "board": androidInfo.board,
        "device": androidInfo.device,
        "hardware": androidInfo.hardware,
      };
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
      deviceData = {
        "device_name": iosInfo.name,
        "model": iosInfo.model,
        "system_name": iosInfo.systemName,
        "system_version": iosInfo.systemVersion,
        "identifier_for_vendor": iosInfo.identifierForVendor,
        "is_physical_device": iosInfo.isPhysicalDevice,
      };
    }

    await _sendDeviceDataToAPI(deviceData);
  }

  Future<void> _sendDeviceDataToAPI(Map<String, dynamic> deviceData) async {
    try {
      var data =
        {
          "name": deviceData,
          "ip": ""
        };

      var dio = Dio();
      var response = await dio.request(
        'https://portfolio1.pythonanywhere.com/api/data/',
        options: Options(
          method: 'GET',
        ),
      );

      if (response.statusCode == 200) {
        print(json.encode(response.data));
      } else {
        print(response.statusMessage);
      }
    } on DioException catch (e) {
      print(e.error);
      print(e.response?.data);
    } catch (e) {
      print("Error sending device info: $e");
    }
  }
}
