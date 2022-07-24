part of'view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primary,
      appBar: const CustomAppBar(title: "Latest Feed",size: 100,),
      body: BlocProvider(
        create: (context) =>
        NewsBloc(RepositoryProvider.of<NewsRepository>(context))
          ..add(RequestNews()),
        child: BlocConsumer<NewsBloc,NewsState>(
          listener: (context , state){
            if (state is LoadingNews) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("LOADING YOUR News"),
                backgroundColor: Colors.red,
              ));
            }
            if (state is LoadedNews) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Loaded Your News"),
                backgroundColor: Colors.blue,
              ));
            }
          },
          builder: (context , state){
            if(state is InitialNews)
            {
              return LoadingWidget();
            }
            if(state is LoadingNews)
              {
                return LoadingWidget();
              }
            if(state is LoadedNews)
              {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: state.liveNews!.length,
                          itemBuilder: (context,index){
                            return  NewsWidget(news:state.liveNews![index] ,);
                          }),
                    ),
                  ],
                );
              }
            if (state is FailureNews) {
              return Center(
                child: Text(state.error.toString()),
              );
            }
            return Container();
          },
        ),
      ),
    );

  }
  Widget LoadingWidget() {
    return  Center(
          child: CircularProgressIndicator(),
        );
  }
}
