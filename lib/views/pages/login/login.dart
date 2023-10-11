import 'package:e_commerce_app/components/underline_textfield.dart';
import 'package:e_commerce_app/constants/icons.dart';
import 'package:e_commerce_app/utils/size_config.dart';
import 'package:e_commerce_app/views/pages/home/home.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                height: SizeConfig.heightMultiplier * 40,
                width: SizeConfig.widthMultiplier * 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.pexels.com/photos/6567356/pexels-photo-6567356.jpeg?auto=compress&cs=tinysrgb&w=600",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      const Text(
                        "Please sign up to your Venti Account",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 240, 239, 239),
                ),
              ),
            ],
          ),
          //ceneterd Container
          Container(
            margin: const EdgeInsets.only(top: 130, left: 20, right: 20),
            height: SizeConfig.heightMultiplier * 70,
            width: SizeConfig.widthMultiplier * 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 1.5,
                        ),
                        Text(
                          "Email",
                          style: textTheme.labelMedium,
                        ),
                        UnderLineTextField(),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 4,
                        ),
                        Text(
                          "Password",
                          style: textTheme.labelMedium,
                        ),
                        UnderLineTextField(
                          obsecureText: true,
                          suffixIcon: Image(
                            image: AssetImage(AppIcons.eye),
                            height: SizeConfig.heightMultiplier * 8,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 2,
                        ),
                        //Center gap between textfield and buttons
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w300),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Create Now",
                                style: TextStyle(
                                    color: Color(0xff425D81), fontSize: 16),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 2,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePageView())),
                          child: Container(
                            height: SizeConfig.heightMultiplier * 6,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xff7496C2)),
                            child: const Center(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: SizeConfig.heightMultiplier * 6,
                              width: SizeConfig.widthMultiplier * 38,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffD3493C)),
                              child: Center(
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      'assets/icons/google.png',
                                      scale: 3,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: SizeConfig.heightMultiplier * 6,
                              width: SizeConfig.widthMultiplier * 38,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xff1871E5)),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    'assets/icons/fb.png',
                                    scale: 3,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
