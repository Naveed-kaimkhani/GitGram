import 'package:easy_github/app/routes/AppRoutes.dart';
import 'package:provider/provider.dart';
import 'package:easy_github/notifier/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool mode = true;

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    Future<void> FetchUserInfo() async {
      //print(_controller.text);
      await context
          .read<Userprovider>()
          .getuser(username: _controller.text); //context pass nh kya
      await context
          .read<Userprovider>()
          .getuserRepo(username: _controller.text, context: context);
      await context
          .read<Userprovider>()
          .getuserfrnd(username: _controller.text, context: context);

      await context
          .read<Userprovider>()
          .getuserfollowing(username: _controller.text, context: context);
      print("in fetch user info func");
    }

    return Scaffold(
      appBar: _appbar(),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  controller: _controller,
                  decoration: new InputDecoration(
                    prefixIcon: GestureDetector(
                      child: Icon(Icons.search),
                      onTap: () => AppRoutes.reposs,
                    ),
                    suffixIcon: Icon(Icons.cancel),
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "Enter Username",
                    labelStyle: TextStyle(color: Colors.white),
                    fillColor: Colors.white60,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 40,
                width: 150,
                child: ElevatedButton(
                    onPressed: () => FetchUserInfo(),
                    child: Icon(Icons.arrow_forward_sharp)),
              )
            ],
          ),
        ),
      ),
    );
  }

  _appbar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      brightness: Brightness.dark,
      centerTitle: true,
      title: Text(
        "G i t G r a m",
        style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 25,
           // fontStyle: FontStyle.italic,
            color: Colors.grey[100]),
      ),

      // leading: _gesture(),
    );
  }
}
