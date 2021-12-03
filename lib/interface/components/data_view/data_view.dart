import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:smotreshka/core/bloc/logic/bloc.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/category/categories.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/collection/collection.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/title/titles.dart';
import 'package:smotreshka/interface/components/data_view/data_grid_view.dart';


class DataView extends StatelessWidget {
  final List<CollectionDataModel>? collection;
  final TitlesDataModel? titlesData;
  final CategoriesDataModel? categories;
  final bool isCinema;
  final String source;
  const DataView({Key? key, this.collection, this.categories, this.titlesData, required this.source, this.isCinema = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: isCinema ? categories!.categories.length : collection!.length,
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              indicatorColor: Theme.of(context).colorScheme.primary,
              labelColor: Theme.of(context).colorScheme.primary,
              onTap: (v){
                if(isCinema){
                  context.read<LogicBloc>().add(GetAllTitlesInSource(source, categories!.categories[v].id));
                }
                //print(isCinema ? categories!.categories[v].title : collection![v].caption)
              },
              tabs: isCinema ? categories!.categories.map((e) => Tab(
                        text: e.title,
                      )).toList() : collection!
                  .map((e) => Tab(
                        text: e.caption,
                      ))
                  .toList(),
            ),
            Expanded(
              child: TabBarView(
                children: isCinema ? categories!.categories.map((e) => DataGridView(
                          titlesDataModel: titlesData,
                          source: source,
                        )).toList() : collection!
                    .map((e) => DataGridView(
                          source: e.vodSource,
                          titlesList: e,
                        ))
                    .toList(),
              ),
            )
          ],
        ));
  }
}