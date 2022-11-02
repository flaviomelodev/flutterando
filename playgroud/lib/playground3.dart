// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';

void main() {
  execute(DioClientHttp());
}

void execute(ClientHttp client) async {
  final response =
      await client.get('https://jsonplaceholder.typicode.com/todos');
}

abstract class ClientHttp {
  Future get(String url);
  Future post(String url);
}

class DioClientHttp implements ClientHttp {
  final dio = Dio();

  @override
  Future get(String url) async {
    final response = await dio.get(url);
    print(response.data);
  }

  @override
  Future post(String url) {
    // TODO: implement post
    throw UnimplementedError();
  }
}
