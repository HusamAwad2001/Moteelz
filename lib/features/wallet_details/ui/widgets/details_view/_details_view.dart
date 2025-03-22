part of '../../wallet_details_screen.dart';

class _DetailsView extends StatefulWidget {
  final WalletDetailsModel wallet;
  final Function() onContinue;
  const _DetailsView({required this.wallet, required this.onContinue});

  @override
  State<_DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<_DetailsView> {
  int selectedNightIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16.h,
              children: [
                _CardPreview(widget.wallet),
                _NightSelection(
                  wallet: widget.wallet,
                  selectedNightIndex: selectedNightIndex,
                  onSelected: (index) {
                    setState(() {
                      selectedNightIndex = index;
                    });
                    final cubit = getIt<WalletDetailsCubit>();
                    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                    cubit.emit(cubit.state.copyWith(
                      nights: int.parse(
                        widget.wallet.numbersOfDays?[selectedNightIndex].days ??
                            '5',
                      ),
                    ));
                  },
                ),
                _CardDescription(widget.wallet),
                if (widget.wallet.walletFeatures?.isNotEmpty ?? false) ...[
                  _CardFeatures(widget.wallet),
                ],
                verticalSpace(30),
              ],
            ),
          ),
          AppButton(
            label: context.tr(LocaleKeys.continue_to_pay),
            icon: Icon(
              Icons.arrow_forward,
              size: 24.w,
              color: ColorsManager.white,
            ),
            isIconEnd: true,
            borderRadius: 0,
            onTap: widget.onContinue,
          ),
        ],
      ),
    );
  }
}
