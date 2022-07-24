part of '../../home/widgets/widgets.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.80,
      child: CustomTextField(
        controller: _controller,
        contentPadding: const EdgeInsets.all(12.0),
        isDense: false,
        suffixIcon: Icons.search,
        isEraseable: true,
        suffixIconColor: ColorConstants.iconColor ,
        suffixIconSize: 18,
        hintText: 'Search',
        hintStyle: TextStyle(color: ColorConstants.grey),
        border:OutlineInputBorder(
          borderSide: BorderSide(
            color:ColorConstants.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color:ColorConstants.grey,
          ),
        ),
        onChange: (query)  {
          // context.read<EmployeeCubit>().updateSearchQuery(query);
        },
      ),
    );
  }
}