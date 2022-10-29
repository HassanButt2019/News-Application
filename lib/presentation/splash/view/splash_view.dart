part of'view.dart';


class SplashScreen extends StatefulWidget {


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    Timer(Duration(seconds:5),()=>{
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeView())),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/logo.json',
            height: 400,
            fit: BoxFit.fill,
          ),
      Text(
        "The Gents Tailor",
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.start,
        style: TextStyle(color: Colors.black, fontSize: 30 , fontWeight: FontWeightManager.bold),
      )


        ],),

    );
  }
}