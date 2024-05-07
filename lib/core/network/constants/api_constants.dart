abstract class APIBase {
  static const url = 'https://api.freecurrencyapi.com';
  // static const apikey = "fca_live_K9m2dfVNZ9oTIkLZZc8ufa0rNGWEhfMjlK7r71IL"; //pro
  static const apikey = "fca_live_P9Ge5TkWac3PCYWvXD3DdNd7yx0Nczy1cMlYiScO"; //dev
  static const version = '/v1';
}

abstract class HeaderParameterKeys {
  static const authorization = "Authorization";
  static const contentType = "Content-Type";
  static const accept = "Accept";
  static const userAgent = "User-Agent";
}

abstract class HeaderValues {
  static const applicationJson = "application/json";
  static const applicationJsonCharsetUtf8 = "application/json, charset=utf-8";
  static const applicationFormUrlencoded = "application/x-www-form-urlencoded";
  static const applicationJsonTextPlain = "application/json, text/plain, */*";
}