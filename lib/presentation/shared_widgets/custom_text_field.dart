part of'shared_widgets.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    TextEditingController? controller,
    this.initialValue,
    this.onChange,
    this.onTap,
    this.suffixIcon,
    this.isEraseable = false,
    this.suffixIconColor,
    this.suffixIconSize,
    this.suffixIconConstraints,
    this.labelText,
    this.hintText,
    this.hintStyle,
    this.enabledBorder = const OutlineInputBorder(),
    this.focusedBorder = const OutlineInputBorder(),
    this.isDense = true,
    this.readOnly = false,
    this.alignLabelWithText,
    this.maxLines = 1,
    this.minLines,
    this.keyboardType,
    this.border = const OutlineInputBorder(),
    this.contentPadding,
    this.style,
    this.loading = false,
    this.loadingWidget,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController? _controller;
  final String? initialValue;
  final ValueChanged<String>? onChange;
  final VoidCallback? onTap;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final double? suffixIconSize;
  final BoxConstraints? suffixIconConstraints;
  final String? labelText;
  final String? hintText;
  final TextStyle? hintStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final bool isDense;
  final bool readOnly;
  final bool? alignLabelWithText;
  final int? maxLines;
  final int? minLines;
  final TextInputType? keyboardType;
  final InputBorder? border;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? style;
  final bool isEraseable;
  final bool loading;
  final Widget? loadingWidget;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      decoration: InputDecoration(
        enabledBorder: border,
        hintText: hintText,
        hintStyle: hintStyle,
        isDense: isDense,
        contentPadding: contentPadding,
        suffixIconConstraints: suffixIconConstraints,
        labelText: labelText,
        border: border,
        alignLabelWithHint: alignLabelWithText,
      ),
      onTap: onTap,
      readOnly: readOnly,
      keyboardType: keyboardType,
      controller: _controller,
      onChanged: onChange,
      style: style,
      maxLines: maxLines,
      minLines: minLines,
    );
  }
}