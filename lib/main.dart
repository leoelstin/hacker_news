import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacker_news/bloc/search/search_bloc.dart';
import 'package:hacker_news/model/service/news_service.dart';
import 'package:hacker_news/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SearchBloc>(
          create: (context) => SearchBloc(
            service: NewsService(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Hacker News',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}
