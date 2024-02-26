import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class DynamicLinkService {
  Future<Uri> createDynamicLink() async {
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: 'https://htraza123.page.link',
      link: Uri.parse('https://htraza123.page.link/home'),
      androidParameters: const AndroidParameters(
        packageName: 'com.example.deep_linking',
        minimumVersion: 1,
      ),
    );
    final ShortDynamicLink shortLink =
        await FirebaseDynamicLinks.instance.buildShortLink(parameters);
    final Uri shortUrl = shortLink.shortUrl;
    return shortUrl;
  }
}
