import 'dart:io';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layout/news_app/cubit/cubit.dart';
import 'package:news_app/shared/bloc_observer.dart';
import 'package:news_app/shared/cubit/cubit.dart';
import 'package:news_app/shared/cubit/states.dart';
import 'package:news_app/shared/network/local/cache_helper.dart';
import 'package:news_app/shared/network/remote/dio_helper.dart';
import 'package:news_app/shared/styles/themes.dart';
import 'layout/news_app/news_layout.dart';

Future testWindowFunctions() async {
  Size size = await DesktopWindow.getWindowSize();
  print(size);
  // await DesktopWindow.setWindowSize(const Size(500,500));
  await DesktopWindow.setWindowSize(const Size(650,1000));

  await DesktopWindow.setMinWindowSize(const Size(350,650));
  await DesktopWindow.setMaxWindowSize(const Size(800,800));

  await DesktopWindow.resetMaxWindowSize();
  await DesktopWindow.toggleFullScreen();
  bool isFullScreen = await DesktopWindow.getFullScreen();
  await DesktopWindow.setFullScreen(true);
  await DesktopWindow.setFullScreen(false);
}

void main() async {
  // بيتأكد ان كل حاجه هنا في الميثود خلصت و بعدين يتفح الابلكيشن
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows)
  {
    testWindowFunctions();

    // await DesktopWindow.setMinWindowSize(
    //   const Size(
    //     350,
    //     650,
    //   ),
    // );
  }

  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();

  bool? isDark = CacheHelper.getData(key: 'isDark');

  runApp(MyApp(isDark));
}

class MyApp extends StatelessWidget {
  bool? isDark;

  MyApp(this.isDark, {super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewsCubit()
            ..getBusiness()
            ..getSports()
            ..getScience(),
        ),
        BlocProvider(
          create: (BuildContext context) => AppCubit()
            ..changeAppMode(
              fromShared: isDark,
            ),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode:
                AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: const Directionality(
              textDirection: TextDirection.ltr,
              child: NewsLayout(),
            ),
          );
        },
      ),
    );
  }
}
