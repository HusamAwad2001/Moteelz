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
    return Column(
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
                },
              ),
              _CardDescription(widget.wallet),
              if (widget.wallet.walletFeatures.isNotEmpty) ...[
                _CardFeatures(widget.wallet),
              ],
              verticalSpace(30),
            ],
          ),
        ),
        AppButton(
          label: 'المتابعة للدفع',
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
    );
  }
}
