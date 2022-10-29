part of'widgets.dart';




class CustomeImageWidget extends StatelessWidget {
  const CustomeImageWidget({Key? key,required this.name}) : super(key: key);

  final String? name;
  @override
  Widget build(BuildContext context) {
    var li = name!.split(" ");
    return CircleAvatar(
      radius: 30,
      backgroundColor: ColorConstants.grey.withOpacity(0.3),
       child: AppText(text: li[0][0] + li[1][0] , color: Colors.black,),
    );
  }
}
