part of '../../wallet_details_screen.dart';

class _DetailsView extends StatefulWidget {
  final Function() onContinue;
  const _DetailsView({required this.onContinue});

  @override
  State<_DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<_DetailsView> {
  int selectedNightIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _CardPreview(),
              verticalSpace(16),
              _NightSelection(
                selectedNightIndex: selectedNightIndex,
                onSelected: (index) {
                  setState(() {
                    selectedNightIndex = index;
                  });
                },
              ),
              verticalSpace(16),
              const _CardDescription(),
              verticalSpace(16),
              const _CardFeatures(),
              verticalSpace(45),
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
