import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smotreshka/core/bloc/logic/bloc.dart';
import 'package:smotreshka/core/repository/cinemaRepository.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogicBloc, LogicState>(
      builder: (context, state) {
        if(state.repository.selectedItem == null){
          return const Center(child: CircularProgressIndicator(),);
        }

        if(state.repository.selectedItem!.details.mediaItems.isNotEmpty ){
          //state.repository.selectedItem!.details.mediaItems.first.playbackMethods.first.params.forEach((element) {print(element.key);});
        }

        if (state.state == LogicDataState.isLoad ||
            state.repository.selectedItem == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        
        return Stack(
          children: [
            Image.network(
              state.repository.selectedItem!.preview.thumbnails[0].path,
              filterQuality: FilterQuality.high,
              fit: BoxFit.fitWidth,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.5,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.5 + 1,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).scaffoldBackgroundColor.withOpacity(0.7),
                  Theme.of(context).scaffoldBackgroundColor,
                ],
              )),
            ),
            Positioned.fill(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          state.repository.selectedItem!.preview.posters[0].path,
                          filterQuality: FilterQuality.high,
                          //fit: BoxFit.cover,
                          width: 300,
                          height: MediaQuery.of(context).size.height / 2,
                        ),
                        
                      ]),
                ),
                  Expanded(
                    child: Padding(
                       padding: const EdgeInsets.only(top: 60, right: 20),
                       child: Align(
                         alignment: Alignment.centerLeft,
                         child: ConstrainedBox(
                           constraints: const BoxConstraints(maxWidth: 600),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(state.repository.selectedItem!.preview.title, style: Theme.of(context).textTheme.headline4!.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),),
                                const SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Text(state.repository.selectedItem!.preview.categories[0].title),
                                  //Text(state.repository.selectedItem!.preview.duration.toString()),
                                  Text(state.repository.selectedItem!.preview.ratingImdb.toString()),
                                ],),
                                
                                const SizedBox(height: 20,),
                                Text(state.repository.selectedItem!.details.description, style: Theme.of(context).textTheme.bodyText1!,),
                                     
                                const Spacer(),
                                ElevatedButton.icon(onPressed: (){
                                  
                  
                                }, icon: const Icon(Icons.play_arrow_rounded), label: Text("Смотреть"))
                                
                              ],
                            ),
                          
                                     ),
                       ),
                     ),
                  ),
                 
              ],
            )),
          ],
        );
      },
    );
  }
}
