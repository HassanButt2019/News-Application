import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_application/bloc/news_bloc/news_bloc.dart';
import 'package:news_application/data/repository/news_repository.dart';

import 'app/app.dart';

void main() {

  runApp(RepositoryProvider(
      create: (_)=>NewsRepository(),
      child: BlocProvider(
          create: (__) =>
              NewsBloc(RepositoryProvider.of<NewsRepository>(__)),
          child: MyApp())));

}
