import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_news/models/categories_news_model.dart';
import 'package:my_news/models/news_channel_headlines_model.dart';


class NewsRepository {

  Future<NewsChannelsHeadlinesModels> fetchNewChannelHeadlinesApi()async{

    String url = 'https://newsapi.org/v2/top-headlines?country=in&apiKey=fc15dea595b24c8e993ad70230f85f48' ;
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      final body = jsonDecode(response.body);
      return NewsChannelsHeadlinesModels.fromJson(body);
    }
    throw Exception('Error');
  }

  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category)async{

    String url = 'https://newsapi.org/v2/everything?q=$category&apiKey=fc15dea595b24c8e993ad70230f85f48' ;
    print(url);
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      final body = jsonDecode(response.body);
      return CategoriesNewsModel.fromJson(body);
    }
    throw Exception('Error');
  }
}