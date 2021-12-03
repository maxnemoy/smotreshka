import 'package:flutter/material.dart';
import 'package:smotreshka/core/bloc/logic/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smotreshka/core/repository/cinemaRepository.dart';
import 'package:smotreshka/interface/components/data_view/data_view.dart';

class HomeViewer extends StatelessWidget {
  final String source;
  const HomeViewer({Key? key, required this.source}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogicBloc, LogicState>(
      builder: (context, state) {
        if (state.state == LogicDataState.isLoad ||  
        state.repository.homeCollection == null) return const Center(child: CircularProgressIndicator());
        return Padding(
          padding: const EdgeInsets.only(top: 60),
          child: DataView(collection: state.repository.homeCollection!.vodCollections, source: source, isCinema: false,),
        );
      },
    );
  }
}