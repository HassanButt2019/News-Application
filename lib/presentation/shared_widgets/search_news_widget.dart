


part of'shared_widgets.dart';

class SearchedNewsWidget extends StatelessWidget {
  const SearchedNewsWidget({Key? key ,required this.news}) : super(key: key);

  final News news;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) =>
             NewsDetailView(news: news,))
        );
      },
      // leading: CachedNetworkImage(
      //   imageUrl: 'https://imagez.tmz.com/image/fa/4by3/2020/08/04/fad55ee236fc4033ba324e941bb8c8b7_md.jpg',
      //   imageBuilder: (context, imageProvider) => Container(
      //     width: 80.0,
      //     height: 80.0,
      //     decoration: BoxDecoration(
      //       shape: BoxShape.circle,
      //       image: DecorationImage(
      //           image: imageProvider, fit: BoxFit.cover),
      //     ),
      //   ),
      //   placeholder: (context, url) => CircularProgressIndicator(),
      //   errorWidget: (context, url, error) => Icon(Icons.error),
      // ),
      title: Text(news.title.toString(),maxLines: 1 , overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold ,color: ColorConstants.blackTextColor),),
      subtitle: Text(news.source.toString(),style: TextStyle(fontWeight: FontWeight.bold ,color:ColorConstants.blackTextColor)),
      trailing: Text(news.publishedAt=="null"?"Unknown":timeago.format(DateTime.parse(news.publishedAt.toString())) ,style: TextStyle(fontWeight: FontWeight.bold ,color: ColorConstants.blackTextColor),),
    );
  }
}
