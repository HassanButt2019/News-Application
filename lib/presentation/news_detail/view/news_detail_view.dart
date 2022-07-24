part of'view.dart';


class NewsDetailView extends StatelessWidget {
  const NewsDetailView({Key? key,required this.news}) : super(key: key);

  final News news;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primary,
      body: SingleChildScrollView(
          child: Column(
            children: [
             DetailImageWidget(img: news.image,),
              const SizedBox(
                height: AppSpaceSize.s20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: AppSpaceSize.s20,right:AppSpaceSize.s20 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: news.title.toString(),size: FontSize.s20,color: ColorConstants.blackTextColor,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(text:news.author=="null"?"Unknown Author" :news.author.toString(),size: FontSize.s16,color: ColorConstants.blackTextColor,),
                        news.publishedAt!="null"? Text( timeago.format(DateTime.parse(news.publishedAt.toString())) ,style:TextStyle(color: ColorConstants.grey,fontSize: FontSize.s12,)):Container(),

                      ],
                    ),
                    const SizedBox(
                      height: AppSpaceSize.s25,
                    ),
                    Text(news.description.toString(),
                      maxLines: 8,
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: FontSize.s14 , color: ColorConstants.blackTextColor.withOpacity(0.9), fontWeight: FontWeight.normal),),
                    const SizedBox(
                      height: AppSpaceSize.s25,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        informationWidget(
                          head: 'Category',
                          widget: AppText(text: news.category.toString().toUpperCase(),size: FontSize.s16,color: ColorConstants.grey,),
                        ),
                        informationWidget(
                          head: 'language',
                          widget: AppText(text: news.language.toString().toUpperCase(),size: FontSize.s16,color: ColorConstants.grey,),
                        ),
                        informationWidget(
                          head: 'Country',
                          widget: AppText(text: news.country.toString().toUpperCase(),size: FontSize.s16,color:ColorConstants.grey,),
                        ),
                        informationWidget(
                          head: 'Source',
                          widget: AppText(text: news.source.toString(),size: FontSize.s16,color: ColorConstants.grey,),
                        ),

                      ],
                    ),
                    const SizedBox(
                      height: AppSpaceSize.s15,
                    ),
                  ],
                ),
              ),


            ],
          )
      ),
    );
  }

  Column informationWidget({String? head,Widget? widget}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppText(text: head.toString(),size: FontSize.s16,color: ColorConstants.blackTextColor,),
        const SizedBox(height:AppSpaceSize.s5,),
        widget!
      ],
    );
  }


}
