
part of'widgets.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({Key? key, required this.news}) : super(key: key);

  final News news;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:AppPadding.p20,right: AppPadding.p20),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>NewsDetailView(news: news,) ));
        },
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpaceSize.s10)),
          color: ColorConstants.primary,
          child: Padding(
            padding:  EdgeInsets.only(left:AppPadding.p20,right: AppPadding.p20),
            child: ListTile(
              trailing: Icon(Icons.arrow_forward_ios , color: Colors.black , size: 20,),
              leading:CustomeImageWidget(name: news.author=="null"?"Unknown Author": news.author.toString() ,),
              title:AppText(text:news.author=="null"?"Unknown Author": news.author.toString() ,color: ColorConstants.blackTextColor,size: FontSize.s16,),
              subtitle: Text( "03343xxxxx",style:TextStyle(color: ColorConstants.grey,fontSize: FontSize.s12,)),
            ),
          ),

        ),
      ),
    );
  }
}
