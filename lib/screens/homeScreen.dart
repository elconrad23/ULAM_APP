import 'package:flutter/material.dart';
import 'package:ulam_app/screens/landPurchaseScreen.dart';
import 'package:ulam_app/screens/landSaleScreen.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:toast/toast.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
    appBar: AppBar(
      title: const Text("Home Screen"),
      leading: const Icon(Icons.home),

    ),
    body: ListView(
      children: [
    FormBuilderTextField(
              name: "plot_number",
              decoration: const InputDecoration(
                icon: Icon(Icons.supervised_user_circle_rounded),
                iconColor: Colors.amberAccent,
                labelText: ("Plot Number"),
                isDense: true,
                contentPadding: EdgeInsets.only(left: 2),
                helperText: "Enter plot title number of plot you would like to verify",
                helperStyle: TextStyle(color: Colors.amberAccent),
                hintText: "PLT234",
                suffixIcon: Icon(Icons.satellite),
                filled: true,
                fillColor: Colors.lightBlue,
                //border: Border.all({width: 3.0})
              ),
              textCapitalization: TextCapitalization.words,
              initialValue: "My plot number",
              cursorWidth: 1.5,
              autofocus: true,
            ),
            const SizedBox(
              height: 15,
            ),
          ListTile(
          title: const Text("Buy Land"),
          leading: const Icon(Icons.text_fields_outlined),
          trailing: const Icon(Icons.chevron_right_sharp),
          subtitle: const Text("Plots for sale"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LandPurchase(),
              ),
            );
          },
        ),          
        const SizedBox(
          height: 15,
        ),
        ListTile(
          title: const Text("Sell Land"),
          leading: const Icon(Icons.text_fields_outlined),
          trailing: const Icon(Icons.chevron_right_sharp),
          subtitle: const Text("Post land for sale"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LandSale(),
              ),
            );
          },
        ),
          
        ListTile(
          title: const Text("Buy Land"),
          leading: const Icon(Icons.text_fields_outlined),
          trailing: const Icon(Icons.chevron_right_sharp),
          subtitle: const Text("Plots for sale"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LandPurchase(),
              ),
            );
          },
        ),

          ListTile(
          title: const Text("Submit"),
          leading: const Icon(Icons.text_fields_outlined),
          trailing: const Icon(Icons.chevron_right_sharp),
          subtitle: const Text("Check plot"),
          onTap: () => makeToast(  
            duration: Toast.lengthShort,
            gravity: Toast.center,
            backgroundColor: Color.fromARGB(255, 66, 29, 27),
            textColor: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 16.0,
            ),
        ),
      ],
    ),
    );
  }

  void makeToast({required int duration, gravity, backgroundColor, textColor, fontSize}){
    Toast.show('Reviewing', duration: duration, gravity: gravity, backgroundColor: backgroundColor,);
  }
}

 
//         if (plot_number is valid){
//           Toast.show(
//           msg: "Valid plot in location: {$[location]}",
//           toastLength: Toast.lengthLong ,
//           gravity: Toast.center,
//           backgroundColor: Color.blue,
//           textColor: Colors.white,
//           fontSize: 16.0);
// }
