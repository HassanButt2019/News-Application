import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_application/bloc/news_bloc/events/search_news.dart';
import 'package:news_application/bloc/news_bloc/news_bloc.dart';
import 'package:news_application/bloc/news_bloc/states/news_failure.dart';
import 'package:news_application/bloc/news_bloc/states/news_initial.dart';
import 'package:news_application/bloc/news_bloc/states/news_loading.dart';
import 'package:news_application/bloc/news_bloc/states/news_state.dart';
import 'package:news_application/bloc/news_bloc/states/searched_state.dart';
import 'package:news_application/presentation/constants/colors/colors.dart';
import 'package:news_application/presentation/constants/fonts/fonts.dart';
import 'package:news_application/presentation/constants/values/values.dart';
import 'package:news_application/presentation/shared_widgets/shared_widgets.dart';

part 'search_view.dart';