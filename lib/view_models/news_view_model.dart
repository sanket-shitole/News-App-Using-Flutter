


import 'package:my_news/models/categories_news_model.dart';
import 'package:my_news/models/news_channel_headlines_model.dart';
import 'package:my_news/repository/news_repository.dart';

class NewsViewModel {

  final _rep = NewsRepository();

  Future<NewsChannelsHeadlinesModels> fetchNewChannelHeadlinesApi() async{
    final response = await _rep.fetchNewChannelHeadlinesApi();
    return response;
  }

  Future<CategoriesNewsModel> fetchCategoryNewsApi(String category) async{
    final response = await _rep.fetchCategoriesNewsApi(category);
    return response;
  }
}