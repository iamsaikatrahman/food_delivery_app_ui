import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/data/data.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          backgroundColor: Color(0xFF41CC5D),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          child: Container(
            width: double.infinity,
            height: 40,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: Color(0xFF41CC5D),
              onPressed: () {},
              child: Text(
                "EDIT PROFILE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 10),
            // Center(
            //   child: CircleAvatar(
            //     backgroundColor: Colors.blueGrey.withOpacity(0.5),
            //     backgroundImage: ExactAssetImage(currentUser.imageUrl),
            //     minRadius: 30,
            //     maxRadius: 60,
            //   ),
            // ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3 - 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.withOpacity(0.5),
                ),
                child: Image.asset(currentUser.imageUrl),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileText(
                      title: "Name",
                      informationtext: "\n${currentUser.name}",
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 2,
                      color: Colors.blueGrey.withOpacity(0.3),
                    ),
                    SizedBox(height: 5),
                    ProfileText(
                      title: "Email",
                      informationtext: "\n${currentUser.mail}",
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 2,
                      color: Colors.blueGrey.withOpacity(0.3),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileText(
                          title: "Gender",
                          informationtext: "\n${currentUser.gender}",
                        ),
                        ProfileText(
                          title: "Birth Date",
                          informationtext: "\n${currentUser.birthdate}",
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 2,
                      color: Colors.blueGrey.withOpacity(0.3),
                    ),
                    SizedBox(height: 5),
                    ProfileText(
                      title: "Phone",
                      informationtext: "\n${currentUser.phone}",
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 2,
                      color: Colors.blueGrey.withOpacity(0.3),
                    ),
                    SizedBox(height: 5),
                    ProfileText(
                      title: "Address",
                      informationtext: "\n${currentUser.address}",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class ProfileText extends StatelessWidget {
  final String title;
  final String informationtext;

  const ProfileText({
    Key key,
    this.title,
    this.informationtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: title,
            style: TextStyle(
              fontSize: 22,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: informationtext,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
