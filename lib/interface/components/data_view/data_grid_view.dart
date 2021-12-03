import 'package:flutter/material.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/collection/collection.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/title/titles.dart';
import 'package:smotreshka/interface/components/data_view/data_grid_item.dart';

class DataGridView extends StatelessWidget {
  final CollectionDataModel? titlesList;
  final TitlesDataModel? titlesDataModel;
  final String source;
  DataGridView({Key? key, required this.source, this.titlesList, this.titlesDataModel}) : super(key: key);

  final ScrollController _controller =  ScrollController();
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.builder(
        controller: _controller,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              mainAxisExtent: 300),
          physics: null,
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 16.0),
          itemCount: titlesList != null ? titlesList?.titlesList.length ?? 0 : titlesDataModel?.titles.length ?? 0,
          itemBuilder: (context, index) => DataGridItem(
                titleData: titlesList != null ? titlesList!.titlesList[index] : titlesDataModel!.titles[index],
                source: source,
              )),
    );
  }
}