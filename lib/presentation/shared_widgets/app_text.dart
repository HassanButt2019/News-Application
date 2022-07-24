part of'shared_widgets.dart';


class AppText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const AppText(
      {Key? key,
      this.size = 16,
      required this.text,
      this.color = Colors.lightGreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
