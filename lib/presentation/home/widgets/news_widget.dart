
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSpaceSize.s10,),
                AppText(text:news.author=="null"?"Unknown Author": news.author.toString() ,color: ColorConstants.blackTextColor,size: FontSize.s16,),
                const SizedBox(height: AppSpaceSize.s5,),
                news.publishedAt!=null? Text( timeago.format(DateTime.parse(news.publishedAt.toString())) ,style:TextStyle(color: ColorConstants.grey,fontSize: FontSize.s12,)):Container(),
                const SizedBox(height: AppSpaceSize.s10,),
                AppText(text: news.title.toString(),color: ColorConstants.blackTextColor,size: FontSize.s20,),
                AppText(text: "Source: ${news.source.toString()}",color: ColorConstants.darkPrimary.withOpacity(0.9),size: FontSize.s20,),
                const SizedBox(height: AppSpaceSize.s10,),
                CustomeImageWidget(image: news.image,),
                const SizedBox(height: AppSpaceSize.s10,),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
