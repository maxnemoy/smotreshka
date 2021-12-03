import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smotreshka/components/vlc.dart';
import 'package:smotreshka/core/bloc/logic/bloc.dart';

class TvViewer extends StatelessWidget {
  const TvViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogicBloc, LogicState>(
      builder: (context, state){
        if( state.repository.channelList == null) return const Center(child: CircularProgressIndicator());
        return Row(
          children: [
            Expanded(
              flex: 3,
              child: state.repository.selectedChannel != null ? Center(child: VlcPlayer(url: state.repository.selectedChannel!.languages.first.renditions.first.url)) :
              const Center(child: Icon(Icons.tv_off),)
              ),
            Expanded(
              child: ListView.builder(
                itemCount:state.repository.channelList!.channels.length,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: SizedBox(
                      height: 50,
                      width: 100,
                      child: Stack(children: [
                        Image.network(state.repository.channelList!.channels[index].info.mediaInfo.thumbnails.first.url, width: 100, height: 50, fit: BoxFit.cover, filterQuality: FilterQuality.high,),
                        if(!state.repository.channelList!.channels[index].info.purchaseInfo.bought)
                        Container(width: 100, height: 50, color: Colors.black.withOpacity(0.8),),
                        if(!state.repository.channelList!.channels[index].info.purchaseInfo.bought)
                          Align(alignment: Alignment.center, child: Icon(Icons.lock, color: Theme.of(context).colorScheme.primary,))
                      ],),
                    ),
                    title: Text(state.repository.channelList!.channels[index].info.metaInfo.title),
                    onTap: (){
                      context.read<LogicBloc>().add(GetChannelPlayback(state.repository.channelList!.channels[index]));
                    },
                  );
                }),
            ),
          ],
        );
      },
    );
  }
}