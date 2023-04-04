import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GooglePlaceNearbySearchCall {
  static Future<ApiCallResponse> call({
    dynamic? locationJson,
  }) {
    final location = _serializeJson(locationJson);

    return ApiManager.instance.makeApiCall(
      callName: 'GooglePlace NearbySearch',
      apiUrl:
          'https://maps.googleapis.com/maps/api/place/nearbysearch/output?parameters',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Location': location,
        'Radius': 5000,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SendEmailCall {
  static Future<ApiCallResponse> call({
    String? toEmail = '',
    String? subject = '',
    String? content = '',
  }) {
    final body = '''
{
  "personalizations": [
    {
      "to": [
        {
          "email": "${toEmail}"
        }
      ],
      "subject": "${subject}"
    }
  ],
  "content": [
    {
      "type": "text/plain",
      "value": "${content}"
    }
  ],
  "from": {
    "email": "flutterflowexpert@outlook.com",
    "name": "Admin"
  },
  "reply_to": {
    "email": "flutterflowexpert@outlook.com",
    "name": "Admin"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendEmail',
      apiUrl: 'https://api.sendgrid.com/v3/mail/send',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
