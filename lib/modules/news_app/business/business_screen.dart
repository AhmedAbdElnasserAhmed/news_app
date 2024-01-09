import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layout/news_app/cubit/cubit.dart';
import 'package:news_app/layout/news_app/cubit/states.dart';
import 'package:news_app/shared/components/components.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context).business;

        return ScreenTypeLayout.builder(
          mobile: (p0) => articleBuilder(list, context),
          desktop: (p0) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: articleBuilder(list, context),
              ),
              if(list.isNotEmpty && NewsCubit.get(context).businessSelectedItem != null && NewsCubit.get(context).isSelectedItem)
                Expanded(
                  child: Container(
                    color: Colors.grey[200],
                    height: double.infinity,
                    child: Padding(
                    padding: const EdgeInsets.all(30.0),
                      child: Text(
                      list[NewsCubit.get(context).businessSelectedItem!]['description']
                          != null
                          ? '${list[NewsCubit.get(context).businessSelectedItem!]['description']}'
                          : 'No description',
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          breakpoints: const ScreenBreakpoints(
            desktop: 1200.0,
            tablet: 600.0,
            watch: 100.0,
          ),
        );
      },
    );
  }
}
