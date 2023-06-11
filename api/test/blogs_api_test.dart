import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for BlogsApi
void main() {
  final instance = Openapi().getBlogsApi();

  group(BlogsApi, () {
    //Future<Blogs> blogGet() async
    test('test blogGet', () async {
      // TODO
    });

    //Future<Blogs> blogIdDelete(int id) async
    test('test blogIdDelete', () async {
      // TODO
    });

    //Future<Blogs> blogPatch(BlogUpdateRequest blogUpdateRequest) async
    test('test blogPatch', () async {
      // TODO
    });

    //Future<Blogs> blogPost(BlogRequest blogRequest) async
    test('test blogPost', () async {
      // TODO
    });

  });
}
