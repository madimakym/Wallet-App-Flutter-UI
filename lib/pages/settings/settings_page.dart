import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
          backgroundColor: AppColors.bg,
          elevation: 0,
          title: const Text(
            "SETTINGS",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
          )),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: AppColors.bg,
            child: Column(
              children: [
                const SizedBox(height: 20),
                const SizedBox(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                        backgroundColor: AppColors.white,
                        child: Icon(Icons.person,
                            color: Colors.black, size: 30.0))),
                const SizedBox(height: 10),
                const Text("Maky Madi",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                const SizedBox(height: 20),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(25.0),
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 5.0,
                            spreadRadius: .0,
                            offset: Offset(2.0, 2.0),
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Total Balance",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500)),
                              Text("Card available",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12)),
                            ],
                          ),
                          const Text("\$5000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20)
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: AppColors.bg,
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, "/profile"),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("ACCOUNT",
                                style: TextStyle(color: AppColors.grey)),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Edit profile",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                                Icon(Icons.arrow_forward_ios_rounded,
                                    size: 16, color: Colors.black)
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("SECURITY",
                              style: TextStyle(color: AppColors.grey)),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Reset password",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  size: 16, color: Colors.black)
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("SUPPORT",
                              style: TextStyle(color: AppColors.grey)),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Help center",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  size: 16, color: Colors.black)
                            ],
                          ),
                          const SizedBox(height: 22),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Privacy",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  size: 16, color: Colors.black)
                            ],
                          ),
                          const SizedBox(height: 22),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Language",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  size: 16, color: Colors.black)
                            ],
                          ),
                          const SizedBox(height: 60),
                          Row(
                            children: const [
                              Icon(Icons.logout, size: 16, color: Colors.black),
                              SizedBox(width: 5),
                              Text("Log out",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
