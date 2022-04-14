import 'package:eight_barrels/helper/key_helper.dart';
import 'package:eight_barrels/helper/url_helper.dart';
import 'package:eight_barrels/model/default_model.dart';
import 'package:eight_barrels/model/product/discussion_list_model.dart';
import 'package:get/get_connect.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DiscussionService extends GetConnect {
  Future<Map<String, String>?> _headersAuth() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    var _token = _prefs.getString(KeyHelper.KEY_TOKEN);

    return {
      "Accept": "application/json",
      "Authorization": "Bearer $_token",
    };
  }

  Future<DiscussionListModel?> getDiscussionList({required int productId}) async {
    DiscussionListModel _model = new DiscussionListModel();

    try {
      Response _response = await get(
        URLHelper.discussionUrl(productId.toString()),
        headers: await _headersAuth(),
      );
      _model = DiscussionListModel.fromJson(_response.body);
    } catch (e) {
      print(e);
    }

    return _model;
  }

  Future<DefaultModel?> storeDiscussion({
    required int productId,
    required String comment,
  }) async {
    DefaultModel _model = new DefaultModel();

    final Map<String, dynamic> _data = {
      "id_product": productId,
      "comment": comment,
    };

    try {
      Response _response = await post(
        URLHelper.STORE_DISCUSSION_URL,
        _data,
        headers: await _headersAuth(),
      );
      _model = DefaultModel.fromJson(_response.body);
    } catch (e) {
      print(e);
    }

    return _model;
  }

  Future<DefaultModel?> deleteDiscussion({
    required String productId,
    required String comment,
  }) async {
    DefaultModel _model = new DefaultModel();

    try {
      Response _response = await get(
        URLHelper.STORE_DISCUSSION_URL,
        headers: await _headersAuth(),
      );
      _model = DefaultModel.fromJson(_response.body);
    } catch (e) {
      print(e);
    }

    return _model;
  }

}