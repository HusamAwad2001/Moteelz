import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moteelz/core/config/routing/routes.dart';
import 'package:moteelz/core/config/theming/colors.dart';
import 'package:moteelz/core/config/theming/styles.dart';
import 'package:moteelz/core/di/dependency_injection.dart';
import 'package:moteelz/core/helpers/extensions/context_extensions.dart';
import 'package:moteelz/core/helpers/extensions/navigations_extensions.dart';
import 'package:moteelz/core/helpers/spacing.dart';
import 'package:moteelz/core/helpers/strings/app_icons.dart';
import 'package:moteelz/core/helpers/strings/app_images.dart';
import 'package:moteelz/core/widgets/app_button.dart';
import 'package:moteelz/core/widgets/app_dialog.dart';
import 'package:moteelz/core/widgets/app_error_widget.dart';
import 'package:moteelz/core/widgets/app_image.dart';
import 'package:moteelz/core/widgets/app_loading_widget_service.dart';
import 'package:moteelz/core/widgets/app_text_form_field.dart';
import 'package:moteelz/features/wallet/data/models/wallet/feature.dart';
import 'package:moteelz/features/wallet/data/models/wallet/wallet_model.dart';
import 'package:moteelz/features/wallet/logic/wallet_cubit.dart';
import 'package:moteelz/generated/localization_keys.g.dart';
import 'package:rxdart/rxdart.dart';

part './widgets/_wallet_body.dart';
part './widgets/_success_view.dart';
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
    return BlocProvider(
      create: (context) => getIt<WalletCubit>()..getWallet(),
      child: const Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorsManager.greyFC,
        body: _WalletBody(),
        floatingActionButton: _FilterButton(),
      ),
    );
  }
}
