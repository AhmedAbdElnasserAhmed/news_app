import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layout/news_app/cubit/states.dart';
import '../../../modules/news_app/business/business_screen.dart';
import '../../../modules/news_app/science/science_screen.dart';
import '../../../modules/news_app/sports/sports_screen.dart';
import '../../../shared/network/remote/dio_helper.dart';

class NewsCubit extends Cubit<NewsStates>
{
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = const [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.business,
      ),
      label: 'Business',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sports,
      ),
      label: 'Sports',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.science,
      ),
      label: 'Science',
    ),
  ];

  List<Widget> screens = const [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
  ];

  void changeBottomNavBar(int index)
  {
    currentIndex = index;

    if(index == 1) getSports();

    if(index == 2) getScience();

    emit(NewsBottomNavState());
  }



  List<dynamic> business = [];
  int? businessSelectedItem;
  bool isSelectedItem = false;
  // List<bool> businessSelectedItem = [];

  void isOrIsNotSelectedItem()
  {
    isSelectedItem = !isSelectedItem;
    emit(NewsIsSelectBusinessItemState());
  }

  void getBusiness()
  {
    emit(NewsGetBusinessLoadingState());

    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country':'us',
        'category':'business',
        'apiKey':'2f4ef473ffaf4c59ae90b69100fdef44',
      },
    ).then((value)
    {
        business = value.data['articles'];
        // business.forEach((element)
        // {
        //   businessSelectedItem.add(false);
        // });
        if (kDebugMode)
        {
          print(business[0]['title']);
        }
        emit(NewsGetBusinessSuccessState());
    }).catchError((error)
    {
        if (kDebugMode) {
          print(error.toString());
        }
        emit(NewsGetBusinessErrorState(error.toString()));
    });
  }

  void selectBusinessItem(index)
  {
    businessSelectedItem = index;
    // for(int i = 0;  i < businessSelectedItem.length; i++)
    // {
    //   if(i == index)
    //   {
    //     businessSelectedItem[i] = true;
    //   }else{
    //     businessSelectedItem[i] = false;
    //   }
    // }
    emit(NewsSelectBusinessItemState());
  }

  List<dynamic> sports = [];

  void getSports()
  {
    emit(NewsGetSportsLoadingState());

    if(sports.isEmpty)
    {
      DioHelper.getData(
        url: 'v2/top-headlines',
        query: {
          'country':'us',
          'category':'sports',
          'apiKey':'2f4ef473ffaf4c59ae90b69100fdef44',
        },
      ).then((value)
      {
        sports = value.data['articles'];
        if (kDebugMode) {
          print(sports[0]['title']);
        }
        emit(NewsGetSportsSuccessState());
      }).catchError((error)
      {
        if (kDebugMode) {
          print(error.toString());
        }
        emit(NewsGetSportsErrorState(error.toString()));
      });
    } else
      {
        emit(NewsGetSportsSuccessState());
      }

  }

  List<dynamic> science = [];

  void getScience()
  {
    emit(NewsGetScienceLoadingState());

    if(science.isEmpty)
    {
      DioHelper.getData(
        url: 'v2/top-headlines',
        query: {
          'country':'us',
          'category':'science',
          'apiKey':'2f4ef473ffaf4c59ae90b69100fdef44',
        },
      ).then((value)
      {
        science = value.data['articles'];
        if (kDebugMode) {
          print(science[0]['title']);
        }
        emit(NewsGetScienceSuccessState());
      }).catchError((error)
      {
        if (kDebugMode) {
          print(error.toString());
        }
        emit(NewsGetScienceErrorState(error.toString()));
      });
    } else
      {
        emit(NewsGetScienceSuccessState());
      }

  }

  List<dynamic> search = [];

  void getSearch(String value)
  {
    emit(NewsGetSearchLoadingState());

    search = [];

    DioHelper.getData(
      url: 'v2/everything',
      query: {
        'q':value,
        'apiKey':'65f7f556ec76449fa7dc7c0069f040ca',
      },
    ).then((value)
    {
      search = value.data['articles'];
      if (kDebugMode) {
        print(search[0]['title']);
      }
      emit(NewsGetSearchSuccessState());
    }).catchError((error)
    {
      if (kDebugMode) {
        print(error.toString());
      }
      emit(NewsGetSearchErrorState(error.toString()));
    });

  }
}