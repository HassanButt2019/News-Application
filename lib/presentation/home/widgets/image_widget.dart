part of'widgets.dart';




class CustomeImageWidget extends StatelessWidget {
  const CustomeImageWidget({Key? key,required this.image}) : super(key: key);

  final String? image;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl:image=="null"?"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfFsim7mJetzNBK672yN0qjry6QJot2drW_w&usqp=CAU" :image.toString(),
      imageBuilder: (context, imageProvider) => Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(AppSize.s12),
          image: DecorationImage(
              image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Center(child: Icon(Icons.error)),
    );
  }
}
