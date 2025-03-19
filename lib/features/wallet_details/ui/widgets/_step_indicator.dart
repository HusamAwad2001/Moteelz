part of '../wallet_details_screen.dart';

class _StepIndicator extends StatelessWidget {
  final int currentStep;

  const _StepIndicator({required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 55.h,
        left: 23.w,
        right: 23.w,
        bottom: 13.h,
      ),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 29.5,
            color: ColorsManager.black.withValues(alpha: 0.12),
            offset: const Offset(0, 16),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () => context.pop(),
            icon: Icon(Icons.arrow_back, size: 24.w),
          ),
          verticalSpace(6),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 55.w),
            child: Row(
              spacing: 7.w,
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: ColorsManager.primary,
                  child: Text(
                    '1',
                    style: TextStyles.font16WhiteBold,
                  ),
                ),
                Expanded(
                  child: LinearProgressIndicator(
                    value: currentStep == 0 ? 0.5 : 1,
                    minHeight: 6.h,
                    backgroundColor: ColorsManager.greyFF,
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                ),
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: currentStep == 1
                      ? ColorsManager.primary
                      : ColorsManager.primaryLight,
                  child: Text(
                    '2',
                    style: currentStep == 1
                        ? TextStyles.font16WhiteBold
                        : TextStyles.font16PrimaryBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
