import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moteelz/core/config/theming/colors.dart';
import 'package:moteelz/core/config/theming/styles.dart';
import 'package:moteelz/core/di/dependency_injection.dart';
import 'package:moteelz/core/helpers/extensions/context_extensions.dart';
import 'package:moteelz/core/helpers/extensions/navigations_extensions.dart';
import 'package:moteelz/core/helpers/spacing.dart';
import 'package:moteelz/core/helpers/strings/app_icons.dart';
import 'package:moteelz/core/helpers/strings/app_images.dart';
import 'package:moteelz/core/widgets/app_button.dart';
import 'package:moteelz/core/widgets/app_error_widget.dart';
import 'package:moteelz/core/widgets/app_image.dart';
import 'package:moteelz/core/widgets/app_loading_widget_service.dart';
import 'package:moteelz/core/widgets/app_text_form_field.dart';
import 'package:moteelz/core/widgets/dashed_line_widget.dart';
import 'package:moteelz/features/wallet_details/data/models/wallet_details_model.dart';
import 'package:moteelz/features/wallet_details/logic/wallet_details_cubit.dart';
import 'package:moteelz/generated/localization_keys.g.dart';

part 'widgets/details_view/_details_view.dart';
part 'widgets/details_view/_card_preview.dart';
part 'widgets/details_view/_night_selection.dart';
part 'widgets/details_view/_card_description.dart';
part 'widgets/details_view/_card_features.dart';
part '../ui/widgets/_step_indicator.dart';
part 'widgets/payment_view/_payment_view.dart';
part 'widgets/payment_view/_payment_card.dart';
part 'widgets/payment_view/_discount_section.dart';
part 'widgets/payment_view/_amount_details.dart';
part 'widgets/payment_view/_payment_form.dart';

class WalletDetailsScreen extends StatefulWidget {
  final int id;
  const WalletDetailsScreen({super.key, required this.id});

  @override
  State<WalletDetailsScreen> createState() => _WalletDetailsScreenState();
}

class _WalletDetailsScreenState extends State<WalletDetailsScreen> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WalletDetailsCubit>()..getWallet(widget.id),
      child: Scaffold(
        backgroundColor: ColorsManager.greyFC,
        body: BlocBuilder<WalletDetailsCubit, WalletDetailsState>(
          builder: (context, state) {
            if (state.isLoading || state.isInitial) {
              return const Center(child: AppLoadingWidget());
            } else if (state.isFailure) {
              return AppErrorWidget(
                message: state.message ??
                    context.tr(
                      LocaleKeys.General_unknownError,
                    ),
                onRefresh: () {
                  context.read<WalletDetailsCubit>().getWallet(widget.id);
                },
              );
            }
            WalletDetailsModel wallet = state.wallet!;
            return Column(
              children: [
                _StepIndicator(currentStep: currentStep),
                Expanded(
                  child: SingleChildScrollView(
                    child: currentStep == 0
                        ? _DetailsView(
                            wallet: wallet,
                            onContinue: () => setState(() {
                              currentStep = 1;
                            }),
                          )
                        : const _PaymentView(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
