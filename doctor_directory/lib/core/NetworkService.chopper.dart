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
  Future<Response<Specialties>> getSpecialties(
      {String user_key, int limit = 20, int skip}) {
    final $url = '/specialties';
    final $params = <String, dynamic>{
      'user_key': user_key,
      'limit': limit,
      'skip': skip
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Specialties, Specialties>($request);
  }
}
