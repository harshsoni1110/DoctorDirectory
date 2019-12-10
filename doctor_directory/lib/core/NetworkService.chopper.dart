// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NetworkService.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$NetworkService extends NetworkService {
  _$NetworkService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NetworkService;

  @override
  Future<Response> getSpecialties(String user_key) {
    final $url = '/specialties';
    final $params = <String, dynamic>{'user_key': user_key};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
