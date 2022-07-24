part of'widgets.dart';


class DetailImageWidget extends StatelessWidget {
  const DetailImageWidget({Key? key,required this.img}) : super(key: key);
final String? img;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: img=="null" ?"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfFsim7mJetzNBK672yN0qjry6QJot2drW_w&usqp=CAU" :img.toString() ,
          imageBuilder: (context, imageProvider) => Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Center(child: Icon(Icons.error)),
        ),
        Padding(
          padding: const EdgeInsets.only(top:AppSpaceSize.s35,left:AppSpaceSize.s20 ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 35,
              width: 35,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle
              ),
              child:  IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back) , iconSize: IconSize.i20,color: ColorConstants.iconColor,),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:AppSpaceSize.s35,right:AppSpaceSize.s20 ),
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 35,
              width: 35,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle
              ),
              child:  IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SearchScreen()));
              }, icon: Icon(Icons.search) , iconSize: IconSize.i20,color: ColorConstants.iconColor,),
            ),
          ),
        ),
      ],
    );
  }
}
