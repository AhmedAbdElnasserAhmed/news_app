import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layout/news_app/cubit/cubit.dart';
import 'package:news_app/shared/components/components.dart';
import 'package:news_app/shared/cubit/cubit.dart';
import '../../modules/news_app/search/search_screen.dart';
import 'cubit/states.dart';

class NewsLayout extends StatelessWidget
{
  const NewsLayout({super.key});

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<NewsCubit , NewsStates>(
      listener: (context , stats) {},
      builder: (context , stats)
      {
        NewsCubit cubit = NewsCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'News App',
            ),
            actions: [
              IconButton(
                  onPressed: ()
                  {
                    navigateTo(context, SearchScreen(),);
                  },
                  icon: const Icon(
                    Icons.search,
                  ),
              ),
              IconButton(
                onPressed: ()
                {
                  AppCubit.get(context).changeAppMode();
                },
                icon: const Icon(
                  Icons.brightness_4_outlined,
                ),
              ),
            ],
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            onTap: (index){
              cubit.changeBottomNavBar(index);
            },
            items: cubit.bottomItems,
          ),
        );
      },
    );
  }
}
