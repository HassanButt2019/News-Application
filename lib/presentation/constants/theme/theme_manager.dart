
part of'theme.dart';



ThemeData getApplicationTheme(){
  return ThemeData(
    primaryColor: ColorConstants.primary,
    primaryColorLight: ColorConstants.primaryOpacity70,
    primaryColorDark: ColorConstants.darkPrimary,
    disabledColor: ColorConstants.grey1,
    accentColor: ColorConstants.grey,
      splashColor: ColorConstants.primaryOpacity70,
    cardTheme: CardTheme(
      color: ColorConstants.primary,
      shadowColor: ColorConstants.grey,
      elevation: AppSize.s4,
    ),
    //app bar theme
    appBarTheme: AppBarTheme(
      titleTextStyle: getRegularStyle(color: ColorConstants.primary,fontSize: FontSize.s16),
      centerTitle: true,
      color: ColorConstants.primary,
      elevation: AppSize.s4,
      shadowColor: ColorConstants.primaryOpacity70,
  ),
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorConstants.grey1,
      buttonColor: ColorConstants.primary,
      splashColor: ColorConstants.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorConstants.primary,),
        primary: ColorConstants.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s12)  )
      ),
    ),
    textTheme: TextTheme(
        headline1: getSemiBoldStyle(
            color: ColorConstants.darkGrey, fontSize: FontSize.s16),
        subtitle1: getMediumStyle(
            color: ColorConstants.lightGrey, fontSize: FontSize.s14),
        caption: getRegularStyle(color: ColorConstants.grey1),
        bodyText1: getRegularStyle(color: ColorConstants.grey)),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding:const EdgeInsets.all(AppPadding.p8),
        hintStyle: getRegularStyle(color: ColorConstants.grey1),
        labelStyle: getMediumStyle(color: ColorConstants.darkGrey),
        errorStyle: getRegularStyle(color: ColorConstants.error),
        enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: ColorConstants.grey, width: AppSize.s1_5),
            borderRadius:const BorderRadius.all(Radius.circular(AppSize.s8))),
        focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: ColorConstants.primary, width: AppSize.s1_5),
            borderRadius:const BorderRadius.all(Radius.circular(AppSize.s8))),
        errorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: ColorConstants.error, width: AppSize.s1_5),
            borderRadius:const BorderRadius.all(Radius.circular(AppSize.s8))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: ColorConstants.primary, width: AppSize.s1_5),
            borderRadius:const BorderRadius.all(Radius.circular(AppSize.s8))),
      )


  );
}