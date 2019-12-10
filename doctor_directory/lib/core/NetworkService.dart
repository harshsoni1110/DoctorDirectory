import 'package:chopper/chopper.dart';

part 'NetworkService.chopper.dart';

@ChopperApi()
abstract class NetworkService extends ChopperService {
  @Get(path: "/specialties")
  Future<Response> getSpecialties(
    @Query() String user_key
  );

  static NetworkService create() {
    final client = ChopperClient(
        baseUrl: 'https://api.betterdoctor.com/2016-03-01',
        services: [
          _$NetworkService(),
        ],
        interceptors: [HttpLoggingInterceptor()],
        converter: JsonConverter());

    return _$NetworkService(client);
  }
}
