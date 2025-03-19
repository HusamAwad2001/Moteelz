import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moteelz/core/config/routing/routes.dart';
import 'package:moteelz/core/config/theming/colors.dart';
import 'package:moteelz/core/config/theming/styles.dart';
import 'package:moteelz/core/helpers/extensions/navigations_extensions.dart';
import 'package:moteelz/core/helpers/spacing.dart';
import 'package:moteelz/core/helpers/strings/app_icons.dart';
import 'package:moteelz/core/helpers/strings/app_images.dart';
import 'package:moteelz/core/widgets/app_button.dart';
import 'package:moteelz/core/widgets/app_dialog.dart';
import 'package:moteelz/core/widgets/app_image.dart';
import 'package:moteelz/core/widgets/app_text_form_field.dart';

part './widgets/card_item/wallet_card_item.dart';
part './widgets/wallet_filter/wallet_filter_widget.dart';
part './widgets/card_item/_card_header.dart';
part './widgets/card_item/_card_details.dart';
part './widgets/card_item/_card_features.dart';
part './widgets/_filter_button.dart';
part './widgets/_search_bar.dart';
part './widgets/wallet_filter/_price_range_box.dart';
part './widgets/wallet_filter/_country_filter.dart';
part './widgets/wallet_filter/_price_filter.dart';
part './widgets/wallet_filter/_filter_header.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.greyFC,
      body: Column(
        children: [
          const _SearchBar(),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(
                top: 12.h,
                bottom: 30.h,
                left: 24.w,
                right: 24.w,
              ),
              itemCount: 5,
              separatorBuilder: (context, index) => verticalSpace(16),
              itemBuilder: (context, index) {
                return WalletCardItem(
                  onTap: () => context.pushNamed(Routes.walletDetailsScreen),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: const _FilterButton(),
    );
  }
}
