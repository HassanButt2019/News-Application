
part of'view.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.text = "";
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: ColorConstants.primary,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: ColorConstants.iconColor, // <-- SEE HERE
          ),
          backgroundColor: ColorConstants.primary,
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: ColorConstants.grey.withOpacity(0.3), borderRadius: BorderRadius.circular(5)),
            child: Center(
              child:
              TextField(
                onChanged: (String? value){
                  context.read<NewsBloc>().add(SearchNews(query: controller.text));

                },
                controller: controller,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 2.0,
                      ),
                    ),

                    prefixIcon: IconButton(
                      onPressed: () {
                        context.read<NewsBloc>().add(SearchNews(query: controller.text));
                      },
                      icon: Icon(
                        Icons.search_outlined,
                        color: ColorConstants.iconColor,
                        size: IconSize.i22,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: ColorConstants.iconColor,
                        size: IconSize.i22,
                      ),
                      onPressed: () {
                        controller.clear();
                        // context.read<MovieBloc>().clearMovies();

                      },
                    ),
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: ColorConstants.blackTextColor),
                    border: InputBorder.none
                ),
              ),
            ),
          )),
      body:
      BlocConsumer<NewsBloc, NewsState>(
        listener: (context, state) {
        },

        builder: (context, state) {

          if (state is InitialNews) {
            return WelcomeWidget(size);
          }
          if (state is LoadingNews) {
            return LoadingWidget(size);
          }

          if (state is SearchLoadedNews) {
            return
              ListView.separated(
                  separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: AppPadding.p20,right:AppPadding.p20),
                    child: Divider(
                      color: ColorConstants.grey.withOpacity(0.7)
                    ),
                  ),
                  itemCount: state.searchNews!.length,
                  itemBuilder: (context, index) {
                    return  SearchedNewsWidget(news:state.searchNews![index] ,);
                  });
          }
          if (state is FailureNews) {
            return Center(
              child: Text(state.error.toString()),
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget WelcomeWidget(Size size) {
    return Container(
      height: size.height,
      width: size.width,
      child: Center(
        child: Text("No News Yet , Please Search For News",style: TextStyle(color: ColorConstants.blackTextColor , fontSize: FontSize.s16 , fontWeight: FontWeight.bold),),
      ),
    );
  }

  // Widget LoadedState(BuildContext context,SearchLoadedMovie state  ,Size size) {
  //   return Container();
  // }

  Widget LoadingWidget(Size size) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.black, Colors.black]),
      ),
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.red,
        ),
      ),
    );
  }
}
