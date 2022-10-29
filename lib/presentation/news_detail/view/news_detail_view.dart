part of 'view.dart';

class NewsDetailView extends StatelessWidget {
  const NewsDetailView({Key? key, required this.news}) : super(key: key);

  final News news;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Customer Detail",
        size: 100,
      ),
      backgroundColor: ColorConstants.primary,
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: AppSpaceSize.s20,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: AppSpaceSize.s20, right: AppSpaceSize.s20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: "Customer Name",
                  size: FontSize.s20,
                  color: ColorConstants.blackTextColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      text: "Phone No: 0334xxxxx",
                      size: FontSize.s16,
                      color: ColorConstants.grey1,
                    ),
                    Text(
                        timeago.format(
                            DateTime.parse(news.publishedAt.toString())),
                        style: TextStyle(
                          color: ColorConstants.grey,
                          fontSize: FontSize.s12,
                        ))
                  ],
                ),
                const SizedBox(
                  height: AppSpaceSize.s25,
                ),
                Text(
                  """Customer Information means any information contained on a customer's application or other form and all nonpublic personal information about a customer that a party receives from the other party. """,
                  maxLines: 8,
                  softWrap: true,
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: FontSize.s14,
                      color: ColorConstants.blackTextColor.withOpacity(0.9),
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: AppSpaceSize.s25,
                ),
                AppText(
                  text: "Shalwar Kameez",
                  size: FontSize.s20,
                  color: ColorConstants.blackTextColor,
                ),
                const SizedBox(
                  height: AppSpaceSize.s25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    informationWidget(
                      head: 'Lambai',
                      widget: AppText(
                        text: "40",
                        size: FontSize.s16,
                        color: ColorConstants.grey,
                      ),
                    ),
                    informationWidget(
                      head: 'Shoulder',
                      widget: AppText(
                        text: "19.5",
                        size: FontSize.s16,
                        color: ColorConstants.grey,
                      ),
                    ),
                    informationWidget(
                      head: 'Asteen',
                      widget: AppText(
                        text: "23.5",
                        size: FontSize.s16,
                        color: ColorConstants.grey,
                      ),
                    ),
                    informationWidget(
                      head: 'Chest',
                      widget: AppText(
                        text: "28",
                        size: FontSize.s16,
                        color: ColorConstants.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSpaceSize.s15,
                ),
                AppText(
                  text: "Shalwar Kameez",
                  size: FontSize.s20,
                  color: ColorConstants.blackTextColor,
                ),
                const SizedBox(
                  height: AppSpaceSize.s25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    informationWidget(
                      head: 'Band plate',
                      widget: AppText(
                        text: "+0",
                        size: FontSize.s16,
                        color: ColorConstants.grey,
                      ),
                    ),
                    informationWidget(
                      head: 'Awami plate',
                      widget: AppText(
                        text: "1/D",
                        size: FontSize.s16,
                        color: ColorConstants.grey,
                      ),
                    ),
                    informationWidget(
                      head: 'Color Size',
                      widget: AppText(
                        text: "23.5",
                        size: FontSize.s16,
                        color: ColorConstants.grey,
                      ),
                    ),
                    informationWidget(
                      head: 'Color Style',
                      widget: AppText(
                        text: "28",
                        size: FontSize.s16,
                        color: ColorConstants.grey,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: AppSpaceSize.s15,
                ),
                AppText(
                  text: "Pant",
                  size: FontSize.s20,
                  color: ColorConstants.blackTextColor,
                ),
                const SizedBox(
                  height: AppSpaceSize.s25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    informationWidget(
                      head: 'Length',
                      widget: AppText(
                        text: "20",
                        size: FontSize.s16,
                        color: ColorConstants.grey,
                      ),
                    ),
                    informationWidget(
                      head: 'Waist',
                      widget: AppText(
                        text: "20",
                        size: FontSize.s16,
                        color: ColorConstants.grey,
                      ),
                    ),
                    informationWidget(
                      head: 'Hip',
                      widget: AppText(
                        text:
                            "inside",
                        size: FontSize.s16,
                        color: ColorConstants.grey,
                      ),
                    ),
                    informationWidget(
                      head: 'Knee',
                      widget: AppText(
                        text: "23",
                        size: FontSize.s16,
                        color: ColorConstants.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  Column informationWidget({String? head, Widget? widget}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppText(
          text: head.toString(),
          size: FontSize.s16,
          color: ColorConstants.blackTextColor,
        ),
        const SizedBox(
          height: AppSpaceSize.s10,
        ),
        widget!
      ],
    );
  }
}
