import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_application/bloc/news_bloc/events/get_news.dart';
import 'package:news_application/bloc/news_bloc/news_bloc.dart';
import 'package:news_application/bloc/news_bloc/states/news_failure.dart';
import 'package:news_application/bloc/news_bloc/states/news_initial.dart';
import 'package:news_application/bloc/news_bloc/states/news_loaded.dart';
import 'package:news_application/bloc/news_bloc/states/news_loading.dart';
import 'package:news_application/bloc/news_bloc/states/news_state.dart';
import 'package:news_application/data/repository/news_repository.dart';
import 'package:news_application/presentation/constants/colors/colors.dart';
import 'package:news_application/presentation/home/widgets/widgets.dart';
import 'package:news_application/presentation/shared_widgets/shared_widgets.dart';

part 'home_view.dart';