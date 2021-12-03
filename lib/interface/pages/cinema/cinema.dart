import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smotreshka/core/bloc/logic/bloc.dart';
import 'package:smotreshka/interface/components/data_view/data_view.dart';

class CinemaViewer extends StatelessWidget {
  final String source;
  const CinemaViewer({Key? key, required this.source}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogicBloc, LogicState>(builder: (context, state){
      if(state.repository.categoriesList == null){
        return const Center(child: CircularProgressIndicator(),);
      }

      return  Padding(
        padding: const EdgeInsets.only(top: 60),
        child: DataView(isCinema: true, categories: state.repository.categoriesList, source: source, titlesData: state.repository.titlesList,),
      );
    });
  }
}