// import 'package:rxdart/subjects.dart';
// import 'package:wedeli/features/address/model/addresses.dart';
// import '../features/address/data/rx_delete_address/rx.dart';
// import '../features/address/data/rx_get_address/rx.dart';
// import '../features/address/data/rx_get_default_adress/rx.dart';
// import '../features/address/data/rx_save_address/rx.dart';
// import '../features/address/model/default_address.dart';
// import '../features/authentication/data/otp/rx.dart';
// import '../features/authentication/data/rx_delete_account/rx.dart';
// import '../features/authentication/data/rx_email/rx.dart';
// import '../features/authentication/data/rx_forget_pw/rx.dart';
// import '../features/authentication/data/rx_login/rx.dart';
// import '../features/authentication/data/rx_post_device_token/rx.dart';
// import '../features/authentication/data/rx_post_social_login/rx.dart';
// import '../features/authentication/data/rx_signup/rx.dart';
// import '../features/authentication/model/login_response.dart';
// import '../features/cart/data/rx_delete_cart/rx.dart';
// import '../features/cart/data/rx_delete_voucher/rx.dart';
// import '../features/cart/data/rx_get_cart/rx.dart';
// import '../features/cart/data/rx_get_cart_restaurant/rx.dart';
// import '../features/cart/data/rx_get_distance/rx.dart';
// import '../features/cart/data/rx_get_time_slot/rx.dart';
// import '../features/cart/data/rx_post_apply_vouicher/rx.dart';
// import '../features/cart/data/rx_post_cart/rx.dart';
// import '../features/cart/model/google_distance_res.dart';
// import '../features/categories/data/rs_post_shop_by_sub_category/rx.dart';
// import '../features/categories/data/rx_get_category/rx.dart';
// import '../features/favourite/data/rx_get_favourite_shop/rx.dart';
// import '../features/favourite/data/rx_post_make_favourite/rx.dart';
// import '../features/food_detail/data/rx_get_food_details/rx.dart';
// import '../features/home/data/rx_get_all_shop/rx.dart';
// import '../features/home/data/rx_get_slider/rx.dart';
// import '../features/home/data/rx_post_default_delivery_address/rx.dart';
// import '../features/home/data/rx_get_shop_category/rx.dart';
// import '../features/order_history/data/rx_get_order_detail/rx.dart';
// import '../features/order_history/data/rx_get_order_history/rx.dart';
// import '../features/order_history/data/rx_get_orders_ongoing/rx.dart';
// import '../features/order_history/data/rx_post_cancel_order/rx.dart';
// import '../features/order_history/data/rx_post_product_rating/rx.dart';
// import '../features/order_history/data/rx_post_re_oprder/rx.dart';
// import '../features/order_history/data/rx_post_save_review/rx.dart';
// import '../features/payment/data/rx_get_payment/rx.dart';
// import '../features/payment/data/rx_post_order/rx.dart';
// import '../features/profile/data/rx_delete_token/rx.dart';
// import '../features/profile/data/rx_get_logout/rx.dart';
// import '../features/profile/data/rx_get_profile/rx.dart';
// import '../features/profile/data/rx_post_issues/rx.dart';
// import '../features/profile/data/rx_post_send_mail_to_admin/rx.dart';
// import '../features/profile/data/rx_post_update_phone/rx.dart';
// import '../features/profile/data/rx_put_update_password/rx.dart';
// import '../features/restaurant_detail/data/rx_get_cart_processing/rx.dart';
// import '../features/restaurant_detail/data/rx_get_product_by_category/rx.dart';
// import '../features/restaurant_detail/data/rx_get_shop_detail/rx.dart';
// import '../features/restaurant_detail/data/rx_get_shop_products/rx.dart';
// import '../features/search/data/rx_get_all_sub_category/rx.dart';
// import '../features/search/data/rx_get_filtered_item/rx.dart';
// import '../features/search/data/rx_get_subcat_by_category/rx.dart';
// import '../helpers/default_response_model.dart';

// GetLoginRX getLoginRXObj = GetLoginRX(
//     empty: LoginResponse(), dataFetcher: BehaviorSubject<LoginResponse>());
// GetAllShopCategoryRX getAllShopCategoryRXObj =
//     GetAllShopCategoryRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetAllSubCategoryRX getAllSubCategoryRXObj =
//     GetAllSubCategoryRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetAllShopRX getAllShopRXObj =
//     GetAllShopRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetAllAddressRX getAllAddressRXObj = GetAllAddressRX(
//     empty: Addresses(), dataFetcher: BehaviorSubject<Addresses>());
// GetShopProductsRx getShopProductsRxObj =
//     GetShopProductsRx(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetProductDetailRx getProductDetailRxObj =
//     GetProductDetailRx(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetOrdersHistoryRx getOrdersHistoryRx =
//     GetOrdersHistoryRx(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetLogOutRX getLogOutRXObj =
//     GetLogOutRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetSignUpRX getSignUpRXObj =
//     GetSignUpRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetOrdersOngoingRx getOrdersOngoingRxObj =
//     GetOrdersOngoingRx(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetOrderDetailRX getOrderDetailRXObj =
//     GetOrderDetailRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// VerifyOtpRX verifyOtpRX =
//     VerifyOtpRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetCartRestaurantRX getCartRestaurantRXObj =
//     GetCartRestaurantRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetDistanceRX getDistanceRXObj = GetDistanceRX(
//     empty: GoogleDIstanceResponse(),
//     dataFetcher: BehaviorSubject<GoogleDIstanceResponse>(),
//     dataFetcher2: BehaviorSubject<String>());
// GetCartRX getCartRXObj =
//     GetCartRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetShopByCategoriesRX getShopByCategoriesRXObj =
//     GetShopByCategoriesRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetProfileRX getProfileRXObj =
//     GetProfileRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetTimeSlotRX getTimeSlotRXObj =
//     GetTimeSlotRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetShopDetailsRx getShopDetailsRxObj =
//     GetShopDetailsRx(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetSubCategoryByCategoryRX getSubCategoryByCategoryRXObj =
//     GetSubCategoryByCategoryRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetProductByCategoryRx getProductByCategoryRxObj =
//     GetProductByCategoryRx(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetPaymentRX getPaymentRXObj =
//     GetPaymentRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetDefaultdeliveryAddressRx getDefaultdeliveryAddressRxObj =
//     GetDefaultdeliveryAddressRx(
//         empty: DefaultAddress(),
//         dataFetcher: BehaviorSubject<DefaultAddress>());
// GetSliderRX getSliderRXObj =
//     GetSliderRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetFavouriteShopRX getFavouriteShopRXObj =
//     GetFavouriteShopRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// //all post

// //no lodder needed
// PostDeviceTokenRX postDeviceTokenRXobj =
//     PostDeviceTokenRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// DeleteTokenRx getDeleteTokenRXObj =
//     DeleteTokenRx(empty: {}, dataFetcher: BehaviorSubject<Map>());
// PostDeleteAccountRX postDeleteAccountRXObj =
//     PostDeleteAccountRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// PostShopBySubCategoryRX postShopBySubCategoryRXObj =
//     PostShopBySubCategoryRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetFilteredItemRX getFilteredItemRXObj =
//     GetFilteredItemRX(empty: {}, dataFetcher: BehaviorSubject<Map>());

// AddToCartRX postToCartRXObj = AddToCartRX(
//     empty: DefaultResponse(), dataFetcher: BehaviorSubject<DefaultResponse>());
// PostDefaultAddressRX postDefaultAddressRXObj = PostDefaultAddressRX(
//     empty: DefaultResponse(), dataFetcher: BehaviorSubject<DefaultResponse>());
// PostIssuesRX postIssuesRXObj =
//     PostIssuesRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// SaveReviewRX saveReviewRXObj =
//     SaveReviewRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// SaveProductRatingRX postProductRatingRXObj =
//     SaveProductRatingRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// PostFavouriteShopRX postFavouriteShopRXObj =
//     PostFavouriteShopRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// PostOrderRX postOrderRXObj =
//     PostOrderRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// PostUpdatePhoneRX postUpdateRXObj =
//     PostUpdatePhoneRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// PostDeleteCartRX postDeleteCartRXObj = PostDeleteCartRX(
//     empty: DefaultResponse(), dataFetcher: BehaviorSubject<DefaultResponse>());
// PostCartVoucherRX postCartVoucherRXObj =
//     PostCartVoucherRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// PostRemoveVoucherRX postRemoveVoucherRXObj =
//     PostRemoveVoucherRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// SaveAddressRX saveAddressRXObj = SaveAddressRX(
//     empty: DefaultResponse(), dataFetcher: BehaviorSubject<DefaultResponse>());
// DeleteDeliveryAddressRX deleteDeliveryAddressRXObj = DeleteDeliveryAddressRX(
//     empty: DefaultResponse(), dataFetcher: BehaviorSubject<DefaultResponse>());
// PostSendMailAdminRX postSendMailAdminRXObj =
//     PostSendMailAdminRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// PostForgetEmailRX postForgetEmailRXObj =
//     PostForgetEmailRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// PostForgertPwRX postForgertPwRXObj =
//     PostForgertPwRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// PostCancelOrderRX postCancelOrderRXObj =
//     PostCancelOrderRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// PostSocailLoginRX postSocailLoginRXObj =
//     PostSocailLoginRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// PostReOrderRX postReOrderRXObj =
//     PostReOrderRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
// GetCartProcessingTimeRx getCartProcessingTimeRXObj =
//     GetCartProcessingTimeRx(empty: {}, dataFetcher: BehaviorSubject<Map>());

// //put
// PutUpdatePasswordRX putUpdatePasswordRXObj =
//     PutUpdatePasswordRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
