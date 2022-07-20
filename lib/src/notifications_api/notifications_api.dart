import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:async';

class NotificationsAPI {
  static final _notifications = FlutterLocalNotificationsPlugin();
  static const AndroidInitializationSettings _androidSettings =
      AndroidInitializationSettings('app_icon');
  // static const InitializationSettings sett =
      // InitializationSettings(android: _androidSettings);

  static Future showNotification({
    int id = 0,
    String title = "",
    String body = "",
    String payload = "",
  }) async {
    return _notifications.show(
      id,
      title,
      body,
      await _notificationDetails(),
      payload: payload,
    );
  }

  static Future<NotificationDetails> _notificationDetails() async {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        'channel id',
        'channel name',
        importance: Importance.max,
      ),
    );
  }

  static void initialize() {
    var androidInitSettings = AndroidInitializationSettings('stupid');
    var initSettings = InitializationSettings(
      android: androidInitSettings,
    );
    _notifications.initialize(initSettings);
  }
}
