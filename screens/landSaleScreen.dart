import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LandSale extends StatefulWidget {
  const LandSale({super.key});

  @override
  State<LandSale> createState() => _LandSaleState();
}

 // create a reusable instance  
     final requiredValidator = RequiredValidator(errorText: 'this field is required');  
    
class _LandSaleState extends State<LandSale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post land For Sale here'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        automaticallyImplyLeading: true,
      ),
      body: ListView(
        children: [
          Row(
            children: const <Widget>[
              Image(
                  image: AssetImage('logo.jpg'),
                  height: 100,
                  width: 200,
                  fit: BoxFit.fill),
              Expanded(
                child: Text(
                    "Upload information about your plot of land that you would like to sell and wait a few moments while one of our administration officers verify it's availability for sale."),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FormBuilderTextField(
                  name: "first_name",
                  decoration: const InputDecoration(
                    icon: Icon(Icons.supervised_user_circle_rounded),
                    iconColor: Colors.amberAccent,
                    labelText: ("First Name"),
                    isDense: true,
                    contentPadding: EdgeInsets.only(left: 2),
                    helperText: "Enter first name as it appears on your I.D",
                    helperStyle: TextStyle(color: Colors.amberAccent),
                    hintText: "Enter First Name",
                    prefixText: "Mr./Mrs.",
                    suffixIcon: Icon(Icons.satellite),
                    filled: true,
                    fillColor: Colors.lightBlue,
                    //border: Border.all({width: 3.0})
                  ),
                  textCapitalization: TextCapitalization.words,
                  initialValue: "My first name",
                  cursorWidth: 1.5,
                  autofocus: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                FormBuilderTextField(
                  name: "last_name",
                  decoration: const InputDecoration(
                    icon: Icon(Icons.supervised_user_circle_rounded),
                    iconColor: Colors.amberAccent,
                    label: Text("Last Name"),
                    helperText: "Enter last name as it appears on your I.D",
                    helperStyle: TextStyle(color: Colors.amberAccent),
                    hintText: "Enter Last Name",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                FormBuilderTextField(
                  name: "title_number",
                  decoration: const InputDecoration(
                    icon: Icon(Icons.supervised_user_circle_rounded),
                    iconColor: Colors.amberAccent,
                    label: Text("Land title number"),
                    helperText:
                        "Enter the title number as it appears on your document",
                    helperStyle: TextStyle(color: Colors.amberAccent),
                    hintText: "Enter title number",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                FormBuilderTextField(
                  name: "location",
                  decoration: const InputDecoration(
                    icon: Icon(Icons.supervised_user_circle_rounded),
                    iconColor: Colors.amberAccent,
                    label: Text("Location"),
                    helperText: "Enter location",
                    helperStyle: TextStyle(color: Colors.amberAccent),
                    hintText: "Enter Location",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                FormBuilderTextField(
                  name: "email_contact",
                  decoration: const InputDecoration(
                    icon: Icon(Icons.supervised_user_circle_rounded),
                    iconColor: Colors.amberAccent,
                    label: Text("Email address"),
                    helperText: "Enter email address",
                    helperStyle: TextStyle(color: Colors.amberAccent),
                    hintText: "ulam@gmail.com",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                FormBuilderTextField(
                  name: "phone_contact",
                  decoration: const InputDecoration(
                    icon: Icon(Icons.supervised_user_circle_rounded),
                    iconColor: Colors.amberAccent,
                    label: Text("Phone number"),
                    helperText: "Enter phone number",
                    helperStyle: TextStyle(color: Colors.amberAccent),
                    hintText: "0772123123",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                FormBuilderTextField(
                  name: "land_image",
                  decoration: const InputDecoration(
                    icon: Icon(Icons.supervised_user_circle_rounded),
                    iconColor: Colors.amberAccent,
                    label: Text("Land image"),
                    helperText: "Upload",
                    helperStyle: TextStyle(color: Colors.amberAccent),
                    hintText: "something.jpg",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                FormBuilderImagePicker(
                  name: 'photos',
                  decoration: const InputDecoration(labelText: 'Upload Photos of your plot'),
                  maxImages: 1,
                ),
                const SizedBox(
                  height: 15,
                ),
                FormBuilderTextField(
                  name: "additional_desritption",
                  decoration: const InputDecoration(
                    icon: Icon(Icons.supervised_user_circle_rounded),
                    iconColor: Colors.amberAccent,
                    label: Text("Additional description"),
                    helperText: "Enter additional information",
                    helperStyle: TextStyle(color: Colors.amberAccent),
                    hintText: "Behind Makerere University playgrounds..",
                  ),
                ),
                 
     TextFormField(  
         validator: EmailValidator(errorText: 'enter a valid email address')  
         ), 
    
     // again assign it directly to the validator  
     TextFormField(validator: requiredValidator),
                const SizedBox(
                  height: 15,
                ),
                FormBuilderCheckbox(
                  name: 'accept_terms',
                  initialValue: false,
                  //Link to the terms and conditions of registration
                  title: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'I have read and agree to the ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Terms and Conditions.',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
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
          ),
        ],
      ),
    );
  }
}

void makeToast(
    {required int duration, gravity, backgroundColor, textColor, fontSize}) {
  Toast.show(
    'Successfully submitted for review...',
    duration: duration,
    gravity: gravity,
    backgroundColor: backgroundColor,
  );
}
