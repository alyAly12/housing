import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app_widgets/custom_text_widget.dart';
import '../../../../core/app_widgets/subtitle_text_widget.dart';
import '../widgets/custom_profile_list.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Visibility(
          visible: false,
          child: CustomTextWidget(
            title: 'Please create an account to have unlimited access',
            maxLines: 2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).cardColor,
                    border: Border.all(
                        color: Theme.of(context).colorScheme.background,
                        width: 3),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png'),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(title: 'Mohamed aly'),
                  SubTitleWidget(subTitle: 'example@gmail.com')
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextWidget(title: 'Generals'),

              CustomProfileList(
                  title: 'WishList',
                  imagePath: 'assets/images/wishlist_svg.png',
                  fun: ()async {
                 await  context.pushNamed('wish-list');
                  }),
              CustomProfileList(
                  title: 'Viewed recently',
                  imagePath: 'assets/images/recent.png',
                  fun: ()async {
                    // await Navigator.pushNamed(context,ViewedRecentlyScreen.id);
                  }),
              CustomProfileList(
                  title: 'Address',
                  imagePath: 'assets/images/address.png',
                  fun: () {}),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding:  EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(title: 'Settings'),
              SizedBox(
                height: 23,
              ),
              // SwitchListTile(
              //     title: CustomTextWidget(
              //         title: themeProvider.getDarkTheme ? 'dark' : 'light'),
              //     secondary: Image.asset(
              //       AssetsManager.theme,
              //       height: 30,
              //     ),
              //     value: themeProvider.getDarkTheme,
              //     onChanged: (value) {
              //       themeProvider.setDarkTheme(themeValue: value);
              //     }),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: ()async {
                // await Navigator.pushNamed(context, LoginScreen.id);
                // await DialogsServices.appDialog(context: context, title: 'Are you sure?', fct: (){
                //
                // });
              },
              icon: const Icon(Icons.login,color: Colors.white,),
              label: const CustomTextWidget(title: 'Log in',color: Colors.white,)),
        )
      ],
    );
  }
}
