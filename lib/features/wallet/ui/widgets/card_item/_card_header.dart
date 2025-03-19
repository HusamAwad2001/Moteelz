part of '../../wallet_screen.dart';

class _CardHeader extends StatelessWidget {
  const _CardHeader();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: const AppImage(
        path: AppImages.card,
      ),
    );
    // return Container(
    //   padding: EdgeInsets.all(7.w),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(20.r),
    //     image: const DecorationImage(
    //       image: AssetImage(AppImages.backgroundCard),
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.end,
    //     children: [
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Padding(
    //             padding: EdgeInsets.only(top: 8.h),
    //             child: const AppImage(path: AppIcons.moteelz),
    //           ),
    //           AppImage(path: AppImages.qr, width: 75.w, height: 75.h),
    //         ],
    //       ),
    //       verticalSpace(12),
    //       Text('1234 5678 9009 8765', style: TextStyles.font18WhiteBold),
    //       verticalSpace(4),
    //       const _CardValidity(),
    //       verticalSpace(10),
    //       const _CardFooter(),
    //     ],
    //   ),
    // );
  }
}
