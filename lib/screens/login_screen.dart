import 'package:flutter/material.dart';
import 'package:si2_rrhh/screens/home_screnn.dart';
import 'package:si2_rrhh/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
   
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return  Scaffold(
        body: AuthBackground(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 150,),
               CardContainer(
                child:Column(
                children: [
                SizedBox(height: 10,),
                 Text('Ingreso', style: Theme.of(context).textTheme.headline4,),
                   SizedBox(height: 30,), 
                   _LoginForm()           

                ],
              )
             ),
              ],
            ),
            ),
        ),

        );
    
  }
}

class _LoginForm extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

  //  final loginForm= Provider.of<LoginFormProvider>(context);

    return Container(
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
      //  key: loginForm.formKey,

        child: Column(
          children: [
              TextFormField(
                
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,               
                decoration: InputDecorations.obInputDecoration(
                  hintText: 'juanperez@gmail.com',
                  labelText: 'Correo electronico',
                  prefixIcon: Icons.alternate_email_rounded,
                ),

                validator: (value){
                  String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.  [0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp  = new RegExp(pattern);
                  return regExp.hasMatch(value?? '')? null : 'El valor ingresado no es un correo';

                },               
              ),
              SizedBox(height: 20,),
               TextFormField(
                autocorrect: false,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,    
                decoration: InputDecorations.obInputDecoration(
                  labelText: 'Contraseña',
                  hintText: '*********',
                  prefixIcon: Icons.lock,
                ),
                
            
                validator: (value){
                  return(value !=null && value.length >= 5)?null
                  :'La contraseña debe de ser de 6 caracteres';
                },                 
              ),

              SizedBox(height: 25,),

              MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  disabledColor: Colors.grey,
                  elevation: 0,
                  color: Colors.red,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
             ///       child: Text(loginForm.isloading? 'Espere':
                    child: Text(' Ingresar', style: TextStyle(color: Colors.white),),
                  ),

                onPressed: () async{
                    FocusScope.of(context).unfocus();
                    Navigator.pushReplacementNamed(context, 'home');
                }
                )         

        ],
        )
        
        ),
    );
  }
}

//para los inputs del formulario
class InputDecorations {
  static InputDecoration obInputDecoration({
    required String hintText,
    required String labelText,
    IconData? prefixIcon,
  }){
    return InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepOrange
                    ),
                     ),
                     focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                     ),
                      hintText: hintText,
                     labelText: labelText,
                     labelStyle: TextStyle(color: Colors.grey),
                     prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: Colors.red[100]) : null,
                );

  }
}