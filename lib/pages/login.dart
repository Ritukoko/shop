import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

String use="";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

    bool chanbt=false;
    //String use="";
    String pass="";
    //final _formkey=GlobalKey<FormState>();
    /*movetohome(BuildContext context) async {
      if(_formkey.currentState!=null)
          {
            if(_formkey.currentState.validate()){
        setState(() {
          chanbt = true;
        });
        await Future.delayed(Duration(milliseconds: 900));
        await Navigator.pushNamed(context, MyRoutes.homeroute);
        setState(() {
          chanbt = false;
        }
        );
      }}*/

movetohome(BuildContext context) async {
  setState(() {
    chanbt;
  });
  /*if(use!="" && pass!=""){
  chanbt=true;}*/

  if(use!="" && pass!=""){
  await Future.delayed(Duration(milliseconds: 900));
  await Navigator.pushNamed(context, MyRoutes.homeroute);
  setState(() {
    chanbt = false;
  }
  );}
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("kaya"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [

                (
                Image.asset("assets/images/login_asset.png",
                fit: BoxFit.scaleDown,)
                ),
                Text("WELCOME ",
                style: TextStyle(
                  fontStyle: FontStyle.italic
                ),),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                child:
                Column(
                    children:[
                  TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "username",
                    labelText: "enter username",
                  ),
                   onChanged: (String value){
                    use=value;
                   },


                   /* validator: (String?value){
                    if(value!=null && value.isEmpty){
                      return "username cannot be empty";
                    }
                    return null;
                    },*/


                ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "password",
                  labelText: "enter password",
                ),
                  onChanged: (value){
                  pass=value;
                  },

                /*validator: (String?value){
                  if(value!=null && value.isEmpty){
                    return "password cannot be empty";
                  }
                  return null;
                },*/


              ),]),),

                SizedBox(
                  height: 20.0,
                ),

                Material(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blueAccent,

                  child: InkWell(
                    splashColor: Colors.greenAccent,
                    onTap: () async{
                       // chanbt=true;
                      if(use!="" && pass!=""){
                        chanbt=true;
                      }

                      movetohome(context);
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      width: chanbt?50:150,
                      height: 50,
                      alignment:Alignment.center,

                      child:chanbt?Icon(
                        Icons.done
                      ):Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                          ),
                      ),
                      decoration: BoxDecoration(
                        //shape: chanbt?BoxShape.circle:BoxShape.rectangle,

                      ),
                    ),
                  ),
                )

               /* ElevatedButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.blue[200]),
                    onPressed: (){
                    Navigator.pushNamed(context, MyRoutes.homeroute);
                    },
                    child: Text("ENTER"
                ))*/
              ],
            ),
          ),
        ),
      )
    );
  }
}
