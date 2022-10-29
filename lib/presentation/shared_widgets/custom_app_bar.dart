part of'shared_widgets.dart';


class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.size
  });


  final String title;
  final double size;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.black),
      automaticallyImplyLeading: true,
      backgroundColor: ColorConstants.primary,
      title: AppText(text: title,color: ColorConstants.blackTextColor,size: FontSize.s40,),
      actions: [
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>SearchScreen()));

        }, icon: Icon(Icons.search ,size: IconSize.i34,color: ColorConstants.iconColor, ))

      ],

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size);
}