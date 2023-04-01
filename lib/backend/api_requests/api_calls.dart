import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ZipAPICall {
  static Future<ApiCallResponse> call({
    String? zipcode = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'zipAPI',
      apiUrl: 'https://zipcloud.ibsnet.co.jp/api/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'zipcode': zipcode,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic address1(dynamic response) => getJsonField(
        response,
        r'''$.results[:].address1''',
      );
  static dynamic address2(dynamic response) => getJsonField(
        response,
        r'''$.results[:].address2''',
      );
  static dynamic address3(dynamic response) => getJsonField(
        response,
        r'''$.results[:].address3''',
      );
}

class ChatgptapiCall {
  static Future<ApiCallResponse> call({
    String? content = '',
  }) {
    final body = '''
{
  "model": "gpt-3.5-turbo",
  "messages": [
    {
      "role": "user",
      "content": "${content}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'chatgptapi',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Autorization':
            'Bearer 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',
        'content-type': 'application/json;charset=UTF-8',
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
