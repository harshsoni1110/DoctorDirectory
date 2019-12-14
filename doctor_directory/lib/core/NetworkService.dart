import 'package:chopper/chopper.dart';
import 'package:flutter_network/core/BuiltValueConverter.dart';
import 'package:flutter_network/ui/specialties/data/Specialties.dart';

part 'NetworkService.chopper.dart';

@ChopperApi()
abstract class NetworkService extends ChopperService {
  @Get(path: "/specialties")
  Future<Response<Specialties>> getSpecialties(
      {@Query() String user_key, @Query() int limit = 20, @Query() int skip});

  static NetworkService create() {
    final client = ChopperClient(
        baseUrl: 'https://api.betterdoctor.com/2016-03-01',
        services: [
          _$NetworkService(),
        ],
        interceptors: [HttpLoggingInterceptor()],
        converter: BuiltValueConverter());

    return _$NetworkService(client);
  }
}
