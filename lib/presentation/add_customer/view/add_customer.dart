import 'package:flutter/material.dart';
import 'package:news_application/presentation/constants/fonts/fonts.dart';
import 'package:news_application/presentation/shared_widgets/rounded_text_field.dart';
import 'package:news_application/presentation/shared_widgets/shared_widgets.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({Key? key}) : super(key: key);

  @override
  _AddCustomerState createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  Widget _otpTextField(BuildContext context, bool autoFocus , String title) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0,right: 15,),
      child: Row(
        children: [
          Container(
            width: 60,
            child: Text(
              title,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeightManager.bold),
            ),
          ),
          const SizedBox(width: 5,),
          Container(
            height: MediaQuery.of(context).size.shortestSide * 0.10,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: TextField(
                autofocus: autoFocus,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: TextStyle(),
                maxLines: 1,
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget textFieldWidget({required String title}) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0,right: 20,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
           title,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeightManager.bold),
          ),
          const SizedBox(height: 10,),
          RoundedTextField()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Add Customer",
        size: 100,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textFieldWidget(title: "Name Of Customer"),
            const SizedBox(height: 10,),
            textFieldWidget(title: "Phone Number"),
            const SizedBox(height: 20,),

            headingWidget("Shalwar Kamzeez"),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _otpTextField(context, true , "Length"),
                _otpTextField(context, true , "Shoulder"),
                _otpTextField(context, true , "Asteen"),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _otpTextField(context, true , "Chest"),
                _otpTextField(context, true , "Waist"),
                _otpTextField(context, true , "Daman"),
              ],
            ),
            const SizedBox(height: 20,),

            headingWidget("Style"),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _otpTextField(context, true , "Band Plate"),
                _otpTextField(context, true , "Awami Plate"),
                _otpTextField(context, true , "Color Size"),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _otpTextField(context, true , "Chest"),
                _otpTextField(context, true , "Waist"),
                _otpTextField(context, true , "Daman"),
              ],
            ),
            const SizedBox(height: 10,),
            textFieldWidget(title: "Color Style"),
            const SizedBox(height: 10,),
            textFieldWidget(title: "Daman"),

            const SizedBox(height: 20,),

            headingWidget("Pant"),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _otpTextField(context, true , "Length"),
                _otpTextField(context, true , "Waist"),
                _otpTextField(context, true , "Hips"),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _otpTextField(context, true , "Inside"),
                _otpTextField(context, true , "Knee"),
                _otpTextField(context, true , "Bottom"),
              ],
            ),

            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _otpTextField(context, true , "Thigh"),
              ],
            ),
            const SizedBox(height: 20,),

        Center(
          child: SizedBox(
            width:MediaQuery.of(context).size.width * 0.4 ,
            height:MediaQuery.of(context).size.height * 0.05,

            child: ElevatedButton(
              child: Text(
                  "Add".toUpperCase(),
                  style: TextStyle(fontSize: 14)
              ),
             style: ButtonStyle(
                 foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                 backgroundColor: MaterialStateProperty.all<Color>(Colors.black),

                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.black)
        )
      )
    ),
              onPressed: () {  },
            ),
          ),
        ),
            const SizedBox(height: 20,),






          ],
        ),
      ),
    );
  }

  Widget headingWidget(String title) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0,right: 20,),
      child: Text(
              title,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeightManager.bold),
            ),
    );
  }
}
