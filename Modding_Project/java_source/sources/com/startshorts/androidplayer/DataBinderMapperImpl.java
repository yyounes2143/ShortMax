package com.startshorts.androidplayer;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.model.VideoRef;
import com.startshorts.androidplayer.databinding.ActivityActBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityBonusWillExpiredNotificationBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityCustomNotificationBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityDaemonNotificationBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityDefaultCheckInNotificationBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityDefaultNewShortsNotificationBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityDownloadChooseBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityDownloadManageBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityDownloadedListBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityFragmentContainerBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityHotShortsNotificationBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityImmersionBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityLibraryBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityListBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityLogin2BindingImpl;
import com.startshorts.androidplayer.databinding.ActivityLoginBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityMainBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityMissCheckInNotificationBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityMyListDetailBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityRankingBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityRecommendShortsNotificationBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityRefreshAdNotificationBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityRegionSelectBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityRevealShortsNotificationBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityRoutingBindingImpl;
import com.startshorts.androidplayer.databinding.ActivitySearchBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityStartRechargingNotificationBindingImpl;
import com.startshorts.androidplayer.databinding.ActivitySubsBonusNotificationBindingImpl;
import com.startshorts.androidplayer.databinding.ActivitySubsDetail2BindingImpl;
import com.startshorts.androidplayer.databinding.ActivitySubsDetailBindingImpl;
import com.startshorts.androidplayer.databinding.ActivitySubsDetailBindingRuImpl;
import com.startshorts.androidplayer.databinding.ActivityTestBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityThirdAdBindingImpl;
import com.startshorts.androidplayer.databinding.ActivityWatchShortsNotificationBindingImpl;
import com.startshorts.androidplayer.databinding.AdToCoinsDialogBindingImpl;
import com.startshorts.androidplayer.databinding.AdToSubscribeDialogBindingImpl;
import com.startshorts.androidplayer.databinding.DialogActBindingImpl;
import com.startshorts.androidplayer.databinding.DialogAdFreeDramaBindingImpl;
import com.startshorts.androidplayer.databinding.DialogAppNotificationPermissionBindingImpl;
import com.startshorts.androidplayer.databinding.DialogBillingUnavailableTipBindingImpl;
import com.startshorts.androidplayer.databinding.DialogCheckInBindingImpl;
import com.startshorts.androidplayer.databinding.DialogCheckInFailedBindingImpl;
import com.startshorts.androidplayer.databinding.DialogCheckInSuccessBindingImpl;
import com.startshorts.androidplayer.databinding.DialogChooseNotificationPermissionBindingImpl;
import com.startshorts.androidplayer.databinding.DialogDeleteTipBindingImpl;
import com.startshorts.androidplayer.databinding.DialogDisableSubsBindingImpl;
import com.startshorts.androidplayer.databinding.DialogDiscountSubscribeBindingImpl;
import com.startshorts.androidplayer.databinding.DialogEnablePipBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentAccumulativeaWatchBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentAdContinueBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentAdContinueRetentionBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentAdRetentionBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentClarityChooseBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentComingSoonDetailBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionAccumulatedDailyTaskBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionAccumulatedTaskBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionBackShortsBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionBackShortsBottomBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionBackShortsEarnCoinBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionEpisodeListBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionIntroductionBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionRedeemCodeBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionRedeemCodeBindingJaImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionRedeemCodeBindingKoImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionRedeemCodeBindingLdrtlImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionRedeemCodeBindingZhRCNImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionRedeemCodeBindingZhRTWImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentLibraryLabelBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentNewUserRecommendBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentProfileLoginGuide2BindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentProfileLoginGuideBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBindingDeImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBindingEsImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBindingFrImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentSkuExpansionBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentSubsExpansionBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentSubsExpansionNewBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentSubsProExpiredBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentTagDrawerListBindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentUnlockTemplate21BindingImpl;
import com.startshorts.androidplayer.databinding.DialogFragmentUnlockTemplate22BindingImpl;
import com.startshorts.androidplayer.databinding.DialogHomeLoginGuideBindingImpl;
import com.startshorts.androidplayer.databinding.DialogInterstitialLoadingBindingImpl;
import com.startshorts.androidplayer.databinding.DialogLoadingBindingImpl;
import com.startshorts.androidplayer.databinding.DialogLogoutTipBindingImpl;
import com.startshorts.androidplayer.databinding.DialogMergeTouristBindingImpl;
import com.startshorts.androidplayer.databinding.DialogMergeTouristFailedBindingImpl;
import com.startshorts.androidplayer.databinding.DialogMergeTouristProcessBindingImpl;
import com.startshorts.androidplayer.databinding.DialogMergeTouristSucceedBindingImpl;
import com.startshorts.androidplayer.databinding.DialogNormalLoginGuideBindingImpl;
import com.startshorts.androidplayer.databinding.DialogOpenShortByIdBindingImpl;
import com.startshorts.androidplayer.databinding.DialogPaymentItemGoogleBindingImpl;
import com.startshorts.androidplayer.databinding.DialogPaymentItemPpBindingImpl;
import com.startshorts.androidplayer.databinding.DialogPaymentItemSpBindingImpl;
import com.startshorts.androidplayer.databinding.DialogPurchaseFailedTipBindingImpl;
import com.startshorts.androidplayer.databinding.DialogRetainFragmentDiscountBindingImpl;
import com.startshorts.androidplayer.databinding.DialogRetryUnlockBindingImpl;
import com.startshorts.androidplayer.databinding.DialogRewardLoadingBindingImpl;
import com.startshorts.androidplayer.databinding.DialogRfmGuideBindingImpl;
import com.startshorts.androidplayer.databinding.DialogSubsUpdateBindingImpl;
import com.startshorts.androidplayer.databinding.DialogSwitchAccountTipBindingImpl;
import com.startshorts.androidplayer.databinding.DialogTipBindingImpl;
import com.startshorts.androidplayer.databinding.DialogTopupBindingImpl;
import com.startshorts.androidplayer.databinding.DialogTtpPmentProcessBindingImpl;
import com.startshorts.androidplayer.databinding.DialogUpdateBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentBindInfoBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentBlackFridayCoinSkuBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentBonusRecordBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentCoinsRecordBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentCollectionListBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentDeleteAccountBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentDiscoverBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentDiscoverLibraryBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentDiscoverMoreBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentDiscoverMoreCategoryFilterBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentDiscoverMoreCategoryFilterListBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentDiscoverRankingBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentDiscoverRankingTabBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentDiscoverTabBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentDiscoverWebviewBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentEmailAuthBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentEpisodeListBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentListBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentMyCollectionBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentMyListBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentMyListDetailBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentMyWalletBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentMylistMixBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentPhoneAuthBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentProfileBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentRankingBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentRecentlyWatchedBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentRecyclerViewBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentRefreshBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentRewardsBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentSettingsBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentShortsBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentSwitchInfoBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentTagFilterBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentTagFilterListBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentTopUpBindingImpl;
import com.startshorts.androidplayer.databinding.FragmentWatchedRecentlyBindingImpl;
import com.startshorts.androidplayer.databinding.ItemActGuidePointBindingImpl;
import com.startshorts.androidplayer.databinding.ItemAppLanguageBindingImpl;
import com.startshorts.androidplayer.databinding.ItemBatchUnlockAdBindingImpl;
import com.startshorts.androidplayer.databinding.ItemBindInfoBindingImpl;
import com.startshorts.androidplayer.databinding.ItemBlackFridayCoinSkuExpiredBindingImpl;
import com.startshorts.androidplayer.databinding.ItemBlackFridayCoinSkuTitleBindingImpl;
import com.startshorts.androidplayer.databinding.ItemBlackFridayCoinSkuUnusedBindingImpl;
import com.startshorts.androidplayer.databinding.ItemBlackFridayCoinSkuUsedBindingImpl;
import com.startshorts.androidplayer.databinding.ItemBonusRecordBindingImpl;
import com.startshorts.androidplayer.databinding.ItemCheckInFutureNotCheckInBindingImpl;
import com.startshorts.androidplayer.databinding.ItemCheckInNowCheckInBindingImpl;
import com.startshorts.androidplayer.databinding.ItemCheckInNowNotCheckInBindingImpl;
import com.startshorts.androidplayer.databinding.ItemCheckInPassedCheckInBindingImpl;
import com.startshorts.androidplayer.databinding.ItemCheckInPassedNotCheckInBindingImpl;
import com.startshorts.androidplayer.databinding.ItemClarityChooseBindingImpl;
import com.startshorts.androidplayer.databinding.ItemCoinSkuRecommendMainBindingImpl;
import com.startshorts.androidplayer.databinding.ItemCoinSkuRecommendNormalBindingImpl;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupBlackFriday7BindingImpl;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupBlackFridayBindingImpl;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupExpansion7BindingImpl;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupExpansionBindingImpl;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupMain7BindingImpl;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupMainBindingImpl;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupNormal7BindingImpl;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupNormalBindingImpl;
import com.startshorts.androidplayer.databinding.ItemCoinsRecordBindingImpl;
import com.startshorts.androidplayer.databinding.ItemCollectionHorizontalBindingImpl;
import com.startshorts.androidplayer.databinding.ItemCoverPlayBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDialogFragmentEpisodeRedeemCodeEquityBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscountCoinSkuPurchasedBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscountCoinSkuRefundBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverBannerBrandAd2BindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverBannerBrandAdBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverBannerH52BindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverBannerH5BindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverBannerShorts2BindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverBannerShorts3BindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverBannerShortsBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverCategoryBannerItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverCategoryPageItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverCirclePictureBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverColumnXWaterfallBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverComingSoonBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverDiscountRectanglePictureBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverHorizontalImageIconBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverHorizontalImageVideoPreviewBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverMain1Row2ColumnContainerBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverMain1Row2ColumnContainerItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleActBannerBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleBanner2BindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleBanner3BindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleBannerBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleCarouselBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleCategoryBannerBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleCategoryPageBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleCategoryTabBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleEmptySpaceBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleMain1Row2ColumnXMainPartBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleMain1Row2ColumnXRowPartBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleRankingPageBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleRankingTabBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleSingleRowBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleTimeCountTitleMoreBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleTitleMoreBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleTitleMoreWithIconBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverMoreCategoryFilterBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverMoreComingSoonBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverMoreOtherBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverPictureTextBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverRankingBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverRankingMulTagBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverRankingMulTagItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverRankingNewBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverRankingPageItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverRankingTabBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverRectanglePictureBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverStaggeredItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverStaggeredRankItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverStaggeredRankShortItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverStaggeredRelatedShortItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverStaggeredRelatedShortListItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverStaggeredTagItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverStaggeredTagListItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDiscoverTabBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDownloadDramaBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDownloadDramaDetailHeadBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDownloadDramaHeadBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDownloadedDramaBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDownloadedDramaEpBindingImpl;
import com.startshorts.androidplayer.databinding.ItemDownloadingDramaBindingImpl;
import com.startshorts.androidplayer.databinding.ItemEpisodeLockedBindingImpl;
import com.startshorts.androidplayer.databinding.ItemEpisodeNormalBindingImpl;
import com.startshorts.androidplayer.databinding.ItemEpisodePlayingBindingImpl;
import com.startshorts.androidplayer.databinding.ItemEpisodeTabBindingImpl;
import com.startshorts.androidplayer.databinding.ItemEpisodeVirtualBindingImpl;
import com.startshorts.androidplayer.databinding.ItemGridLibraryBindingImpl;
import com.startshorts.androidplayer.databinding.ItemGridTagDrawerBindingImpl;
import com.startshorts.androidplayer.databinding.ItemHomeCheckInDayBigBindingImpl;
import com.startshorts.androidplayer.databinding.ItemHomeCheckInDayNormalBindingImpl;
import com.startshorts.androidplayer.databinding.ItemImmersionBackShortsBindingImpl;
import com.startshorts.androidplayer.databinding.ItemImmersionNormalBindingImpl;
import com.startshorts.androidplayer.databinding.ItemImmersionSubtitleBindingImpl;
import com.startshorts.androidplayer.databinding.ItemLibraryBindingImpl;
import com.startshorts.androidplayer.databinding.ItemLibraryClassifyBindingImpl;
import com.startshorts.androidplayer.databinding.ItemLowSkuTemplateNotification3BindingImpl;
import com.startshorts.androidplayer.databinding.ItemLowSkuTemplateNotificationBindingImpl;
import com.startshorts.androidplayer.databinding.ItemMyCollectionBindingImpl;
import com.startshorts.androidplayer.databinding.ItemMyListTabBindingImpl;
import com.startshorts.androidplayer.databinding.ItemNewUserRecommendBindingImpl;
import com.startshorts.androidplayer.databinding.ItemNextEpisodeTipBindingImpl;
import com.startshorts.androidplayer.databinding.ItemNoviceTaskBindingImpl;
import com.startshorts.androidplayer.databinding.ItemOfficialSocialMediaBindingImpl;
import com.startshorts.androidplayer.databinding.ItemPaymentMethodBindingImpl;
import com.startshorts.androidplayer.databinding.ItemPaymentMethodLinearBindingImpl;
import com.startshorts.androidplayer.databinding.ItemPlayEpisodeBindingImpl;
import com.startshorts.androidplayer.databinding.ItemPlayResolutionExperimentTextBindingImpl;
import com.startshorts.androidplayer.databinding.ItemPlayResolutionExperimentTextIconBindingImpl;
import com.startshorts.androidplayer.databinding.ItemPlayResolutionTextCenterBindingImpl;
import com.startshorts.androidplayer.databinding.ItemPlayResolutionTextIconBindingImpl;
import com.startshorts.androidplayer.databinding.ItemPlayResolutionTextLeftBindingImpl;
import com.startshorts.androidplayer.databinding.ItemPlaySpeedBindingImpl;
import com.startshorts.androidplayer.databinding.ItemProfileMenuNormalBindingImpl;
import com.startshorts.androidplayer.databinding.ItemProfileMenuRewardsBindingImpl;
import com.startshorts.androidplayer.databinding.ItemRankingBindingImpl;
import com.startshorts.androidplayer.databinding.ItemRecentlyWatchedBindingImpl;
import com.startshorts.androidplayer.databinding.ItemRecentlyWatchedHorizontalBindingImpl;
import com.startshorts.androidplayer.databinding.ItemRecommendShortsNewBindingImpl;
import com.startshorts.androidplayer.databinding.ItemRecommendShortsNewTopBindingImpl;
import com.startshorts.androidplayer.databinding.ItemRewardFragmentModuleCheckInAndYourBonusBindingImpl;
import com.startshorts.androidplayer.databinding.ItemRewardFragmentModuleDailyWatchBindingImpl;
import com.startshorts.androidplayer.databinding.ItemRewardFragmentModuleDesBindingImpl;
import com.startshorts.androidplayer.databinding.ItemRewardFragmentModuleGetMoreTitleBindingImpl;
import com.startshorts.androidplayer.databinding.ItemRewardFragmentModuleNewbieWatchBindingImpl;
import com.startshorts.androidplayer.databinding.ItemRewardFragmentModuleTaskBindingImpl;
import com.startshorts.androidplayer.databinding.ItemRewardFragmentModuleWatchAdBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchActBannerBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchBottomPaddingBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchExactlyBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchFuzzyBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchHistoryBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchHistoryKeywordBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchLabelBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchModuleEmptySpaceBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchModuleTitleBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchNoMoreResultBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchNoNetworkBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchNoResultBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchPopularBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchRankingBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSearchRankingShortItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSelectRegionBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSelectRegionSectionBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSettingsAutoUnlockEpisodeBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSettingsDividerLineBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSettingsFsiPermissionBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSettingsNormalItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSettingsTitleBindingImpl;
import com.startshorts.androidplayer.databinding.ItemShortsBrandPicAdBindingImpl;
import com.startshorts.androidplayer.databinding.ItemShortsBrandVideoAdBindingImpl;
import com.startshorts.androidplayer.databinding.ItemShortsNormalBindingImpl;
import com.startshorts.androidplayer.databinding.ItemShortsProgrammaticAdBindingImpl;
import com.startshorts.androidplayer.databinding.ItemShortsSubtitleBindingImpl;
import com.startshorts.androidplayer.databinding.ItemShortsTrailerBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSingleUnlockAdLargeBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSingleUnlockAdSmallBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSubsPrivilege2BindingImpl;
import com.startshorts.androidplayer.databinding.ItemSubsPrivilegeBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSubsSkuRecommendNormalBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSubsSkuRecommendProBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSubsTypeNormal7BindingImpl;
import com.startshorts.androidplayer.databinding.ItemSubsTypePro7BindingImpl;
import com.startshorts.androidplayer.databinding.ItemSubsTypeProMainBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSubsTypeProNormalBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSubsdetail2TabBindingImpl;
import com.startshorts.androidplayer.databinding.ItemSwitchInfoBindingImpl;
import com.startshorts.androidplayer.databinding.ItemTagFilterTabBindingImpl;
import com.startshorts.androidplayer.databinding.ItemTagListShortsBindingImpl;
import com.startshorts.androidplayer.databinding.ItemTaskCenterActBannerBindingImpl;
import com.startshorts.androidplayer.databinding.ItemTemplateUnlockAdBindingImpl;
import com.startshorts.androidplayer.databinding.ItemTestTextItemBindingImpl;
import com.startshorts.androidplayer.databinding.ItemThirdPartyPaymentBindingImpl;
import com.startshorts.androidplayer.databinding.ItemVipChooseBindingImpl;
import com.startshorts.androidplayer.databinding.ItemWalletTabBindingImpl;
import com.startshorts.androidplayer.databinding.ItemWatchAdBonusCountDownBindingImpl;
import com.startshorts.androidplayer.databinding.ItemWatchAdBonusDisableWatchBindingImpl;
import com.startshorts.androidplayer.databinding.ItemWatchAdBonusEnableWatchBindingImpl;
import com.startshorts.androidplayer.databinding.ItemWatchAdBonusWatchedBindingImpl;
import com.startshorts.androidplayer.databinding.ItemWindowPlayBindingImpl;
import com.startshorts.androidplayer.databinding.ItemYouMightLikeBindingImpl;
import com.startshorts.androidplayer.databinding.ItemYouMightLikeKeywordBindingImpl;
import com.startshorts.androidplayer.databinding.LayoutMylistHistoryHorizontalItemBindingImpl;
import com.startshorts.androidplayer.databinding.LayoutToastCollectResultBindingImpl;
import com.startshorts.androidplayer.databinding.LayoutToastDelBindingImpl;
import com.startshorts.androidplayer.databinding.NewDialogTipBindingImpl;
import com.startshorts.androidplayer.databinding.PullUpLoadEndBindingImpl;
import com.startshorts.androidplayer.databinding.ViewAccumulatedDailyTaskBindingImpl;
import com.startshorts.androidplayer.databinding.ViewAccumulatedTaskBindingImpl;
import com.startshorts.androidplayer.databinding.ViewAccumulatedTaskProgressBindingImpl;
import com.startshorts.androidplayer.databinding.ViewAccumulatedTaskProgressItemBindingImpl;
import com.startshorts.androidplayer.databinding.ViewCoinDbSkuCardBindingImpl;
import com.startshorts.androidplayer.databinding.ViewCoinSkuBigCardBindingImpl;
import com.startshorts.androidplayer.databinding.ViewCoinSkuSmallCardBindingImpl;
import com.startshorts.androidplayer.databinding.ViewDiscoverModuleTitleMoreCountDownBindingImpl;
import com.startshorts.androidplayer.databinding.ViewDiscoverTaglistTagBindingImpl;
import com.startshorts.androidplayer.databinding.ViewFlodableTextAreaBindingImpl;
import com.startshorts.androidplayer.databinding.ViewImmersionControlBindingImpl;
import com.startshorts.androidplayer.databinding.ViewImmersionSeekbarBindingImpl;
import com.startshorts.androidplayer.databinding.ViewImmersionSeekbarExperimentBindingImpl;
import com.startshorts.androidplayer.databinding.ViewItemLoadMoreEndBindingImpl;
import com.startshorts.androidplayer.databinding.ViewLoginGetBonusLabel2BindingImpl;
import com.startshorts.androidplayer.databinding.ViewLoginGetBonusLabelBindingImpl;
import com.startshorts.androidplayer.databinding.ViewPacketFloatBindingImpl;
import com.startshorts.androidplayer.databinding.ViewPaymentMethodBarLinearBindingImpl;
import com.startshorts.androidplayer.databinding.ViewPaymentMethodBtn1BindingImpl;
import com.startshorts.androidplayer.databinding.ViewPaymentMethodBtn2BindingImpl;
import com.startshorts.androidplayer.databinding.ViewPaymentMethodBtn3BindingImpl;
import com.startshorts.androidplayer.databinding.ViewPaymentMethodBtnBindingImpl;
import com.startshorts.androidplayer.databinding.ViewRewardsPendantBindingImpl;
import com.startshorts.androidplayer.databinding.ViewShortsImmersionTagClickableBindingImpl;
import com.startshorts.androidplayer.databinding.ViewShortsImmersionTagNormalBindingImpl;
import com.startshorts.androidplayer.databinding.ViewSubDbSkuBigCardBindingImpl;
import com.startshorts.androidplayer.databinding.ViewSubDbSkuSmallCardBindingImpl;
import com.startshorts.androidplayer.databinding.ViewSubSkuBigCardBindingImpl;
import com.startshorts.androidplayer.databinding.ViewSubSkuSmallCardBindingImpl;
import com.startshorts.androidplayer.databinding.ViewSubtitleBindingImpl;
import com.startshorts.androidplayer.databinding.ViewToastAdRewardErrorBindingImpl;
import com.startshorts.androidplayer.databinding.ViewTurbolinkFloatBindingImpl;
import com.startshorts.androidplayer.databinding.ViewYouMightLikeBindingImpl;
import com.startshorts.androidplayer.databinding.ViewstubCoinSkuNormalThirdLabelBindingImpl;
import com.startshorts.androidplayer.databinding.ViewstubMyListEditBindingImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes6.dex */
public class DataBinderMapperImpl extends DataBinderMapper {

    /* renamed from: a  reason: collision with root package name */
    private static final SparseIntArray f37158a;

    /* loaded from: classes6.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        static final SparseArray<String> f37159a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(8);
            f37159a = sparseArray;
            sparseArray.put(0, "_all");
            sparseArray.put(1, "bonus");
            sparseArray.put(2, "coins");
            sparseArray.put(3, "hasSubscription");
            sparseArray.put(4, TextureRenderKeys.KEY_IS_INDEX);
            sparseArray.put(5, "item");
            sparseArray.put(6, "selected");
            sparseArray.put(7, "subscription");
        }
    }

    /* loaded from: classes6.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        static final HashMap<String, Integer> f37160a;

        static {
            HashMap<String, Integer> hashMap = new HashMap<>((int) MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_DECODE_MS_GAPS);
            f37160a = hashMap;
            hashMap.put("layout/activity_act_0", Integer.valueOf(R$layout.activity_act));
            hashMap.put("layout/activity_bonus_will_expired_notification_0", Integer.valueOf(R$layout.activity_bonus_will_expired_notification));
            hashMap.put("layout/activity_custom_notification_0", Integer.valueOf(R$layout.activity_custom_notification));
            hashMap.put("layout/activity_daemon_notification_0", Integer.valueOf(R$layout.activity_daemon_notification));
            hashMap.put("layout/activity_default_check_in_notification_0", Integer.valueOf(R$layout.activity_default_check_in_notification));
            hashMap.put("layout/activity_default_new_shorts_notification_0", Integer.valueOf(R$layout.activity_default_new_shorts_notification));
            hashMap.put("layout/activity_download_choose_0", Integer.valueOf(R$layout.activity_download_choose));
            hashMap.put("layout/activity_download_manage_0", Integer.valueOf(R$layout.activity_download_manage));
            hashMap.put("layout/activity_downloaded_list_0", Integer.valueOf(R$layout.activity_downloaded_list));
            hashMap.put("layout/activity_fragment_container_0", Integer.valueOf(R$layout.activity_fragment_container));
            hashMap.put("layout/activity_hot_shorts_notification_0", Integer.valueOf(R$layout.activity_hot_shorts_notification));
            hashMap.put("layout/activity_immersion_0", Integer.valueOf(R$layout.activity_immersion));
            hashMap.put("layout/activity_library_0", Integer.valueOf(R$layout.activity_library));
            hashMap.put("layout/activity_list_0", Integer.valueOf(R$layout.activity_list));
            hashMap.put("layout/activity_login_0", Integer.valueOf(R$layout.activity_login));
            hashMap.put("layout/activity_login2_0", Integer.valueOf(R$layout.activity_login2));
            hashMap.put("layout/activity_main_0", Integer.valueOf(R$layout.activity_main));
            hashMap.put("layout/activity_miss_check_in_notification_0", Integer.valueOf(R$layout.activity_miss_check_in_notification));
            hashMap.put("layout/activity_my_list_detail_0", Integer.valueOf(R$layout.activity_my_list_detail));
            hashMap.put("layout/activity_ranking_0", Integer.valueOf(R$layout.activity_ranking));
            hashMap.put("layout/activity_recommend_shorts_notification_0", Integer.valueOf(R$layout.activity_recommend_shorts_notification));
            hashMap.put("layout/activity_refresh_ad_notification_0", Integer.valueOf(R$layout.activity_refresh_ad_notification));
            hashMap.put("layout/activity_region_select_0", Integer.valueOf(R$layout.activity_region_select));
            hashMap.put("layout/activity_reveal_shorts_notification_0", Integer.valueOf(R$layout.activity_reveal_shorts_notification));
            hashMap.put("layout/activity_routing_0", Integer.valueOf(R$layout.activity_routing));
            hashMap.put("layout/activity_search_0", Integer.valueOf(R$layout.activity_search));
            hashMap.put("layout/activity_start_recharging_notification_0", Integer.valueOf(R$layout.activity_start_recharging_notification));
            hashMap.put("layout/activity_subs_bonus_notification_0", Integer.valueOf(R$layout.activity_subs_bonus_notification));
            hashMap.put("layout/activity_subs_detail_0", Integer.valueOf(R$layout.activity_subs_detail));
            hashMap.put("layout-ru/activity_subs_detail_0", Integer.valueOf(R$layout.activity_subs_detail));
            hashMap.put("layout/activity_subs_detail2_0", Integer.valueOf(R$layout.activity_subs_detail2));
            hashMap.put("layout/activity_test_0", Integer.valueOf(R$layout.activity_test));
            hashMap.put("layout/activity_third_ad_0", Integer.valueOf(R$layout.activity_third_ad));
            hashMap.put("layout/activity_watch_shorts_notification_0", Integer.valueOf(R$layout.activity_watch_shorts_notification));
            hashMap.put("layout/ad_to_coins_dialog_0", Integer.valueOf(R$layout.ad_to_coins_dialog));
            hashMap.put("layout/ad_to_subscribe_dialog_0", Integer.valueOf(R$layout.ad_to_subscribe_dialog));
            hashMap.put("layout/dialog_act_0", Integer.valueOf(R$layout.dialog_act));
            hashMap.put("layout/dialog_ad_free_drama_0", Integer.valueOf(R$layout.dialog_ad_free_drama));
            hashMap.put("layout/dialog_app_notification_permission_0", Integer.valueOf(R$layout.dialog_app_notification_permission));
            hashMap.put("layout/dialog_billing_unavailable_tip_0", Integer.valueOf(R$layout.dialog_billing_unavailable_tip));
            hashMap.put("layout/dialog_check_in_0", Integer.valueOf(R$layout.dialog_check_in));
            hashMap.put("layout/dialog_check_in_failed_0", Integer.valueOf(R$layout.dialog_check_in_failed));
            hashMap.put("layout/dialog_check_in_success_0", Integer.valueOf(R$layout.dialog_check_in_success));
            hashMap.put("layout/dialog_choose_notification_permission_0", Integer.valueOf(R$layout.dialog_choose_notification_permission));
            hashMap.put("layout/dialog_delete_tip_0", Integer.valueOf(R$layout.dialog_delete_tip));
            hashMap.put("layout/dialog_disable_subs_0", Integer.valueOf(R$layout.dialog_disable_subs));
            hashMap.put("layout/dialog_discount_subscribe_0", Integer.valueOf(R$layout.dialog_discount_subscribe));
            hashMap.put("layout/dialog_enable_pip_0", Integer.valueOf(R$layout.dialog_enable_pip));
            hashMap.put("layout/dialog_fragment_accumulativea_watch_0", Integer.valueOf(R$layout.dialog_fragment_accumulativea_watch));
            hashMap.put("layout/dialog_fragment_ad_continue_0", Integer.valueOf(R$layout.dialog_fragment_ad_continue));
            hashMap.put("layout/dialog_fragment_ad_continue_retention_0", Integer.valueOf(R$layout.dialog_fragment_ad_continue_retention));
            hashMap.put("layout/dialog_fragment_ad_retention_0", Integer.valueOf(R$layout.dialog_fragment_ad_retention));
            hashMap.put("layout/dialog_fragment_clarity_choose_0", Integer.valueOf(R$layout.dialog_fragment_clarity_choose));
            hashMap.put("layout/dialog_fragment_coming_soon_detail_0", Integer.valueOf(R$layout.dialog_fragment_coming_soon_detail));
            hashMap.put("layout/dialog_fragment_immersion_accumulated_daily_task_0", Integer.valueOf(R$layout.dialog_fragment_immersion_accumulated_daily_task));
            hashMap.put("layout/dialog_fragment_immersion_accumulated_task_0", Integer.valueOf(R$layout.dialog_fragment_immersion_accumulated_task));
            hashMap.put("layout/dialog_fragment_immersion_back_shorts_0", Integer.valueOf(R$layout.dialog_fragment_immersion_back_shorts));
            hashMap.put("layout/dialog_fragment_immersion_back_shorts_bottom_0", Integer.valueOf(R$layout.dialog_fragment_immersion_back_shorts_bottom));
            hashMap.put("layout/dialog_fragment_immersion_back_shorts_earn_coin_0", Integer.valueOf(R$layout.dialog_fragment_immersion_back_shorts_earn_coin));
            hashMap.put("layout/dialog_fragment_immersion_episode_list_0", Integer.valueOf(R$layout.dialog_fragment_immersion_episode_list));
            hashMap.put("layout/dialog_fragment_immersion_introduction_0", Integer.valueOf(R$layout.dialog_fragment_immersion_introduction));
            hashMap.put("layout-zh-rCN/dialog_fragment_immersion_redeem_code_0", Integer.valueOf(R$layout.dialog_fragment_immersion_redeem_code));
            hashMap.put("layout-ldrtl/dialog_fragment_immersion_redeem_code_0", Integer.valueOf(R$layout.dialog_fragment_immersion_redeem_code));
            hashMap.put("layout-zh-rTW/dialog_fragment_immersion_redeem_code_0", Integer.valueOf(R$layout.dialog_fragment_immersion_redeem_code));
            hashMap.put("layout-ja/dialog_fragment_immersion_redeem_code_0", Integer.valueOf(R$layout.dialog_fragment_immersion_redeem_code));
            hashMap.put("layout-ko/dialog_fragment_immersion_redeem_code_0", Integer.valueOf(R$layout.dialog_fragment_immersion_redeem_code));
            hashMap.put("layout/dialog_fragment_immersion_redeem_code_0", Integer.valueOf(R$layout.dialog_fragment_immersion_redeem_code));
            hashMap.put("layout/dialog_fragment_library_label_0", Integer.valueOf(R$layout.dialog_fragment_library_label));
            hashMap.put("layout/dialog_fragment_new_user_recommend_0", Integer.valueOf(R$layout.dialog_fragment_new_user_recommend));
            hashMap.put("layout/dialog_fragment_profile_login_guide_0", Integer.valueOf(R$layout.dialog_fragment_profile_login_guide));
            hashMap.put("layout/dialog_fragment_profile_login_guide2_0", Integer.valueOf(R$layout.dialog_fragment_profile_login_guide2));
            hashMap.put("layout/dialog_fragment_pure_paying_user_ad_retention_0", Integer.valueOf(R$layout.dialog_fragment_pure_paying_user_ad_retention));
            hashMap.put("layout/dialog_fragment_pure_paying_user_ad_retention_db_0", Integer.valueOf(R$layout.dialog_fragment_pure_paying_user_ad_retention_db));
            hashMap.put("layout-es/dialog_fragment_pure_paying_user_ad_retention_db_0", Integer.valueOf(R$layout.dialog_fragment_pure_paying_user_ad_retention_db));
            hashMap.put("layout-de/dialog_fragment_pure_paying_user_ad_retention_db_0", Integer.valueOf(R$layout.dialog_fragment_pure_paying_user_ad_retention_db));
            hashMap.put("layout-fr/dialog_fragment_pure_paying_user_ad_retention_db_0", Integer.valueOf(R$layout.dialog_fragment_pure_paying_user_ad_retention_db));
            hashMap.put("layout/dialog_fragment_sku_expansion_0", Integer.valueOf(R$layout.dialog_fragment_sku_expansion));
            hashMap.put("layout/dialog_fragment_subs_expansion_0", Integer.valueOf(R$layout.dialog_fragment_subs_expansion));
            hashMap.put("layout/dialog_fragment_subs_expansion_new_0", Integer.valueOf(R$layout.dialog_fragment_subs_expansion_new));
            hashMap.put("layout/dialog_fragment_subs_pro_expired_0", Integer.valueOf(R$layout.dialog_fragment_subs_pro_expired));
            hashMap.put("layout/dialog_fragment_tag_drawer_list_0", Integer.valueOf(R$layout.dialog_fragment_tag_drawer_list));
            hashMap.put("layout/dialog_fragment_unlock_template_21_0", Integer.valueOf(R$layout.dialog_fragment_unlock_template_21));
            hashMap.put("layout/dialog_fragment_unlock_template_22_0", Integer.valueOf(R$layout.dialog_fragment_unlock_template_22));
            hashMap.put("layout/dialog_home_login_guide_0", Integer.valueOf(R$layout.dialog_home_login_guide));
            hashMap.put("layout/dialog_interstitial_loading_0", Integer.valueOf(R$layout.dialog_interstitial_loading));
            hashMap.put("layout/dialog_loading_0", Integer.valueOf(R$layout.dialog_loading));
            hashMap.put("layout/dialog_logout_tip_0", Integer.valueOf(R$layout.dialog_logout_tip));
            hashMap.put("layout/dialog_merge_tourist_0", Integer.valueOf(R$layout.dialog_merge_tourist));
            hashMap.put("layout/dialog_merge_tourist_failed_0", Integer.valueOf(R$layout.dialog_merge_tourist_failed));
            hashMap.put("layout/dialog_merge_tourist_process_0", Integer.valueOf(R$layout.dialog_merge_tourist_process));
            hashMap.put("layout/dialog_merge_tourist_succeed_0", Integer.valueOf(R$layout.dialog_merge_tourist_succeed));
            hashMap.put("layout/dialog_normal_login_guide_0", Integer.valueOf(R$layout.dialog_normal_login_guide));
            hashMap.put("layout/dialog_open_short_by_id_0", Integer.valueOf(R$layout.dialog_open_short_by_id));
            hashMap.put("layout/dialog_payment_item_google_0", Integer.valueOf(R$layout.dialog_payment_item_google));
            hashMap.put("layout/dialog_payment_item_pp_0", Integer.valueOf(R$layout.dialog_payment_item_pp));
            hashMap.put("layout/dialog_payment_item_sp_0", Integer.valueOf(R$layout.dialog_payment_item_sp));
            hashMap.put("layout/dialog_purchase_failed_tip_0", Integer.valueOf(R$layout.dialog_purchase_failed_tip));
            hashMap.put("layout/dialog_retain_fragment_discount_0", Integer.valueOf(R$layout.dialog_retain_fragment_discount));
            hashMap.put("layout/dialog_retry_unlock_0", Integer.valueOf(R$layout.dialog_retry_unlock));
            hashMap.put("layout/dialog_reward_loading_0", Integer.valueOf(R$layout.dialog_reward_loading));
            hashMap.put("layout/dialog_rfm_guide_0", Integer.valueOf(R$layout.dialog_rfm_guide));
            hashMap.put("layout/dialog_subs_update_0", Integer.valueOf(R$layout.dialog_subs_update));
            hashMap.put("layout/dialog_switch_account_tip_0", Integer.valueOf(R$layout.dialog_switch_account_tip));
            hashMap.put("layout/dialog_tip_0", Integer.valueOf(R$layout.dialog_tip));
            hashMap.put("layout/dialog_topup_0", Integer.valueOf(R$layout.dialog_topup));
            hashMap.put("layout/dialog_ttp_pment_process_0", Integer.valueOf(R$layout.dialog_ttp_pment_process));
            hashMap.put("layout/dialog_update_0", Integer.valueOf(R$layout.dialog_update));
            hashMap.put("layout/fragment_bind_info_0", Integer.valueOf(R$layout.fragment_bind_info));
            hashMap.put("layout/fragment_black_friday_coin_sku_0", Integer.valueOf(R$layout.fragment_black_friday_coin_sku));
            hashMap.put("layout/fragment_bonus_record_0", Integer.valueOf(R$layout.fragment_bonus_record));
            hashMap.put("layout/fragment_coins_record_0", Integer.valueOf(R$layout.fragment_coins_record));
            hashMap.put("layout/fragment_collection_list_0", Integer.valueOf(R$layout.fragment_collection_list));
            hashMap.put("layout/fragment_delete_account_0", Integer.valueOf(R$layout.fragment_delete_account));
            hashMap.put("layout/fragment_discover_0", Integer.valueOf(R$layout.fragment_discover));
            hashMap.put("layout/fragment_discover_library_0", Integer.valueOf(R$layout.fragment_discover_library));
            hashMap.put("layout/fragment_discover_more_0", Integer.valueOf(R$layout.fragment_discover_more));
            hashMap.put("layout/fragment_discover_more_category_filter_0", Integer.valueOf(R$layout.fragment_discover_more_category_filter));
            hashMap.put("layout/fragment_discover_more_category_filter_list_0", Integer.valueOf(R$layout.fragment_discover_more_category_filter_list));
            hashMap.put("layout/fragment_discover_ranking_0", Integer.valueOf(R$layout.fragment_discover_ranking));
            hashMap.put("layout/fragment_discover_ranking_tab_0", Integer.valueOf(R$layout.fragment_discover_ranking_tab));
            hashMap.put("layout/fragment_discover_tab_0", Integer.valueOf(R$layout.fragment_discover_tab));
            hashMap.put("layout/fragment_discover_webview_0", Integer.valueOf(R$layout.fragment_discover_webview));
            hashMap.put("layout/fragment_email_auth_0", Integer.valueOf(R$layout.fragment_email_auth));
            hashMap.put("layout/fragment_episode_list_0", Integer.valueOf(R$layout.fragment_episode_list));
            hashMap.put("layout/fragment_list_0", Integer.valueOf(R$layout.fragment_list));
            hashMap.put("layout/fragment_my_collection_0", Integer.valueOf(R$layout.fragment_my_collection));
            hashMap.put("layout/fragment_my_list_0", Integer.valueOf(R$layout.fragment_my_list));
            hashMap.put("layout/fragment_my_list_detail_0", Integer.valueOf(R$layout.fragment_my_list_detail));
            hashMap.put("layout/fragment_my_wallet_0", Integer.valueOf(R$layout.fragment_my_wallet));
            hashMap.put("layout/fragment_mylist_mix_0", Integer.valueOf(R$layout.fragment_mylist_mix));
            hashMap.put("layout/fragment_phone_auth_0", Integer.valueOf(R$layout.fragment_phone_auth));
            hashMap.put("layout/fragment_profile_0", Integer.valueOf(R$layout.fragment_profile));
            hashMap.put("layout/fragment_ranking_0", Integer.valueOf(R$layout.fragment_ranking));
            hashMap.put("layout/fragment_recently_watched_0", Integer.valueOf(R$layout.fragment_recently_watched));
            hashMap.put("layout/fragment_recycler_view_0", Integer.valueOf(R$layout.fragment_recycler_view));
            hashMap.put("layout/fragment_refresh_0", Integer.valueOf(R$layout.fragment_refresh));
            hashMap.put("layout/fragment_rewards_0", Integer.valueOf(R$layout.fragment_rewards));
            hashMap.put("layout/fragment_settings_0", Integer.valueOf(R$layout.fragment_settings));
            hashMap.put("layout/fragment_shorts_0", Integer.valueOf(R$layout.fragment_shorts));
            hashMap.put("layout/fragment_switch_info_0", Integer.valueOf(R$layout.fragment_switch_info));
            hashMap.put("layout/fragment_tag_filter_0", Integer.valueOf(R$layout.fragment_tag_filter));
            hashMap.put("layout/fragment_tag_filter_list_0", Integer.valueOf(R$layout.fragment_tag_filter_list));
            hashMap.put("layout/fragment_top_up_0", Integer.valueOf(R$layout.fragment_top_up));
            hashMap.put("layout/fragment_watched_recently_0", Integer.valueOf(R$layout.fragment_watched_recently));
            hashMap.put("layout/item_act_guide_point_0", Integer.valueOf(R$layout.item_act_guide_point));
            hashMap.put("layout/item_app_language_0", Integer.valueOf(R$layout.item_app_language));
            hashMap.put("layout/item_batch_unlock_ad_0", Integer.valueOf(R$layout.item_batch_unlock_ad));
            hashMap.put("layout/item_bind_info_0", Integer.valueOf(R$layout.item_bind_info));
            hashMap.put("layout/item_black_friday_coin_sku_expired_0", Integer.valueOf(R$layout.item_black_friday_coin_sku_expired));
            hashMap.put("layout/item_black_friday_coin_sku_title_0", Integer.valueOf(R$layout.item_black_friday_coin_sku_title));
            hashMap.put("layout/item_black_friday_coin_sku_unused_0", Integer.valueOf(R$layout.item_black_friday_coin_sku_unused));
            hashMap.put("layout/item_black_friday_coin_sku_used_0", Integer.valueOf(R$layout.item_black_friday_coin_sku_used));
            hashMap.put("layout/item_bonus_record_0", Integer.valueOf(R$layout.item_bonus_record));
            hashMap.put("layout/item_check_in_future_not_check_in_0", Integer.valueOf(R$layout.item_check_in_future_not_check_in));
            hashMap.put("layout/item_check_in_now_check_in_0", Integer.valueOf(R$layout.item_check_in_now_check_in));
            hashMap.put("layout/item_check_in_now_not_check_in_0", Integer.valueOf(R$layout.item_check_in_now_not_check_in));
            hashMap.put("layout/item_check_in_passed_check_in_0", Integer.valueOf(R$layout.item_check_in_passed_check_in));
            hashMap.put("layout/item_check_in_passed_not_check_in_0", Integer.valueOf(R$layout.item_check_in_passed_not_check_in));
            hashMap.put("layout/item_clarity_choose_0", Integer.valueOf(R$layout.item_clarity_choose));
            hashMap.put("layout/item_coin_sku_recommend_main_0", Integer.valueOf(R$layout.item_coin_sku_recommend_main));
            hashMap.put("layout/item_coin_sku_recommend_normal_0", Integer.valueOf(R$layout.item_coin_sku_recommend_normal));
            hashMap.put("layout/item_coin_sku_topup_black_friday_0", Integer.valueOf(R$layout.item_coin_sku_topup_black_friday));
            hashMap.put("layout/item_coin_sku_topup_black_friday_7_0", Integer.valueOf(R$layout.item_coin_sku_topup_black_friday_7));
            hashMap.put("layout/item_coin_sku_topup_expansion_0", Integer.valueOf(R$layout.item_coin_sku_topup_expansion));
            hashMap.put("layout/item_coin_sku_topup_expansion_7_0", Integer.valueOf(R$layout.item_coin_sku_topup_expansion_7));
            hashMap.put("layout/item_coin_sku_topup_main_0", Integer.valueOf(R$layout.item_coin_sku_topup_main));
            hashMap.put("layout/item_coin_sku_topup_main_7_0", Integer.valueOf(R$layout.item_coin_sku_topup_main_7));
            hashMap.put("layout/item_coin_sku_topup_normal_0", Integer.valueOf(R$layout.item_coin_sku_topup_normal));
            hashMap.put("layout/item_coin_sku_topup_normal_7_0", Integer.valueOf(R$layout.item_coin_sku_topup_normal_7));
            hashMap.put("layout/item_coins_record_0", Integer.valueOf(R$layout.item_coins_record));
            hashMap.put("layout/item_collection_horizontal_0", Integer.valueOf(R$layout.item_collection_horizontal));
            hashMap.put("layout/item_cover_play_0", Integer.valueOf(R$layout.item_cover_play));
            hashMap.put("layout/item_dialog_fragment_episode_redeem_code_equity_0", Integer.valueOf(R$layout.item_dialog_fragment_episode_redeem_code_equity));
            hashMap.put("layout/item_discount_coin_sku_purchased_0", Integer.valueOf(R$layout.item_discount_coin_sku_purchased));
            hashMap.put("layout/item_discount_coin_sku_refund_0", Integer.valueOf(R$layout.item_discount_coin_sku_refund));
            hashMap.put("layout/item_discover_banner_brand_ad_0", Integer.valueOf(R$layout.item_discover_banner_brand_ad));
            hashMap.put("layout/item_discover_banner_brand_ad_2_0", Integer.valueOf(R$layout.item_discover_banner_brand_ad_2));
            hashMap.put("layout/item_discover_banner_h5_0", Integer.valueOf(R$layout.item_discover_banner_h5));
            hashMap.put("layout/item_discover_banner_h5_2_0", Integer.valueOf(R$layout.item_discover_banner_h5_2));
            hashMap.put("layout/item_discover_banner_shorts_0", Integer.valueOf(R$layout.item_discover_banner_shorts));
            hashMap.put("layout/item_discover_banner_shorts_2_0", Integer.valueOf(R$layout.item_discover_banner_shorts_2));
            hashMap.put("layout/item_discover_banner_shorts_3_0", Integer.valueOf(R$layout.item_discover_banner_shorts_3));
            hashMap.put("layout/item_discover_category_banner_item_0", Integer.valueOf(R$layout.item_discover_category_banner_item));
            hashMap.put("layout/item_discover_category_page_item_0", Integer.valueOf(R$layout.item_discover_category_page_item));
            hashMap.put("layout/item_discover_circle_picture_0", Integer.valueOf(R$layout.item_discover_circle_picture));
            hashMap.put("layout/item_discover_column_x_waterfall_0", Integer.valueOf(R$layout.item_discover_column_x_waterfall));
            hashMap.put("layout/item_discover_coming_soon_0", Integer.valueOf(R$layout.item_discover_coming_soon));
            hashMap.put("layout/item_discover_discount_rectangle_picture_0", Integer.valueOf(R$layout.item_discover_discount_rectangle_picture));
            hashMap.put("layout/item_discover_horizontal_image_icon_0", Integer.valueOf(R$layout.item_discover_horizontal_image_icon));
            hashMap.put("layout/item_discover_horizontal_image_video_preview_0", Integer.valueOf(R$layout.item_discover_horizontal_image_video_preview));
            hashMap.put("layout/item_discover_main_1_row_2_column_container_0", Integer.valueOf(R$layout.item_discover_main_1_row_2_column_container));
            hashMap.put("layout/item_discover_main_1_row_2_column_container_item_0", Integer.valueOf(R$layout.item_discover_main_1_row_2_column_container_item));
            hashMap.put("layout/item_discover_module_act_banner_0", Integer.valueOf(R$layout.item_discover_module_act_banner));
            hashMap.put("layout/item_discover_module_banner_0", Integer.valueOf(R$layout.item_discover_module_banner));
            hashMap.put("layout/item_discover_module_banner_2_0", Integer.valueOf(R$layout.item_discover_module_banner_2));
            hashMap.put("layout/item_discover_module_banner_3_0", Integer.valueOf(R$layout.item_discover_module_banner_3));
            hashMap.put("layout/item_discover_module_carousel_0", Integer.valueOf(R$layout.item_discover_module_carousel));
            hashMap.put("layout/item_discover_module_category_banner_0", Integer.valueOf(R$layout.item_discover_module_category_banner));
            hashMap.put("layout/item_discover_module_category_page_0", Integer.valueOf(R$layout.item_discover_module_category_page));
            hashMap.put("layout/item_discover_module_category_tab_0", Integer.valueOf(R$layout.item_discover_module_category_tab));
            hashMap.put("layout/item_discover_module_empty_space_0", Integer.valueOf(R$layout.item_discover_module_empty_space));
            hashMap.put("layout/item_discover_module_main_1_row_2_column_x_main_part_0", Integer.valueOf(R$layout.item_discover_module_main_1_row_2_column_x_main_part));
            hashMap.put("layout/item_discover_module_main_1_row_2_column_x_row_part_0", Integer.valueOf(R$layout.item_discover_module_main_1_row_2_column_x_row_part));
            hashMap.put("layout/item_discover_module_ranking_page_0", Integer.valueOf(R$layout.item_discover_module_ranking_page));
            hashMap.put("layout/item_discover_module_ranking_tab_0", Integer.valueOf(R$layout.item_discover_module_ranking_tab));
            hashMap.put("layout/item_discover_module_single_row_0", Integer.valueOf(R$layout.item_discover_module_single_row));
            hashMap.put("layout/item_discover_module_time_count_title_more_0", Integer.valueOf(R$layout.item_discover_module_time_count_title_more));
            hashMap.put("layout/item_discover_module_title_more_0", Integer.valueOf(R$layout.item_discover_module_title_more));
            hashMap.put("layout/item_discover_module_title_more_with_icon_0", Integer.valueOf(R$layout.item_discover_module_title_more_with_icon));
            hashMap.put("layout/item_discover_more_category_filter_0", Integer.valueOf(R$layout.item_discover_more_category_filter));
            hashMap.put("layout/item_discover_more_coming_soon_0", Integer.valueOf(R$layout.item_discover_more_coming_soon));
            hashMap.put("layout/item_discover_more_other_0", Integer.valueOf(R$layout.item_discover_more_other));
            hashMap.put("layout/item_discover_picture_text_0", Integer.valueOf(R$layout.item_discover_picture_text));
            hashMap.put("layout/item_discover_ranking_0", Integer.valueOf(R$layout.item_discover_ranking));
            hashMap.put("layout/item_discover_ranking_mul_tag_0", Integer.valueOf(R$layout.item_discover_ranking_mul_tag));
            hashMap.put("layout/item_discover_ranking_mul_tag_item_0", Integer.valueOf(R$layout.item_discover_ranking_mul_tag_item));
            hashMap.put("layout/item_discover_ranking_new_0", Integer.valueOf(R$layout.item_discover_ranking_new));
            hashMap.put("layout/item_discover_ranking_page_item_0", Integer.valueOf(R$layout.item_discover_ranking_page_item));
            hashMap.put("layout/item_discover_ranking_tab_0", Integer.valueOf(R$layout.item_discover_ranking_tab));
            hashMap.put("layout/item_discover_rectangle_picture_0", Integer.valueOf(R$layout.item_discover_rectangle_picture));
            hashMap.put("layout/item_discover_staggered_item_0", Integer.valueOf(R$layout.item_discover_staggered_item));
            hashMap.put("layout/item_discover_staggered_rank_item_0", Integer.valueOf(R$layout.item_discover_staggered_rank_item));
            hashMap.put("layout/item_discover_staggered_rank_short_item_0", Integer.valueOf(R$layout.item_discover_staggered_rank_short_item));
            hashMap.put("layout/item_discover_staggered_related_short_item_0", Integer.valueOf(R$layout.item_discover_staggered_related_short_item));
            hashMap.put("layout/item_discover_staggered_related_short_list_item_0", Integer.valueOf(R$layout.item_discover_staggered_related_short_list_item));
            hashMap.put("layout/item_discover_staggered_tag_item_0", Integer.valueOf(R$layout.item_discover_staggered_tag_item));
            hashMap.put("layout/item_discover_staggered_tag_list_item_0", Integer.valueOf(R$layout.item_discover_staggered_tag_list_item));
            hashMap.put("layout/item_discover_tab_0", Integer.valueOf(R$layout.item_discover_tab));
            hashMap.put("layout/item_download_drama_0", Integer.valueOf(R$layout.item_download_drama));
            hashMap.put("layout/item_download_drama_detail_head_0", Integer.valueOf(R$layout.item_download_drama_detail_head));
            hashMap.put("layout/item_download_drama_head_0", Integer.valueOf(R$layout.item_download_drama_head));
            hashMap.put("layout/item_downloaded_drama_0", Integer.valueOf(R$layout.item_downloaded_drama));
            hashMap.put("layout/item_downloaded_drama_ep_0", Integer.valueOf(R$layout.item_downloaded_drama_ep));
            hashMap.put("layout/item_downloading_drama_0", Integer.valueOf(R$layout.item_downloading_drama));
            hashMap.put("layout/item_episode_locked_0", Integer.valueOf(R$layout.item_episode_locked));
            hashMap.put("layout/item_episode_normal_0", Integer.valueOf(R$layout.item_episode_normal));
            hashMap.put("layout/item_episode_playing_0", Integer.valueOf(R$layout.item_episode_playing));
            hashMap.put("layout/item_episode_tab_0", Integer.valueOf(R$layout.item_episode_tab));
            hashMap.put("layout/item_episode_virtual_0", Integer.valueOf(R$layout.item_episode_virtual));
            hashMap.put("layout/item_grid_library_0", Integer.valueOf(R$layout.item_grid_library));
            hashMap.put("layout/item_grid_tag_drawer_0", Integer.valueOf(R$layout.item_grid_tag_drawer));
            hashMap.put("layout/item_home_check_in_day_big_0", Integer.valueOf(R$layout.item_home_check_in_day_big));
            hashMap.put("layout/item_home_check_in_day_normal_0", Integer.valueOf(R$layout.item_home_check_in_day_normal));
            hashMap.put("layout/item_immersion_back_shorts_0", Integer.valueOf(R$layout.item_immersion_back_shorts));
            hashMap.put("layout/item_immersion_normal_0", Integer.valueOf(R$layout.item_immersion_normal));
            hashMap.put("layout/item_immersion_subtitle_0", Integer.valueOf(R$layout.item_immersion_subtitle));
            hashMap.put("layout/item_library_0", Integer.valueOf(R$layout.item_library));
            hashMap.put("layout/item_library_classify_0", Integer.valueOf(R$layout.item_library_classify));
            hashMap.put("layout/item_low_sku_template_notification_0", Integer.valueOf(R$layout.item_low_sku_template_notification));
            hashMap.put("layout/item_low_sku_template_notification_3_0", Integer.valueOf(R$layout.item_low_sku_template_notification_3));
            hashMap.put("layout/item_my_collection_0", Integer.valueOf(R$layout.item_my_collection));
            hashMap.put("layout/item_my_list_tab_0", Integer.valueOf(R$layout.item_my_list_tab));
            hashMap.put("layout/item_new_user_recommend_0", Integer.valueOf(R$layout.item_new_user_recommend));
            hashMap.put("layout/item_next_episode_tip_0", Integer.valueOf(R$layout.item_next_episode_tip));
            hashMap.put("layout/item_novice_task_0", Integer.valueOf(R$layout.item_novice_task));
            hashMap.put("layout/item_official_social_media_0", Integer.valueOf(R$layout.item_official_social_media));
            hashMap.put("layout/item_payment_method_0", Integer.valueOf(R$layout.item_payment_method));
            hashMap.put("layout/item_payment_method_linear_0", Integer.valueOf(R$layout.item_payment_method_linear));
            hashMap.put("layout/item_play_episode_0", Integer.valueOf(R$layout.item_play_episode));
            hashMap.put("layout/item_play_resolution_experiment_text_0", Integer.valueOf(R$layout.item_play_resolution_experiment_text));
            hashMap.put("layout/item_play_resolution_experiment_text_icon_0", Integer.valueOf(R$layout.item_play_resolution_experiment_text_icon));
            hashMap.put("layout/item_play_resolution_text_center_0", Integer.valueOf(R$layout.item_play_resolution_text_center));
            hashMap.put("layout/item_play_resolution_text_icon_0", Integer.valueOf(R$layout.item_play_resolution_text_icon));
            hashMap.put("layout/item_play_resolution_text_left_0", Integer.valueOf(R$layout.item_play_resolution_text_left));
            hashMap.put("layout/item_play_speed_0", Integer.valueOf(R$layout.item_play_speed));
            hashMap.put("layout/item_profile_menu_normal_0", Integer.valueOf(R$layout.item_profile_menu_normal));
            hashMap.put("layout/item_profile_menu_rewards_0", Integer.valueOf(R$layout.item_profile_menu_rewards));
            hashMap.put("layout/item_ranking_0", Integer.valueOf(R$layout.item_ranking));
            hashMap.put("layout/item_recently_watched_0", Integer.valueOf(R$layout.item_recently_watched));
            hashMap.put("layout/item_recently_watched_horizontal_0", Integer.valueOf(R$layout.item_recently_watched_horizontal));
            hashMap.put("layout/item_recommend_shorts_new_0", Integer.valueOf(R$layout.item_recommend_shorts_new));
            hashMap.put("layout/item_recommend_shorts_new_top_0", Integer.valueOf(R$layout.item_recommend_shorts_new_top));
            hashMap.put("layout/item_reward_fragment_module_check_in_and_your_bonus_0", Integer.valueOf(R$layout.item_reward_fragment_module_check_in_and_your_bonus));
            hashMap.put("layout/item_reward_fragment_module_daily_watch_0", Integer.valueOf(R$layout.item_reward_fragment_module_daily_watch));
            hashMap.put("layout/item_reward_fragment_module_des_0", Integer.valueOf(R$layout.item_reward_fragment_module_des));
            hashMap.put("layout/item_reward_fragment_module_get_more_title_0", Integer.valueOf(R$layout.item_reward_fragment_module_get_more_title));
            hashMap.put("layout/item_reward_fragment_module_newbie_watch_0", Integer.valueOf(R$layout.item_reward_fragment_module_newbie_watch));
            hashMap.put("layout/item_reward_fragment_module_task_0", Integer.valueOf(R$layout.item_reward_fragment_module_task));
            hashMap.put("layout/item_reward_fragment_module_watch_ad_0", Integer.valueOf(R$layout.item_reward_fragment_module_watch_ad));
            hashMap.put("layout/item_search_act_banner_0", Integer.valueOf(R$layout.item_search_act_banner));
            hashMap.put("layout/item_search_bottom_padding_0", Integer.valueOf(R$layout.item_search_bottom_padding));
            hashMap.put("layout/item_search_exactly_0", Integer.valueOf(R$layout.item_search_exactly));
            hashMap.put("layout/item_search_fuzzy_0", Integer.valueOf(R$layout.item_search_fuzzy));
            hashMap.put("layout/item_search_history_0", Integer.valueOf(R$layout.item_search_history));
            hashMap.put("layout/item_search_history_keyword_0", Integer.valueOf(R$layout.item_search_history_keyword));
            hashMap.put("layout/item_search_label_0", Integer.valueOf(R$layout.item_search_label));
            hashMap.put("layout/item_search_module_empty_space_0", Integer.valueOf(R$layout.item_search_module_empty_space));
            hashMap.put("layout/item_search_module_title_0", Integer.valueOf(R$layout.item_search_module_title));
            hashMap.put("layout/item_search_no_more_result_0", Integer.valueOf(R$layout.item_search_no_more_result));
            hashMap.put("layout/item_search_no_network_0", Integer.valueOf(R$layout.item_search_no_network));
            hashMap.put("layout/item_search_no_result_0", Integer.valueOf(R$layout.item_search_no_result));
            hashMap.put("layout/item_search_popular_0", Integer.valueOf(R$layout.item_search_popular));
            hashMap.put("layout/item_search_ranking_0", Integer.valueOf(R$layout.item_search_ranking));
            hashMap.put("layout/item_search_ranking_short_item_0", Integer.valueOf(R$layout.item_search_ranking_short_item));
            hashMap.put("layout/item_select_region_0", Integer.valueOf(R$layout.item_select_region));
            hashMap.put("layout/item_select_region_section_0", Integer.valueOf(R$layout.item_select_region_section));
            hashMap.put("layout/item_settings_auto_unlock_episode_0", Integer.valueOf(R$layout.item_settings_auto_unlock_episode));
            hashMap.put("layout/item_settings_divider_line_0", Integer.valueOf(R$layout.item_settings_divider_line));
            hashMap.put("layout/item_settings_fsi_permission_0", Integer.valueOf(R$layout.item_settings_fsi_permission));
            hashMap.put("layout/item_settings_normal_item_0", Integer.valueOf(R$layout.item_settings_normal_item));
            hashMap.put("layout/item_settings_title_0", Integer.valueOf(R$layout.item_settings_title));
            hashMap.put("layout/item_shorts_brand_pic_ad_0", Integer.valueOf(R$layout.item_shorts_brand_pic_ad));
            hashMap.put("layout/item_shorts_brand_video_ad_0", Integer.valueOf(R$layout.item_shorts_brand_video_ad));
            hashMap.put("layout/item_shorts_normal_0", Integer.valueOf(R$layout.item_shorts_normal));
            hashMap.put("layout/item_shorts_programmatic_ad_0", Integer.valueOf(R$layout.item_shorts_programmatic_ad));
            hashMap.put("layout/item_shorts_subtitle_0", Integer.valueOf(R$layout.item_shorts_subtitle));
            hashMap.put("layout/item_shorts_trailer_0", Integer.valueOf(R$layout.item_shorts_trailer));
            hashMap.put("layout/item_single_unlock_ad_large_0", Integer.valueOf(R$layout.item_single_unlock_ad_large));
            hashMap.put("layout/item_single_unlock_ad_small_0", Integer.valueOf(R$layout.item_single_unlock_ad_small));
            hashMap.put("layout/item_subs_privilege_0", Integer.valueOf(R$layout.item_subs_privilege));
            hashMap.put("layout/item_subs_privilege_2_0", Integer.valueOf(R$layout.item_subs_privilege_2));
            hashMap.put("layout/item_subs_sku_recommend_normal_0", Integer.valueOf(R$layout.item_subs_sku_recommend_normal));
            hashMap.put("layout/item_subs_sku_recommend_pro_0", Integer.valueOf(R$layout.item_subs_sku_recommend_pro));
            hashMap.put("layout/item_subs_type_normal_7_0", Integer.valueOf(R$layout.item_subs_type_normal_7));
            hashMap.put("layout/item_subs_type_pro_7_0", Integer.valueOf(R$layout.item_subs_type_pro_7));
            hashMap.put("layout/item_subs_type_pro_main_0", Integer.valueOf(R$layout.item_subs_type_pro_main));
            hashMap.put("layout/item_subs_type_pro_normal_0", Integer.valueOf(R$layout.item_subs_type_pro_normal));
            hashMap.put("layout/item_subsdetail2_tab_0", Integer.valueOf(R$layout.item_subsdetail2_tab));
            hashMap.put("layout/item_switch_info_0", Integer.valueOf(R$layout.item_switch_info));
            hashMap.put("layout/item_tag_filter_tab_0", Integer.valueOf(R$layout.item_tag_filter_tab));
            hashMap.put("layout/item_tag_list_shorts_0", Integer.valueOf(R$layout.item_tag_list_shorts));
            hashMap.put("layout/item_task_center_act_banner_0", Integer.valueOf(R$layout.item_task_center_act_banner));
            hashMap.put("layout/item_template_unlock_ad_0", Integer.valueOf(R$layout.item_template_unlock_ad));
            hashMap.put("layout/item_test_text_item_0", Integer.valueOf(R$layout.item_test_text_item));
            hashMap.put("layout/item_third_party_payment_0", Integer.valueOf(R$layout.item_third_party_payment));
            hashMap.put("layout/item_vip_choose_0", Integer.valueOf(R$layout.item_vip_choose));
            hashMap.put("layout/item_wallet_tab_0", Integer.valueOf(R$layout.item_wallet_tab));
            hashMap.put("layout/item_watch_ad_bonus_count_down_0", Integer.valueOf(R$layout.item_watch_ad_bonus_count_down));
            hashMap.put("layout/item_watch_ad_bonus_disable_watch_0", Integer.valueOf(R$layout.item_watch_ad_bonus_disable_watch));
            hashMap.put("layout/item_watch_ad_bonus_enable_watch_0", Integer.valueOf(R$layout.item_watch_ad_bonus_enable_watch));
            hashMap.put("layout/item_watch_ad_bonus_watched_0", Integer.valueOf(R$layout.item_watch_ad_bonus_watched));
            hashMap.put("layout/item_window_play_0", Integer.valueOf(R$layout.item_window_play));
            hashMap.put("layout/item_you_might_like_0", Integer.valueOf(R$layout.item_you_might_like));
            hashMap.put("layout/item_you_might_like_keyword_0", Integer.valueOf(R$layout.item_you_might_like_keyword));
            hashMap.put("layout/layout_mylist_history_horizontal_item_0", Integer.valueOf(R$layout.layout_mylist_history_horizontal_item));
            hashMap.put("layout/layout_toast_collect_result_0", Integer.valueOf(R$layout.layout_toast_collect_result));
            hashMap.put("layout/layout_toast_del_0", Integer.valueOf(R$layout.layout_toast_del));
            hashMap.put("layout/new_dialog_tip_0", Integer.valueOf(R$layout.new_dialog_tip));
            hashMap.put("layout/pull_up_load_end_0", Integer.valueOf(R$layout.pull_up_load_end));
            hashMap.put("layout/view_accumulated_daily_task_0", Integer.valueOf(R$layout.view_accumulated_daily_task));
            hashMap.put("layout/view_accumulated_task_0", Integer.valueOf(R$layout.view_accumulated_task));
            hashMap.put("layout/view_accumulated_task_progress_0", Integer.valueOf(R$layout.view_accumulated_task_progress));
            hashMap.put("layout/view_accumulated_task_progress_item_0", Integer.valueOf(R$layout.view_accumulated_task_progress_item));
            hashMap.put("layout/view_coin_db_sku_card_0", Integer.valueOf(R$layout.view_coin_db_sku_card));
            hashMap.put("layout/view_coin_sku_big_card_0", Integer.valueOf(R$layout.view_coin_sku_big_card));
            hashMap.put("layout/view_coin_sku_small_card_0", Integer.valueOf(R$layout.view_coin_sku_small_card));
            hashMap.put("layout/view_discover_module_title_more_count_down_0", Integer.valueOf(R$layout.view_discover_module_title_more_count_down));
            hashMap.put("layout/view_discover_taglist_tag_0", Integer.valueOf(R$layout.view_discover_taglist_tag));
            hashMap.put("layout/view_flodable_text_area_0", Integer.valueOf(R$layout.view_flodable_text_area));
            hashMap.put("layout/view_immersion_control_0", Integer.valueOf(R$layout.view_immersion_control));
            hashMap.put("layout/view_immersion_seekbar_0", Integer.valueOf(R$layout.view_immersion_seekbar));
            hashMap.put("layout/view_immersion_seekbar_experiment_0", Integer.valueOf(R$layout.view_immersion_seekbar_experiment));
            hashMap.put("layout/view_item_load_more_end_0", Integer.valueOf(R$layout.view_item_load_more_end));
            hashMap.put("layout/view_login_get_bonus_label_0", Integer.valueOf(R$layout.view_login_get_bonus_label));
            hashMap.put("layout/view_login_get_bonus_label2_0", Integer.valueOf(R$layout.view_login_get_bonus_label2));
            hashMap.put("layout/view_packet_float_0", Integer.valueOf(R$layout.view_packet_float));
            hashMap.put("layout/view_payment_method_bar_linear_0", Integer.valueOf(R$layout.view_payment_method_bar_linear));
            hashMap.put("layout/view_payment_method_btn_0", Integer.valueOf(R$layout.view_payment_method_btn));
            hashMap.put("layout/view_payment_method_btn1_0", Integer.valueOf(R$layout.view_payment_method_btn1));
            hashMap.put("layout/view_payment_method_btn2_0", Integer.valueOf(R$layout.view_payment_method_btn2));
            hashMap.put("layout/view_payment_method_btn3_0", Integer.valueOf(R$layout.view_payment_method_btn3));
            hashMap.put("layout/view_rewards_pendant_0", Integer.valueOf(R$layout.view_rewards_pendant));
            hashMap.put("layout/view_shorts_immersion_tag_clickable_0", Integer.valueOf(R$layout.view_shorts_immersion_tag_clickable));
            hashMap.put("layout/view_shorts_immersion_tag_normal_0", Integer.valueOf(R$layout.view_shorts_immersion_tag_normal));
            hashMap.put("layout/view_sub_db_sku_big_card_0", Integer.valueOf(R$layout.view_sub_db_sku_big_card));
            hashMap.put("layout/view_sub_db_sku_small_card_0", Integer.valueOf(R$layout.view_sub_db_sku_small_card));
            hashMap.put("layout/view_sub_sku_big_card_0", Integer.valueOf(R$layout.view_sub_sku_big_card));
            hashMap.put("layout/view_sub_sku_small_card_0", Integer.valueOf(R$layout.view_sub_sku_small_card));
            hashMap.put("layout/view_subtitle_0", Integer.valueOf(R$layout.view_subtitle));
            hashMap.put("layout/view_toast_ad_reward_error_0", Integer.valueOf(R$layout.view_toast_ad_reward_error));
            hashMap.put("layout/view_turbolink_float_0", Integer.valueOf(R$layout.view_turbolink_float));
            hashMap.put("layout/view_you_might_like_0", Integer.valueOf(R$layout.view_you_might_like));
            hashMap.put("layout/viewstub_coin_sku_normal_third_label_0", Integer.valueOf(R$layout.viewstub_coin_sku_normal_third_label));
            hashMap.put("layout/viewstub_my_list_edit_0", Integer.valueOf(R$layout.viewstub_my_list_edit));
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_DEMUX_TIME);
        f37158a = sparseIntArray;
        sparseIntArray.put(R$layout.activity_act, 1);
        sparseIntArray.put(R$layout.activity_bonus_will_expired_notification, 2);
        sparseIntArray.put(R$layout.activity_custom_notification, 3);
        sparseIntArray.put(R$layout.activity_daemon_notification, 4);
        sparseIntArray.put(R$layout.activity_default_check_in_notification, 5);
        sparseIntArray.put(R$layout.activity_default_new_shorts_notification, 6);
        sparseIntArray.put(R$layout.activity_download_choose, 7);
        sparseIntArray.put(R$layout.activity_download_manage, 8);
        sparseIntArray.put(R$layout.activity_downloaded_list, 9);
        sparseIntArray.put(R$layout.activity_fragment_container, 10);
        sparseIntArray.put(R$layout.activity_hot_shorts_notification, 11);
        sparseIntArray.put(R$layout.activity_immersion, 12);
        sparseIntArray.put(R$layout.activity_library, 13);
        sparseIntArray.put(R$layout.activity_list, 14);
        sparseIntArray.put(R$layout.activity_login, 15);
        sparseIntArray.put(R$layout.activity_login2, 16);
        sparseIntArray.put(R$layout.activity_main, 17);
        sparseIntArray.put(R$layout.activity_miss_check_in_notification, 18);
        sparseIntArray.put(R$layout.activity_my_list_detail, 19);
        sparseIntArray.put(R$layout.activity_ranking, 20);
        sparseIntArray.put(R$layout.activity_recommend_shorts_notification, 21);
        sparseIntArray.put(R$layout.activity_refresh_ad_notification, 22);
        sparseIntArray.put(R$layout.activity_region_select, 23);
        sparseIntArray.put(R$layout.activity_reveal_shorts_notification, 24);
        sparseIntArray.put(R$layout.activity_routing, 25);
        sparseIntArray.put(R$layout.activity_search, 26);
        sparseIntArray.put(R$layout.activity_start_recharging_notification, 27);
        sparseIntArray.put(R$layout.activity_subs_bonus_notification, 28);
        sparseIntArray.put(R$layout.activity_subs_detail, 29);
        sparseIntArray.put(R$layout.activity_subs_detail2, 30);
        sparseIntArray.put(R$layout.activity_test, 31);
        sparseIntArray.put(R$layout.activity_third_ad, 32);
        sparseIntArray.put(R$layout.activity_watch_shorts_notification, 33);
        sparseIntArray.put(R$layout.ad_to_coins_dialog, 34);
        sparseIntArray.put(R$layout.ad_to_subscribe_dialog, 35);
        sparseIntArray.put(R$layout.dialog_act, 36);
        sparseIntArray.put(R$layout.dialog_ad_free_drama, 37);
        sparseIntArray.put(R$layout.dialog_app_notification_permission, 38);
        sparseIntArray.put(R$layout.dialog_billing_unavailable_tip, 39);
        sparseIntArray.put(R$layout.dialog_check_in, 40);
        sparseIntArray.put(R$layout.dialog_check_in_failed, 41);
        sparseIntArray.put(R$layout.dialog_check_in_success, 42);
        sparseIntArray.put(R$layout.dialog_choose_notification_permission, 43);
        sparseIntArray.put(R$layout.dialog_delete_tip, 44);
        sparseIntArray.put(R$layout.dialog_disable_subs, 45);
        sparseIntArray.put(R$layout.dialog_discount_subscribe, 46);
        sparseIntArray.put(R$layout.dialog_enable_pip, 47);
        sparseIntArray.put(R$layout.dialog_fragment_accumulativea_watch, 48);
        sparseIntArray.put(R$layout.dialog_fragment_ad_continue, 49);
        sparseIntArray.put(R$layout.dialog_fragment_ad_continue_retention, 50);
        sparseIntArray.put(R$layout.dialog_fragment_ad_retention, 51);
        sparseIntArray.put(R$layout.dialog_fragment_clarity_choose, 52);
        sparseIntArray.put(R$layout.dialog_fragment_coming_soon_detail, 53);
        sparseIntArray.put(R$layout.dialog_fragment_immersion_accumulated_daily_task, 54);
        sparseIntArray.put(R$layout.dialog_fragment_immersion_accumulated_task, 55);
        sparseIntArray.put(R$layout.dialog_fragment_immersion_back_shorts, 56);
        sparseIntArray.put(R$layout.dialog_fragment_immersion_back_shorts_bottom, 57);
        sparseIntArray.put(R$layout.dialog_fragment_immersion_back_shorts_earn_coin, 58);
        sparseIntArray.put(R$layout.dialog_fragment_immersion_episode_list, 59);
        sparseIntArray.put(R$layout.dialog_fragment_immersion_introduction, 60);
        sparseIntArray.put(R$layout.dialog_fragment_immersion_redeem_code, 61);
        sparseIntArray.put(R$layout.dialog_fragment_library_label, 62);
        sparseIntArray.put(R$layout.dialog_fragment_new_user_recommend, 63);
        sparseIntArray.put(R$layout.dialog_fragment_profile_login_guide, 64);
        sparseIntArray.put(R$layout.dialog_fragment_profile_login_guide2, 65);
        sparseIntArray.put(R$layout.dialog_fragment_pure_paying_user_ad_retention, 66);
        sparseIntArray.put(R$layout.dialog_fragment_pure_paying_user_ad_retention_db, 67);
        sparseIntArray.put(R$layout.dialog_fragment_sku_expansion, 68);
        sparseIntArray.put(R$layout.dialog_fragment_subs_expansion, 69);
        sparseIntArray.put(R$layout.dialog_fragment_subs_expansion_new, 70);
        sparseIntArray.put(R$layout.dialog_fragment_subs_pro_expired, 71);
        sparseIntArray.put(R$layout.dialog_fragment_tag_drawer_list, 72);
        sparseIntArray.put(R$layout.dialog_fragment_unlock_template_21, 73);
        sparseIntArray.put(R$layout.dialog_fragment_unlock_template_22, 74);
        sparseIntArray.put(R$layout.dialog_home_login_guide, 75);
        sparseIntArray.put(R$layout.dialog_interstitial_loading, 76);
        sparseIntArray.put(R$layout.dialog_loading, 77);
        sparseIntArray.put(R$layout.dialog_logout_tip, 78);
        sparseIntArray.put(R$layout.dialog_merge_tourist, 79);
        sparseIntArray.put(R$layout.dialog_merge_tourist_failed, 80);
        sparseIntArray.put(R$layout.dialog_merge_tourist_process, 81);
        sparseIntArray.put(R$layout.dialog_merge_tourist_succeed, 82);
        sparseIntArray.put(R$layout.dialog_normal_login_guide, 83);
        sparseIntArray.put(R$layout.dialog_open_short_by_id, 84);
        sparseIntArray.put(R$layout.dialog_payment_item_google, 85);
        sparseIntArray.put(R$layout.dialog_payment_item_pp, 86);
        sparseIntArray.put(R$layout.dialog_payment_item_sp, 87);
        sparseIntArray.put(R$layout.dialog_purchase_failed_tip, 88);
        sparseIntArray.put(R$layout.dialog_retain_fragment_discount, 89);
        sparseIntArray.put(R$layout.dialog_retry_unlock, 90);
        sparseIntArray.put(R$layout.dialog_reward_loading, 91);
        sparseIntArray.put(R$layout.dialog_rfm_guide, 92);
        sparseIntArray.put(R$layout.dialog_subs_update, 93);
        sparseIntArray.put(R$layout.dialog_switch_account_tip, 94);
        sparseIntArray.put(R$layout.dialog_tip, 95);
        sparseIntArray.put(R$layout.dialog_topup, 96);
        sparseIntArray.put(R$layout.dialog_ttp_pment_process, 97);
        sparseIntArray.put(R$layout.dialog_update, 98);
        sparseIntArray.put(R$layout.fragment_bind_info, 99);
        sparseIntArray.put(R$layout.fragment_black_friday_coin_sku, 100);
        sparseIntArray.put(R$layout.fragment_bonus_record, 101);
        sparseIntArray.put(R$layout.fragment_coins_record, 102);
        sparseIntArray.put(R$layout.fragment_collection_list, 103);
        sparseIntArray.put(R$layout.fragment_delete_account, 104);
        sparseIntArray.put(R$layout.fragment_discover, 105);
        sparseIntArray.put(R$layout.fragment_discover_library, 106);
        sparseIntArray.put(R$layout.fragment_discover_more, 107);
        sparseIntArray.put(R$layout.fragment_discover_more_category_filter, 108);
        sparseIntArray.put(R$layout.fragment_discover_more_category_filter_list, 109);
        sparseIntArray.put(R$layout.fragment_discover_ranking, 110);
        sparseIntArray.put(R$layout.fragment_discover_ranking_tab, 111);
        sparseIntArray.put(R$layout.fragment_discover_tab, 112);
        sparseIntArray.put(R$layout.fragment_discover_webview, 113);
        sparseIntArray.put(R$layout.fragment_email_auth, 114);
        sparseIntArray.put(R$layout.fragment_episode_list, 115);
        sparseIntArray.put(R$layout.fragment_list, 116);
        sparseIntArray.put(R$layout.fragment_my_collection, 117);
        sparseIntArray.put(R$layout.fragment_my_list, 118);
        sparseIntArray.put(R$layout.fragment_my_list_detail, 119);
        sparseIntArray.put(R$layout.fragment_my_wallet, 120);
        sparseIntArray.put(R$layout.fragment_mylist_mix, 121);
        sparseIntArray.put(R$layout.fragment_phone_auth, 122);
        sparseIntArray.put(R$layout.fragment_profile, 123);
        sparseIntArray.put(R$layout.fragment_ranking, 124);
        sparseIntArray.put(R$layout.fragment_recently_watched, 125);
        sparseIntArray.put(R$layout.fragment_recycler_view, 126);
        sparseIntArray.put(R$layout.fragment_refresh, 127);
        sparseIntArray.put(R$layout.fragment_rewards, 128);
        sparseIntArray.put(R$layout.fragment_settings, 129);
        sparseIntArray.put(R$layout.fragment_shorts, 130);
        sparseIntArray.put(R$layout.fragment_switch_info, 131);
        sparseIntArray.put(R$layout.fragment_tag_filter, 132);
        sparseIntArray.put(R$layout.fragment_tag_filter_list, 133);
        sparseIntArray.put(R$layout.fragment_top_up, 134);
        sparseIntArray.put(R$layout.fragment_watched_recently, 135);
        sparseIntArray.put(R$layout.item_act_guide_point, 136);
        sparseIntArray.put(R$layout.item_app_language, 137);
        sparseIntArray.put(R$layout.item_batch_unlock_ad, 138);
        sparseIntArray.put(R$layout.item_bind_info, 139);
        sparseIntArray.put(R$layout.item_black_friday_coin_sku_expired, 140);
        sparseIntArray.put(R$layout.item_black_friday_coin_sku_title, 141);
        sparseIntArray.put(R$layout.item_black_friday_coin_sku_unused, 142);
        sparseIntArray.put(R$layout.item_black_friday_coin_sku_used, 143);
        sparseIntArray.put(R$layout.item_bonus_record, 144);
        sparseIntArray.put(R$layout.item_check_in_future_not_check_in, 145);
        sparseIntArray.put(R$layout.item_check_in_now_check_in, 146);
        sparseIntArray.put(R$layout.item_check_in_now_not_check_in, 147);
        sparseIntArray.put(R$layout.item_check_in_passed_check_in, 148);
        sparseIntArray.put(R$layout.item_check_in_passed_not_check_in, 149);
        sparseIntArray.put(R$layout.item_clarity_choose, 150);
        sparseIntArray.put(R$layout.item_coin_sku_recommend_main, 151);
        sparseIntArray.put(R$layout.item_coin_sku_recommend_normal, 152);
        sparseIntArray.put(R$layout.item_coin_sku_topup_black_friday, 153);
        sparseIntArray.put(R$layout.item_coin_sku_topup_black_friday_7, 154);
        sparseIntArray.put(R$layout.item_coin_sku_topup_expansion, 155);
        sparseIntArray.put(R$layout.item_coin_sku_topup_expansion_7, 156);
        sparseIntArray.put(R$layout.item_coin_sku_topup_main, 157);
        sparseIntArray.put(R$layout.item_coin_sku_topup_main_7, 158);
        sparseIntArray.put(R$layout.item_coin_sku_topup_normal, 159);
        sparseIntArray.put(R$layout.item_coin_sku_topup_normal_7, 160);
        sparseIntArray.put(R$layout.item_coins_record, 161);
        sparseIntArray.put(R$layout.item_collection_horizontal, 162);
        sparseIntArray.put(R$layout.item_cover_play, 163);
        sparseIntArray.put(R$layout.item_dialog_fragment_episode_redeem_code_equity, 164);
        sparseIntArray.put(R$layout.item_discount_coin_sku_purchased, 165);
        sparseIntArray.put(R$layout.item_discount_coin_sku_refund, 166);
        sparseIntArray.put(R$layout.item_discover_banner_brand_ad, 167);
        sparseIntArray.put(R$layout.item_discover_banner_brand_ad_2, IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION);
        sparseIntArray.put(R$layout.item_discover_banner_h5, 169);
        sparseIntArray.put(R$layout.item_discover_banner_h5_2, 170);
        sparseIntArray.put(R$layout.item_discover_banner_shorts, 171);
        sparseIntArray.put(R$layout.item_discover_banner_shorts_2, 172);
        sparseIntArray.put(R$layout.item_discover_banner_shorts_3, 173);
        sparseIntArray.put(R$layout.item_discover_category_banner_item, 174);
        sparseIntArray.put(R$layout.item_discover_category_page_item, 175);
        sparseIntArray.put(R$layout.item_discover_circle_picture, 176);
        sparseIntArray.put(R$layout.item_discover_column_x_waterfall, 177);
        sparseIntArray.put(R$layout.item_discover_coming_soon, 178);
        sparseIntArray.put(R$layout.item_discover_discount_rectangle_picture, 179);
        sparseIntArray.put(R$layout.item_discover_horizontal_image_icon, 180);
        sparseIntArray.put(R$layout.item_discover_horizontal_image_video_preview, 181);
        sparseIntArray.put(R$layout.item_discover_main_1_row_2_column_container, 182);
        sparseIntArray.put(R$layout.item_discover_main_1_row_2_column_container_item, 183);
        sparseIntArray.put(R$layout.item_discover_module_act_banner, 184);
        sparseIntArray.put(R$layout.item_discover_module_banner, 185);
        sparseIntArray.put(R$layout.item_discover_module_banner_2, 186);
        sparseIntArray.put(R$layout.item_discover_module_banner_3, 187);
        sparseIntArray.put(R$layout.item_discover_module_carousel, MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION);
        sparseIntArray.put(R$layout.item_discover_module_category_banner, 189);
        sparseIntArray.put(R$layout.item_discover_module_category_page, 190);
        sparseIntArray.put(R$layout.item_discover_module_category_tab, MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED);
        sparseIntArray.put(R$layout.item_discover_module_empty_space, 192);
        sparseIntArray.put(R$layout.item_discover_module_main_1_row_2_column_x_main_part, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_COUNT);
        sparseIntArray.put(R$layout.item_discover_module_main_1_row_2_column_x_row_part, MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY);
        sparseIntArray.put(R$layout.item_discover_module_ranking_page, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO);
        sparseIntArray.put(R$layout.item_discover_module_ranking_tab, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE);
        sparseIntArray.put(R$layout.item_discover_module_single_row, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY);
        sparseIntArray.put(R$layout.item_discover_module_time_count_title_more, 198);
        sparseIntArray.put(R$layout.item_discover_module_title_more, 199);
        sparseIntArray.put(R$layout.item_discover_module_title_more_with_icon, 200);
        sparseIntArray.put(R$layout.item_discover_more_category_filter, 201);
        sparseIntArray.put(R$layout.item_discover_more_coming_soon, 202);
        sparseIntArray.put(R$layout.item_discover_more_other, 203);
        sparseIntArray.put(R$layout.item_discover_picture_text, 204);
        sparseIntArray.put(R$layout.item_discover_ranking, 205);
        sparseIntArray.put(R$layout.item_discover_ranking_mul_tag, 206);
        sparseIntArray.put(R$layout.item_discover_ranking_mul_tag_item, 207);
        sparseIntArray.put(R$layout.item_discover_ranking_new, 208);
        sparseIntArray.put(R$layout.item_discover_ranking_page_item, 209);
        sparseIntArray.put(R$layout.item_discover_ranking_tab, 210);
        sparseIntArray.put(R$layout.item_discover_rectangle_picture, 211);
        sparseIntArray.put(R$layout.item_discover_staggered_item, 212);
        sparseIntArray.put(R$layout.item_discover_staggered_rank_item, 213);
        sparseIntArray.put(R$layout.item_discover_staggered_rank_short_item, 214);
        sparseIntArray.put(R$layout.item_discover_staggered_related_short_item, 215);
        sparseIntArray.put(R$layout.item_discover_staggered_related_short_list_item, 216);
        sparseIntArray.put(R$layout.item_discover_staggered_tag_item, 217);
        sparseIntArray.put(R$layout.item_discover_staggered_tag_list_item, 218);
        sparseIntArray.put(R$layout.item_discover_tab, 219);
        sparseIntArray.put(R$layout.item_download_drama, 220);
        sparseIntArray.put(R$layout.item_download_drama_detail_head, 221);
        sparseIntArray.put(R$layout.item_download_drama_head, 222);
        sparseIntArray.put(R$layout.item_downloaded_drama, 223);
        sparseIntArray.put(R$layout.item_downloaded_drama_ep, 224);
        sparseIntArray.put(R$layout.item_downloading_drama, 225);
        sparseIntArray.put(R$layout.item_episode_locked, 226);
        sparseIntArray.put(R$layout.item_episode_normal, VideoRef.VALUE_VIDEO_REF_POPULARITY_LEVEL);
        sparseIntArray.put(R$layout.item_episode_playing, VideoRef.VALUE_VIDEO_REF_CODEC_HAS_h266);
        sparseIntArray.put(R$layout.item_episode_tab, VideoRef.VALUE_VIDEO_REF_HAS_EMBEDED_SUBTITLE);
        sparseIntArray.put(R$layout.item_episode_virtual, 230);
        sparseIntArray.put(R$layout.item_grid_library, 231);
        sparseIntArray.put(R$layout.item_grid_tag_drawer, VideoRef.VALUE_VIDEO_REF_CATEGORY);
        sparseIntArray.put(R$layout.item_home_check_in_day_big, VideoRef.VALUE_VIDEO_REF_FIRST_SUB_VID);
        sparseIntArray.put(R$layout.item_home_check_in_day_normal, VideoRef.VALUE_VIDEO_REF_ORIGINAL_AUDIO_INFO_LIST);
        sparseIntArray.put(R$layout.item_immersion_back_shorts, VideoRef.VALUE_VIDEO_REF_AI_BARRAGE_URL);
        sparseIntArray.put(R$layout.item_immersion_normal, VideoRef.VALUE_VIDEO_REF_CONST_DEPTH);
        sparseIntArray.put(R$layout.item_immersion_subtitle, VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS);
        sparseIntArray.put(R$layout.item_library, 238);
        sparseIntArray.put(R$layout.item_library_classify, VideoRef.VALUE_VIDEO_REF_SUBTITLE_POSITION_X);
        sparseIntArray.put(R$layout.item_low_sku_template_notification, 240);
        sparseIntArray.put(R$layout.item_low_sku_template_notification_3, 241);
        sparseIntArray.put(R$layout.item_my_collection, 242);
        sparseIntArray.put(R$layout.item_my_list_tab, 243);
        sparseIntArray.put(R$layout.item_new_user_recommend, 244);
        sparseIntArray.put(R$layout.item_next_episode_tip, 245);
        sparseIntArray.put(R$layout.item_novice_task, 246);
        sparseIntArray.put(R$layout.item_official_social_media, 247);
        sparseIntArray.put(R$layout.item_payment_method, 248);
        sparseIntArray.put(R$layout.item_payment_method_linear, 249);
        sparseIntArray.put(R$layout.item_play_episode, 250);
        sparseIntArray.put(R$layout.item_play_resolution_experiment_text, 251);
        sparseIntArray.put(R$layout.item_play_resolution_experiment_text_icon, 252);
        sparseIntArray.put(R$layout.item_play_resolution_text_center, 253);
        sparseIntArray.put(R$layout.item_play_resolution_text_icon, 254);
        sparseIntArray.put(R$layout.item_play_resolution_text_left, 255);
        sparseIntArray.put(R$layout.item_play_speed, 256);
        sparseIntArray.put(R$layout.item_profile_menu_normal, 257);
        sparseIntArray.put(R$layout.item_profile_menu_rewards, 258);
        sparseIntArray.put(R$layout.item_ranking, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME);
        sparseIntArray.put(R$layout.item_recently_watched, 260);
        sparseIntArray.put(R$layout.item_recently_watched_horizontal, MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE);
        sparseIntArray.put(R$layout.item_recommend_shorts_new, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC);
        sparseIntArray.put(R$layout.item_recommend_shorts_new_top, MediaPlayer.MEDIA_PLAYER_OPTION_DELAY_BUFFERING_UPDATE);
        sparseIntArray.put(R$layout.item_reward_fragment_module_check_in_and_your_bonus, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME);
        sparseIntArray.put(R$layout.item_reward_fragment_module_daily_watch, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME);
        sparseIntArray.put(R$layout.item_reward_fragment_module_des, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME);
        sparseIntArray.put(R$layout.item_reward_fragment_module_get_more_title, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME);
        sparseIntArray.put(R$layout.item_reward_fragment_module_newbie_watch, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TRAN_CONNECT_TIME);
        sparseIntArray.put(R$layout.item_reward_fragment_module_task, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME);
        sparseIntArray.put(R$layout.item_reward_fragment_module_watch_ad, 270);
        sparseIntArray.put(R$layout.item_search_act_banner, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME);
        sparseIntArray.put(R$layout.item_search_bottom_padding, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME);
        sparseIntArray.put(R$layout.item_search_exactly, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_REQ_FINSIH_TIME);
        sparseIntArray.put(R$layout.item_search_fuzzy, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME);
        sparseIntArray.put(R$layout.item_search_history, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME);
        sparseIntArray.put(R$layout.item_search_history_keyword, MediaPlayer.MEDIA_PLAYER_OPTION_POST_PREPARE);
        sparseIntArray.put(R$layout.item_search_label, MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE);
        sparseIntArray.put(R$layout.item_search_module_empty_space, MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC);
        sparseIntArray.put(R$layout.item_search_module_title, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS);
        sparseIntArray.put(R$layout.item_search_no_more_result, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN);
        sparseIntArray.put(R$layout.item_search_no_network, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FFMPEG_LOG_LEVEL);
        sparseIntArray.put(R$layout.item_search_no_result, MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS);
        sparseIntArray.put(R$layout.item_search_popular, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CUR_UI_FPS);
        sparseIntArray.put(R$layout.item_search_ranking, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER);
        sparseIntArray.put(R$layout.item_search_ranking_short_item, MediaPlayer.MEDIA_PLAYER_OPTION_FRC_LEVEL);
        sparseIntArray.put(R$layout.item_select_region, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS);
        sparseIntArray.put(R$layout.item_select_region_section, 287);
        sparseIntArray.put(R$layout.item_settings_auto_unlock_episode, MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE);
        sparseIntArray.put(R$layout.item_settings_divider_line, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE);
        sparseIntArray.put(R$layout.item_settings_fsi_permission, MediaPlayer.MEDIA_PLAYER_OPTION_HTTP_AUTO_RANGE_OFFSET);
        sparseIntArray.put(R$layout.item_settings_normal_item, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPEN_TIMEOUT);
        sparseIntArray.put(R$layout.item_settings_title, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP);
        sparseIntArray.put(R$layout.item_shorts_brand_pic_ad, MediaPlayer.MEDIA_PLAYER_OPTION_KEEP_FORMAT_THREAD_ALIVE);
        sparseIntArray.put(R$layout.item_shorts_brand_video_ad, MediaPlayer.MEDIA_PLAYER_OPTION_DANGER_BUFFER_THRESHOLD);
        sparseIntArray.put(R$layout.item_shorts_normal, MediaPlayer.MEDIA_PLAYER_OPTION_SECURE_BUFFER_THRESHOLD);
        sparseIntArray.put(R$layout.item_shorts_programmatic_ad, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL);
        sparseIntArray.put(R$layout.item_shorts_subtitle, MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT);
        sparseIntArray.put(R$layout.item_shorts_trailer, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX);
        sparseIntArray.put(R$layout.item_single_unlock_ad_large, 299);
        sparseIntArray.put(R$layout.item_single_unlock_ad_small, 300);
        sparseIntArray.put(R$layout.item_subs_privilege, 301);
        sparseIntArray.put(R$layout.item_subs_privilege_2, 302);
        sparseIntArray.put(R$layout.item_subs_sku_recommend_normal, 303);
        sparseIntArray.put(R$layout.item_subs_sku_recommend_pro, 304);
        sparseIntArray.put(R$layout.item_subs_type_normal_7, 305);
        sparseIntArray.put(R$layout.item_subs_type_pro_7, 306);
        sparseIntArray.put(R$layout.item_subs_type_pro_main, 307);
        sparseIntArray.put(R$layout.item_subs_type_pro_normal, 308);
        sparseIntArray.put(R$layout.item_subsdetail2_tab, 309);
        sparseIntArray.put(R$layout.item_switch_info, 310);
        sparseIntArray.put(R$layout.item_tag_filter_tab, 311);
        sparseIntArray.put(R$layout.item_tag_list_shorts, 312);
        sparseIntArray.put(R$layout.item_task_center_act_banner, 313);
        sparseIntArray.put(R$layout.item_template_unlock_ad, 314);
        sparseIntArray.put(R$layout.item_test_text_item, 315);
        sparseIntArray.put(R$layout.item_third_party_payment, 316);
        sparseIntArray.put(R$layout.item_vip_choose, 317);
        sparseIntArray.put(R$layout.item_wallet_tab, 318);
        sparseIntArray.put(R$layout.item_watch_ad_bonus_count_down, 319);
        sparseIntArray.put(R$layout.item_watch_ad_bonus_disable_watch, 320);
        sparseIntArray.put(R$layout.item_watch_ad_bonus_enable_watch, 321);
        sparseIntArray.put(R$layout.item_watch_ad_bonus_watched, 322);
        sparseIntArray.put(R$layout.item_window_play, 323);
        sparseIntArray.put(R$layout.item_you_might_like, 324);
        sparseIntArray.put(R$layout.item_you_might_like_keyword, 325);
        sparseIntArray.put(R$layout.layout_mylist_history_horizontal_item, 326);
        sparseIntArray.put(R$layout.layout_toast_collect_result, 327);
        sparseIntArray.put(R$layout.layout_toast_del, 328);
        sparseIntArray.put(R$layout.new_dialog_tip, 329);
        sparseIntArray.put(R$layout.pull_up_load_end, 330);
        sparseIntArray.put(R$layout.view_accumulated_daily_task, 331);
        sparseIntArray.put(R$layout.view_accumulated_task, 332);
        sparseIntArray.put(R$layout.view_accumulated_task_progress, 333);
        sparseIntArray.put(R$layout.view_accumulated_task_progress_item, 334);
        sparseIntArray.put(R$layout.view_coin_db_sku_card, 335);
        sparseIntArray.put(R$layout.view_coin_sku_big_card, 336);
        sparseIntArray.put(R$layout.view_coin_sku_small_card, 337);
        sparseIntArray.put(R$layout.view_discover_module_title_more_count_down, 338);
        sparseIntArray.put(R$layout.view_discover_taglist_tag, 339);
        sparseIntArray.put(R$layout.view_flodable_text_area, 340);
        sparseIntArray.put(R$layout.view_immersion_control, 341);
        sparseIntArray.put(R$layout.view_immersion_seekbar, 342);
        sparseIntArray.put(R$layout.view_immersion_seekbar_experiment, 343);
        sparseIntArray.put(R$layout.view_item_load_more_end, 344);
        sparseIntArray.put(R$layout.view_login_get_bonus_label, 345);
        sparseIntArray.put(R$layout.view_login_get_bonus_label2, 346);
        sparseIntArray.put(R$layout.view_packet_float, 347);
        sparseIntArray.put(R$layout.view_payment_method_bar_linear, 348);
        sparseIntArray.put(R$layout.view_payment_method_btn, 349);
        sparseIntArray.put(R$layout.view_payment_method_btn1, TTVideoEngineInterface.PLAYER_OPTION_AE_LU_RANG);
        sparseIntArray.put(R$layout.view_payment_method_btn2, 351);
        sparseIntArray.put(R$layout.view_payment_method_btn3, 352);
        sparseIntArray.put(R$layout.view_rewards_pendant, 353);
        sparseIntArray.put(R$layout.view_shorts_immersion_tag_clickable, 354);
        sparseIntArray.put(R$layout.view_shorts_immersion_tag_normal, 355);
        sparseIntArray.put(R$layout.view_sub_db_sku_big_card, 356);
        sparseIntArray.put(R$layout.view_sub_db_sku_small_card, 357);
        sparseIntArray.put(R$layout.view_sub_sku_big_card, 358);
        sparseIntArray.put(R$layout.view_sub_sku_small_card, 359);
        sparseIntArray.put(R$layout.view_subtitle, 360);
        sparseIntArray.put(R$layout.view_toast_ad_reward_error, 361);
        sparseIntArray.put(R$layout.view_turbolink_float, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_STALL_THRESHOLD);
        sparseIntArray.put(R$layout.view_you_might_like, MediaPlayer.MEDIA_PLAYER_OPTION_DECODER_STALL_THRESHOLD);
        sparseIntArray.put(R$layout.viewstub_coin_sku_normal_third_label, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_DEMUX_TIME);
        sparseIntArray.put(R$layout.viewstub_my_list_edit, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_DEMUX_TIME);
    }

    private final ViewDataBinding a(DataBindingComponent dataBindingComponent, View view, int i10, Object obj) {
        switch (i10) {
            case 1:
                if ("layout/activity_act_0".equals(obj)) {
                    return new ActivityActBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_act is invalid. Received: " + obj);
            case 2:
                if ("layout/activity_bonus_will_expired_notification_0".equals(obj)) {
                    return new ActivityBonusWillExpiredNotificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_bonus_will_expired_notification is invalid. Received: " + obj);
            case 3:
                if ("layout/activity_custom_notification_0".equals(obj)) {
                    return new ActivityCustomNotificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_custom_notification is invalid. Received: " + obj);
            case 4:
                if ("layout/activity_daemon_notification_0".equals(obj)) {
                    return new ActivityDaemonNotificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_daemon_notification is invalid. Received: " + obj);
            case 5:
                if ("layout/activity_default_check_in_notification_0".equals(obj)) {
                    return new ActivityDefaultCheckInNotificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_default_check_in_notification is invalid. Received: " + obj);
            case 6:
                if ("layout/activity_default_new_shorts_notification_0".equals(obj)) {
                    return new ActivityDefaultNewShortsNotificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_default_new_shorts_notification is invalid. Received: " + obj);
            case 7:
                if ("layout/activity_download_choose_0".equals(obj)) {
                    return new ActivityDownloadChooseBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_download_choose is invalid. Received: " + obj);
            case 8:
                if ("layout/activity_download_manage_0".equals(obj)) {
                    return new ActivityDownloadManageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_download_manage is invalid. Received: " + obj);
            case 9:
                if ("layout/activity_downloaded_list_0".equals(obj)) {
                    return new ActivityDownloadedListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_downloaded_list is invalid. Received: " + obj);
            case 10:
                if ("layout/activity_fragment_container_0".equals(obj)) {
                    return new ActivityFragmentContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_fragment_container is invalid. Received: " + obj);
            case 11:
                if ("layout/activity_hot_shorts_notification_0".equals(obj)) {
                    return new ActivityHotShortsNotificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_hot_shorts_notification is invalid. Received: " + obj);
            case 12:
                if ("layout/activity_immersion_0".equals(obj)) {
                    return new ActivityImmersionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_immersion is invalid. Received: " + obj);
            case 13:
                if ("layout/activity_library_0".equals(obj)) {
                    return new ActivityLibraryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_library is invalid. Received: " + obj);
            case 14:
                if ("layout/activity_list_0".equals(obj)) {
                    return new ActivityListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_list is invalid. Received: " + obj);
            case 15:
                if ("layout/activity_login_0".equals(obj)) {
                    return new ActivityLoginBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_login is invalid. Received: " + obj);
            case 16:
                if ("layout/activity_login2_0".equals(obj)) {
                    return new ActivityLogin2BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_login2 is invalid. Received: " + obj);
            case 17:
                if ("layout/activity_main_0".equals(obj)) {
                    return new ActivityMainBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_main is invalid. Received: " + obj);
            case 18:
                if ("layout/activity_miss_check_in_notification_0".equals(obj)) {
                    return new ActivityMissCheckInNotificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_miss_check_in_notification is invalid. Received: " + obj);
            case 19:
                if ("layout/activity_my_list_detail_0".equals(obj)) {
                    return new ActivityMyListDetailBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_my_list_detail is invalid. Received: " + obj);
            case 20:
                if ("layout/activity_ranking_0".equals(obj)) {
                    return new ActivityRankingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_ranking is invalid. Received: " + obj);
            case 21:
                if ("layout/activity_recommend_shorts_notification_0".equals(obj)) {
                    return new ActivityRecommendShortsNotificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_recommend_shorts_notification is invalid. Received: " + obj);
            case 22:
                if ("layout/activity_refresh_ad_notification_0".equals(obj)) {
                    return new ActivityRefreshAdNotificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_refresh_ad_notification is invalid. Received: " + obj);
            case 23:
                if ("layout/activity_region_select_0".equals(obj)) {
                    return new ActivityRegionSelectBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_region_select is invalid. Received: " + obj);
            case 24:
                if ("layout/activity_reveal_shorts_notification_0".equals(obj)) {
                    return new ActivityRevealShortsNotificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_reveal_shorts_notification is invalid. Received: " + obj);
            case 25:
                if ("layout/activity_routing_0".equals(obj)) {
                    return new ActivityRoutingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_routing is invalid. Received: " + obj);
            case 26:
                if ("layout/activity_search_0".equals(obj)) {
                    return new ActivitySearchBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_search is invalid. Received: " + obj);
            case 27:
                if ("layout/activity_start_recharging_notification_0".equals(obj)) {
                    return new ActivityStartRechargingNotificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_start_recharging_notification is invalid. Received: " + obj);
            case 28:
                if ("layout/activity_subs_bonus_notification_0".equals(obj)) {
                    return new ActivitySubsBonusNotificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_subs_bonus_notification is invalid. Received: " + obj);
            case 29:
                if ("layout/activity_subs_detail_0".equals(obj)) {
                    return new ActivitySubsDetailBindingImpl(dataBindingComponent, view);
                }
                if ("layout-ru/activity_subs_detail_0".equals(obj)) {
                    return new ActivitySubsDetailBindingRuImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_subs_detail is invalid. Received: " + obj);
            case 30:
                if ("layout/activity_subs_detail2_0".equals(obj)) {
                    return new ActivitySubsDetail2BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_subs_detail2 is invalid. Received: " + obj);
            case 31:
                if ("layout/activity_test_0".equals(obj)) {
                    return new ActivityTestBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_test is invalid. Received: " + obj);
            case 32:
                if ("layout/activity_third_ad_0".equals(obj)) {
                    return new ActivityThirdAdBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_third_ad is invalid. Received: " + obj);
            case 33:
                if ("layout/activity_watch_shorts_notification_0".equals(obj)) {
                    return new ActivityWatchShortsNotificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_watch_shorts_notification is invalid. Received: " + obj);
            case 34:
                if ("layout/ad_to_coins_dialog_0".equals(obj)) {
                    return new AdToCoinsDialogBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for ad_to_coins_dialog is invalid. Received: " + obj);
            case 35:
                if ("layout/ad_to_subscribe_dialog_0".equals(obj)) {
                    return new AdToSubscribeDialogBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for ad_to_subscribe_dialog is invalid. Received: " + obj);
            case 36:
                if ("layout/dialog_act_0".equals(obj)) {
                    return new DialogActBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_act is invalid. Received: " + obj);
            case 37:
                if ("layout/dialog_ad_free_drama_0".equals(obj)) {
                    return new DialogAdFreeDramaBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_ad_free_drama is invalid. Received: " + obj);
            case 38:
                if ("layout/dialog_app_notification_permission_0".equals(obj)) {
                    return new DialogAppNotificationPermissionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_app_notification_permission is invalid. Received: " + obj);
            case 39:
                if ("layout/dialog_billing_unavailable_tip_0".equals(obj)) {
                    return new DialogBillingUnavailableTipBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_billing_unavailable_tip is invalid. Received: " + obj);
            case 40:
                if ("layout/dialog_check_in_0".equals(obj)) {
                    return new DialogCheckInBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_check_in is invalid. Received: " + obj);
            case 41:
                if ("layout/dialog_check_in_failed_0".equals(obj)) {
                    return new DialogCheckInFailedBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_check_in_failed is invalid. Received: " + obj);
            case 42:
                if ("layout/dialog_check_in_success_0".equals(obj)) {
                    return new DialogCheckInSuccessBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_check_in_success is invalid. Received: " + obj);
            case 43:
                if ("layout/dialog_choose_notification_permission_0".equals(obj)) {
                    return new DialogChooseNotificationPermissionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_choose_notification_permission is invalid. Received: " + obj);
            case 44:
                if ("layout/dialog_delete_tip_0".equals(obj)) {
                    return new DialogDeleteTipBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_delete_tip is invalid. Received: " + obj);
            case 45:
                if ("layout/dialog_disable_subs_0".equals(obj)) {
                    return new DialogDisableSubsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_disable_subs is invalid. Received: " + obj);
            case 46:
                if ("layout/dialog_discount_subscribe_0".equals(obj)) {
                    return new DialogDiscountSubscribeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_discount_subscribe is invalid. Received: " + obj);
            case 47:
                if ("layout/dialog_enable_pip_0".equals(obj)) {
                    return new DialogEnablePipBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_enable_pip is invalid. Received: " + obj);
            case 48:
                if ("layout/dialog_fragment_accumulativea_watch_0".equals(obj)) {
                    return new DialogFragmentAccumulativeaWatchBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_accumulativea_watch is invalid. Received: " + obj);
            case 49:
                if ("layout/dialog_fragment_ad_continue_0".equals(obj)) {
                    return new DialogFragmentAdContinueBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_ad_continue is invalid. Received: " + obj);
            case 50:
                if ("layout/dialog_fragment_ad_continue_retention_0".equals(obj)) {
                    return new DialogFragmentAdContinueRetentionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_ad_continue_retention is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    private final ViewDataBinding b(DataBindingComponent dataBindingComponent, View view, int i10, Object obj) {
        switch (i10) {
            case 51:
                if ("layout/dialog_fragment_ad_retention_0".equals(obj)) {
                    return new DialogFragmentAdRetentionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_ad_retention is invalid. Received: " + obj);
            case 52:
                if ("layout/dialog_fragment_clarity_choose_0".equals(obj)) {
                    return new DialogFragmentClarityChooseBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_clarity_choose is invalid. Received: " + obj);
            case 53:
                if ("layout/dialog_fragment_coming_soon_detail_0".equals(obj)) {
                    return new DialogFragmentComingSoonDetailBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_coming_soon_detail is invalid. Received: " + obj);
            case 54:
                if ("layout/dialog_fragment_immersion_accumulated_daily_task_0".equals(obj)) {
                    return new DialogFragmentImmersionAccumulatedDailyTaskBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_immersion_accumulated_daily_task is invalid. Received: " + obj);
            case 55:
                if ("layout/dialog_fragment_immersion_accumulated_task_0".equals(obj)) {
                    return new DialogFragmentImmersionAccumulatedTaskBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_immersion_accumulated_task is invalid. Received: " + obj);
            case 56:
                if ("layout/dialog_fragment_immersion_back_shorts_0".equals(obj)) {
                    return new DialogFragmentImmersionBackShortsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_immersion_back_shorts is invalid. Received: " + obj);
            case 57:
                if ("layout/dialog_fragment_immersion_back_shorts_bottom_0".equals(obj)) {
                    return new DialogFragmentImmersionBackShortsBottomBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_immersion_back_shorts_bottom is invalid. Received: " + obj);
            case 58:
                if ("layout/dialog_fragment_immersion_back_shorts_earn_coin_0".equals(obj)) {
                    return new DialogFragmentImmersionBackShortsEarnCoinBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_immersion_back_shorts_earn_coin is invalid. Received: " + obj);
            case 59:
                if ("layout/dialog_fragment_immersion_episode_list_0".equals(obj)) {
                    return new DialogFragmentImmersionEpisodeListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_immersion_episode_list is invalid. Received: " + obj);
            case 60:
                if ("layout/dialog_fragment_immersion_introduction_0".equals(obj)) {
                    return new DialogFragmentImmersionIntroductionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_immersion_introduction is invalid. Received: " + obj);
            case 61:
                if ("layout-zh-rCN/dialog_fragment_immersion_redeem_code_0".equals(obj)) {
                    return new DialogFragmentImmersionRedeemCodeBindingZhRCNImpl(dataBindingComponent, view);
                }
                if ("layout-ldrtl/dialog_fragment_immersion_redeem_code_0".equals(obj)) {
                    return new DialogFragmentImmersionRedeemCodeBindingLdrtlImpl(dataBindingComponent, view);
                }
                if ("layout-zh-rTW/dialog_fragment_immersion_redeem_code_0".equals(obj)) {
                    return new DialogFragmentImmersionRedeemCodeBindingZhRTWImpl(dataBindingComponent, view);
                }
                if ("layout-ja/dialog_fragment_immersion_redeem_code_0".equals(obj)) {
                    return new DialogFragmentImmersionRedeemCodeBindingJaImpl(dataBindingComponent, view);
                }
                if ("layout-ko/dialog_fragment_immersion_redeem_code_0".equals(obj)) {
                    return new DialogFragmentImmersionRedeemCodeBindingKoImpl(dataBindingComponent, view);
                }
                if ("layout/dialog_fragment_immersion_redeem_code_0".equals(obj)) {
                    return new DialogFragmentImmersionRedeemCodeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_immersion_redeem_code is invalid. Received: " + obj);
            case 62:
                if ("layout/dialog_fragment_library_label_0".equals(obj)) {
                    return new DialogFragmentLibraryLabelBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_library_label is invalid. Received: " + obj);
            case 63:
                if ("layout/dialog_fragment_new_user_recommend_0".equals(obj)) {
                    return new DialogFragmentNewUserRecommendBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_new_user_recommend is invalid. Received: " + obj);
            case 64:
                if ("layout/dialog_fragment_profile_login_guide_0".equals(obj)) {
                    return new DialogFragmentProfileLoginGuideBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_profile_login_guide is invalid. Received: " + obj);
            case 65:
                if ("layout/dialog_fragment_profile_login_guide2_0".equals(obj)) {
                    return new DialogFragmentProfileLoginGuide2BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_profile_login_guide2 is invalid. Received: " + obj);
            case 66:
                if ("layout/dialog_fragment_pure_paying_user_ad_retention_0".equals(obj)) {
                    return new DialogFragmentPurePayingUserAdRetentionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_pure_paying_user_ad_retention is invalid. Received: " + obj);
            case 67:
                if ("layout/dialog_fragment_pure_paying_user_ad_retention_db_0".equals(obj)) {
                    return new DialogFragmentPurePayingUserAdRetentionDbBindingImpl(dataBindingComponent, view);
                }
                if ("layout-es/dialog_fragment_pure_paying_user_ad_retention_db_0".equals(obj)) {
                    return new DialogFragmentPurePayingUserAdRetentionDbBindingEsImpl(dataBindingComponent, view);
                }
                if ("layout-de/dialog_fragment_pure_paying_user_ad_retention_db_0".equals(obj)) {
                    return new DialogFragmentPurePayingUserAdRetentionDbBindingDeImpl(dataBindingComponent, view);
                }
                if ("layout-fr/dialog_fragment_pure_paying_user_ad_retention_db_0".equals(obj)) {
                    return new DialogFragmentPurePayingUserAdRetentionDbBindingFrImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_pure_paying_user_ad_retention_db is invalid. Received: " + obj);
            case 68:
                if ("layout/dialog_fragment_sku_expansion_0".equals(obj)) {
                    return new DialogFragmentSkuExpansionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_sku_expansion is invalid. Received: " + obj);
            case 69:
                if ("layout/dialog_fragment_subs_expansion_0".equals(obj)) {
                    return new DialogFragmentSubsExpansionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_subs_expansion is invalid. Received: " + obj);
            case 70:
                if ("layout/dialog_fragment_subs_expansion_new_0".equals(obj)) {
                    return new DialogFragmentSubsExpansionNewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_subs_expansion_new is invalid. Received: " + obj);
            case 71:
                if ("layout/dialog_fragment_subs_pro_expired_0".equals(obj)) {
                    return new DialogFragmentSubsProExpiredBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_subs_pro_expired is invalid. Received: " + obj);
            case 72:
                if ("layout/dialog_fragment_tag_drawer_list_0".equals(obj)) {
                    return new DialogFragmentTagDrawerListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_tag_drawer_list is invalid. Received: " + obj);
            case 73:
                if ("layout/dialog_fragment_unlock_template_21_0".equals(obj)) {
                    return new DialogFragmentUnlockTemplate21BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_unlock_template_21 is invalid. Received: " + obj);
            case 74:
                if ("layout/dialog_fragment_unlock_template_22_0".equals(obj)) {
                    return new DialogFragmentUnlockTemplate22BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_fragment_unlock_template_22 is invalid. Received: " + obj);
            case 75:
                if ("layout/dialog_home_login_guide_0".equals(obj)) {
                    return new DialogHomeLoginGuideBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_home_login_guide is invalid. Received: " + obj);
            case 76:
                if ("layout/dialog_interstitial_loading_0".equals(obj)) {
                    return new DialogInterstitialLoadingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_interstitial_loading is invalid. Received: " + obj);
            case 77:
                if ("layout/dialog_loading_0".equals(obj)) {
                    return new DialogLoadingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_loading is invalid. Received: " + obj);
            case 78:
                if ("layout/dialog_logout_tip_0".equals(obj)) {
                    return new DialogLogoutTipBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_logout_tip is invalid. Received: " + obj);
            case 79:
                if ("layout/dialog_merge_tourist_0".equals(obj)) {
                    return new DialogMergeTouristBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_merge_tourist is invalid. Received: " + obj);
            case 80:
                if ("layout/dialog_merge_tourist_failed_0".equals(obj)) {
                    return new DialogMergeTouristFailedBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_merge_tourist_failed is invalid. Received: " + obj);
            case 81:
                if ("layout/dialog_merge_tourist_process_0".equals(obj)) {
                    return new DialogMergeTouristProcessBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_merge_tourist_process is invalid. Received: " + obj);
            case 82:
                if ("layout/dialog_merge_tourist_succeed_0".equals(obj)) {
                    return new DialogMergeTouristSucceedBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_merge_tourist_succeed is invalid. Received: " + obj);
            case 83:
                if ("layout/dialog_normal_login_guide_0".equals(obj)) {
                    return new DialogNormalLoginGuideBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_normal_login_guide is invalid. Received: " + obj);
            case 84:
                if ("layout/dialog_open_short_by_id_0".equals(obj)) {
                    return new DialogOpenShortByIdBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_open_short_by_id is invalid. Received: " + obj);
            case 85:
                if ("layout/dialog_payment_item_google_0".equals(obj)) {
                    return new DialogPaymentItemGoogleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_payment_item_google is invalid. Received: " + obj);
            case 86:
                if ("layout/dialog_payment_item_pp_0".equals(obj)) {
                    return new DialogPaymentItemPpBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_payment_item_pp is invalid. Received: " + obj);
            case 87:
                if ("layout/dialog_payment_item_sp_0".equals(obj)) {
                    return new DialogPaymentItemSpBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_payment_item_sp is invalid. Received: " + obj);
            case 88:
                if ("layout/dialog_purchase_failed_tip_0".equals(obj)) {
                    return new DialogPurchaseFailedTipBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_purchase_failed_tip is invalid. Received: " + obj);
            case 89:
                if ("layout/dialog_retain_fragment_discount_0".equals(obj)) {
                    return new DialogRetainFragmentDiscountBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_retain_fragment_discount is invalid. Received: " + obj);
            case 90:
                if ("layout/dialog_retry_unlock_0".equals(obj)) {
                    return new DialogRetryUnlockBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_retry_unlock is invalid. Received: " + obj);
            case 91:
                if ("layout/dialog_reward_loading_0".equals(obj)) {
                    return new DialogRewardLoadingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_reward_loading is invalid. Received: " + obj);
            case 92:
                if ("layout/dialog_rfm_guide_0".equals(obj)) {
                    return new DialogRfmGuideBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_rfm_guide is invalid. Received: " + obj);
            case 93:
                if ("layout/dialog_subs_update_0".equals(obj)) {
                    return new DialogSubsUpdateBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_subs_update is invalid. Received: " + obj);
            case 94:
                if ("layout/dialog_switch_account_tip_0".equals(obj)) {
                    return new DialogSwitchAccountTipBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_switch_account_tip is invalid. Received: " + obj);
            case 95:
                if ("layout/dialog_tip_0".equals(obj)) {
                    return new DialogTipBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_tip is invalid. Received: " + obj);
            case 96:
                if ("layout/dialog_topup_0".equals(obj)) {
                    return new DialogTopupBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_topup is invalid. Received: " + obj);
            case 97:
                if ("layout/dialog_ttp_pment_process_0".equals(obj)) {
                    return new DialogTtpPmentProcessBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_ttp_pment_process is invalid. Received: " + obj);
            case 98:
                if ("layout/dialog_update_0".equals(obj)) {
                    return new DialogUpdateBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_update is invalid. Received: " + obj);
            case 99:
                if ("layout/fragment_bind_info_0".equals(obj)) {
                    return new FragmentBindInfoBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_bind_info is invalid. Received: " + obj);
            case 100:
                if ("layout/fragment_black_friday_coin_sku_0".equals(obj)) {
                    return new FragmentBlackFridayCoinSkuBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_black_friday_coin_sku is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    private final ViewDataBinding c(DataBindingComponent dataBindingComponent, View view, int i10, Object obj) {
        switch (i10) {
            case 101:
                if ("layout/fragment_bonus_record_0".equals(obj)) {
                    return new FragmentBonusRecordBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_bonus_record is invalid. Received: " + obj);
            case 102:
                if ("layout/fragment_coins_record_0".equals(obj)) {
                    return new FragmentCoinsRecordBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_coins_record is invalid. Received: " + obj);
            case 103:
                if ("layout/fragment_collection_list_0".equals(obj)) {
                    return new FragmentCollectionListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_collection_list is invalid. Received: " + obj);
            case 104:
                if ("layout/fragment_delete_account_0".equals(obj)) {
                    return new FragmentDeleteAccountBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_delete_account is invalid. Received: " + obj);
            case 105:
                if ("layout/fragment_discover_0".equals(obj)) {
                    return new FragmentDiscoverBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_discover is invalid. Received: " + obj);
            case 106:
                if ("layout/fragment_discover_library_0".equals(obj)) {
                    return new FragmentDiscoverLibraryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_discover_library is invalid. Received: " + obj);
            case 107:
                if ("layout/fragment_discover_more_0".equals(obj)) {
                    return new FragmentDiscoverMoreBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_discover_more is invalid. Received: " + obj);
            case 108:
                if ("layout/fragment_discover_more_category_filter_0".equals(obj)) {
                    return new FragmentDiscoverMoreCategoryFilterBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_discover_more_category_filter is invalid. Received: " + obj);
            case 109:
                if ("layout/fragment_discover_more_category_filter_list_0".equals(obj)) {
                    return new FragmentDiscoverMoreCategoryFilterListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_discover_more_category_filter_list is invalid. Received: " + obj);
            case 110:
                if ("layout/fragment_discover_ranking_0".equals(obj)) {
                    return new FragmentDiscoverRankingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_discover_ranking is invalid. Received: " + obj);
            case 111:
                if ("layout/fragment_discover_ranking_tab_0".equals(obj)) {
                    return new FragmentDiscoverRankingTabBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_discover_ranking_tab is invalid. Received: " + obj);
            case 112:
                if ("layout/fragment_discover_tab_0".equals(obj)) {
                    return new FragmentDiscoverTabBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_discover_tab is invalid. Received: " + obj);
            case 113:
                if ("layout/fragment_discover_webview_0".equals(obj)) {
                    return new FragmentDiscoverWebviewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_discover_webview is invalid. Received: " + obj);
            case 114:
                if ("layout/fragment_email_auth_0".equals(obj)) {
                    return new FragmentEmailAuthBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_email_auth is invalid. Received: " + obj);
            case 115:
                if ("layout/fragment_episode_list_0".equals(obj)) {
                    return new FragmentEpisodeListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_episode_list is invalid. Received: " + obj);
            case 116:
                if ("layout/fragment_list_0".equals(obj)) {
                    return new FragmentListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_list is invalid. Received: " + obj);
            case 117:
                if ("layout/fragment_my_collection_0".equals(obj)) {
                    return new FragmentMyCollectionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_my_collection is invalid. Received: " + obj);
            case 118:
                if ("layout/fragment_my_list_0".equals(obj)) {
                    return new FragmentMyListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_my_list is invalid. Received: " + obj);
            case 119:
                if ("layout/fragment_my_list_detail_0".equals(obj)) {
                    return new FragmentMyListDetailBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_my_list_detail is invalid. Received: " + obj);
            case 120:
                if ("layout/fragment_my_wallet_0".equals(obj)) {
                    return new FragmentMyWalletBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_my_wallet is invalid. Received: " + obj);
            case 121:
                if ("layout/fragment_mylist_mix_0".equals(obj)) {
                    return new FragmentMylistMixBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_mylist_mix is invalid. Received: " + obj);
            case 122:
                if ("layout/fragment_phone_auth_0".equals(obj)) {
                    return new FragmentPhoneAuthBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_phone_auth is invalid. Received: " + obj);
            case 123:
                if ("layout/fragment_profile_0".equals(obj)) {
                    return new FragmentProfileBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_profile is invalid. Received: " + obj);
            case 124:
                if ("layout/fragment_ranking_0".equals(obj)) {
                    return new FragmentRankingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_ranking is invalid. Received: " + obj);
            case 125:
                if ("layout/fragment_recently_watched_0".equals(obj)) {
                    return new FragmentRecentlyWatchedBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_recently_watched is invalid. Received: " + obj);
            case 126:
                if ("layout/fragment_recycler_view_0".equals(obj)) {
                    return new FragmentRecyclerViewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_recycler_view is invalid. Received: " + obj);
            case 127:
                if ("layout/fragment_refresh_0".equals(obj)) {
                    return new FragmentRefreshBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_refresh is invalid. Received: " + obj);
            case 128:
                if ("layout/fragment_rewards_0".equals(obj)) {
                    return new FragmentRewardsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_rewards is invalid. Received: " + obj);
            case 129:
                if ("layout/fragment_settings_0".equals(obj)) {
                    return new FragmentSettingsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings is invalid. Received: " + obj);
            case 130:
                if ("layout/fragment_shorts_0".equals(obj)) {
                    return new FragmentShortsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_shorts is invalid. Received: " + obj);
            case 131:
                if ("layout/fragment_switch_info_0".equals(obj)) {
                    return new FragmentSwitchInfoBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_switch_info is invalid. Received: " + obj);
            case 132:
                if ("layout/fragment_tag_filter_0".equals(obj)) {
                    return new FragmentTagFilterBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_tag_filter is invalid. Received: " + obj);
            case 133:
                if ("layout/fragment_tag_filter_list_0".equals(obj)) {
                    return new FragmentTagFilterListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_tag_filter_list is invalid. Received: " + obj);
            case 134:
                if ("layout/fragment_top_up_0".equals(obj)) {
                    return new FragmentTopUpBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_top_up is invalid. Received: " + obj);
            case 135:
                if ("layout/fragment_watched_recently_0".equals(obj)) {
                    return new FragmentWatchedRecentlyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_watched_recently is invalid. Received: " + obj);
            case 136:
                if ("layout/item_act_guide_point_0".equals(obj)) {
                    return new ItemActGuidePointBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_act_guide_point is invalid. Received: " + obj);
            case 137:
                if ("layout/item_app_language_0".equals(obj)) {
                    return new ItemAppLanguageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_app_language is invalid. Received: " + obj);
            case 138:
                if ("layout/item_batch_unlock_ad_0".equals(obj)) {
                    return new ItemBatchUnlockAdBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_batch_unlock_ad is invalid. Received: " + obj);
            case 139:
                if ("layout/item_bind_info_0".equals(obj)) {
                    return new ItemBindInfoBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_bind_info is invalid. Received: " + obj);
            case 140:
                if ("layout/item_black_friday_coin_sku_expired_0".equals(obj)) {
                    return new ItemBlackFridayCoinSkuExpiredBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_black_friday_coin_sku_expired is invalid. Received: " + obj);
            case 141:
                if ("layout/item_black_friday_coin_sku_title_0".equals(obj)) {
                    return new ItemBlackFridayCoinSkuTitleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_black_friday_coin_sku_title is invalid. Received: " + obj);
            case 142:
                if ("layout/item_black_friday_coin_sku_unused_0".equals(obj)) {
                    return new ItemBlackFridayCoinSkuUnusedBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_black_friday_coin_sku_unused is invalid. Received: " + obj);
            case 143:
                if ("layout/item_black_friday_coin_sku_used_0".equals(obj)) {
                    return new ItemBlackFridayCoinSkuUsedBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_black_friday_coin_sku_used is invalid. Received: " + obj);
            case 144:
                if ("layout/item_bonus_record_0".equals(obj)) {
                    return new ItemBonusRecordBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_bonus_record is invalid. Received: " + obj);
            case 145:
                if ("layout/item_check_in_future_not_check_in_0".equals(obj)) {
                    return new ItemCheckInFutureNotCheckInBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_check_in_future_not_check_in is invalid. Received: " + obj);
            case 146:
                if ("layout/item_check_in_now_check_in_0".equals(obj)) {
                    return new ItemCheckInNowCheckInBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_check_in_now_check_in is invalid. Received: " + obj);
            case 147:
                if ("layout/item_check_in_now_not_check_in_0".equals(obj)) {
                    return new ItemCheckInNowNotCheckInBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_check_in_now_not_check_in is invalid. Received: " + obj);
            case 148:
                if ("layout/item_check_in_passed_check_in_0".equals(obj)) {
                    return new ItemCheckInPassedCheckInBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_check_in_passed_check_in is invalid. Received: " + obj);
            case 149:
                if ("layout/item_check_in_passed_not_check_in_0".equals(obj)) {
                    return new ItemCheckInPassedNotCheckInBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_check_in_passed_not_check_in is invalid. Received: " + obj);
            case 150:
                if ("layout/item_clarity_choose_0".equals(obj)) {
                    return new ItemClarityChooseBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_clarity_choose is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    private final ViewDataBinding d(DataBindingComponent dataBindingComponent, View view, int i10, Object obj) {
        switch (i10) {
            case 151:
                if ("layout/item_coin_sku_recommend_main_0".equals(obj)) {
                    return new ItemCoinSkuRecommendMainBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_coin_sku_recommend_main is invalid. Received: " + obj);
            case 152:
                if ("layout/item_coin_sku_recommend_normal_0".equals(obj)) {
                    return new ItemCoinSkuRecommendNormalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_coin_sku_recommend_normal is invalid. Received: " + obj);
            case 153:
                if ("layout/item_coin_sku_topup_black_friday_0".equals(obj)) {
                    return new ItemCoinSkuTopupBlackFridayBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_coin_sku_topup_black_friday is invalid. Received: " + obj);
            case 154:
                if ("layout/item_coin_sku_topup_black_friday_7_0".equals(obj)) {
                    return new ItemCoinSkuTopupBlackFriday7BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_coin_sku_topup_black_friday_7 is invalid. Received: " + obj);
            case 155:
                if ("layout/item_coin_sku_topup_expansion_0".equals(obj)) {
                    return new ItemCoinSkuTopupExpansionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_coin_sku_topup_expansion is invalid. Received: " + obj);
            case 156:
                if ("layout/item_coin_sku_topup_expansion_7_0".equals(obj)) {
                    return new ItemCoinSkuTopupExpansion7BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_coin_sku_topup_expansion_7 is invalid. Received: " + obj);
            case 157:
                if ("layout/item_coin_sku_topup_main_0".equals(obj)) {
                    return new ItemCoinSkuTopupMainBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_coin_sku_topup_main is invalid. Received: " + obj);
            case 158:
                if ("layout/item_coin_sku_topup_main_7_0".equals(obj)) {
                    return new ItemCoinSkuTopupMain7BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_coin_sku_topup_main_7 is invalid. Received: " + obj);
            case 159:
                if ("layout/item_coin_sku_topup_normal_0".equals(obj)) {
                    return new ItemCoinSkuTopupNormalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_coin_sku_topup_normal is invalid. Received: " + obj);
            case 160:
                if ("layout/item_coin_sku_topup_normal_7_0".equals(obj)) {
                    return new ItemCoinSkuTopupNormal7BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_coin_sku_topup_normal_7 is invalid. Received: " + obj);
            case 161:
                if ("layout/item_coins_record_0".equals(obj)) {
                    return new ItemCoinsRecordBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_coins_record is invalid. Received: " + obj);
            case 162:
                if ("layout/item_collection_horizontal_0".equals(obj)) {
                    return new ItemCollectionHorizontalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_collection_horizontal is invalid. Received: " + obj);
            case 163:
                if ("layout/item_cover_play_0".equals(obj)) {
                    return new ItemCoverPlayBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_cover_play is invalid. Received: " + obj);
            case 164:
                if ("layout/item_dialog_fragment_episode_redeem_code_equity_0".equals(obj)) {
                    return new ItemDialogFragmentEpisodeRedeemCodeEquityBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_dialog_fragment_episode_redeem_code_equity is invalid. Received: " + obj);
            case 165:
                if ("layout/item_discount_coin_sku_purchased_0".equals(obj)) {
                    return new ItemDiscountCoinSkuPurchasedBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discount_coin_sku_purchased is invalid. Received: " + obj);
            case 166:
                if ("layout/item_discount_coin_sku_refund_0".equals(obj)) {
                    return new ItemDiscountCoinSkuRefundBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discount_coin_sku_refund is invalid. Received: " + obj);
            case 167:
                if ("layout/item_discover_banner_brand_ad_0".equals(obj)) {
                    return new ItemDiscoverBannerBrandAdBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_banner_brand_ad is invalid. Received: " + obj);
            case IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION /* 168 */:
                if ("layout/item_discover_banner_brand_ad_2_0".equals(obj)) {
                    return new ItemDiscoverBannerBrandAd2BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_banner_brand_ad_2 is invalid. Received: " + obj);
            case 169:
                if ("layout/item_discover_banner_h5_0".equals(obj)) {
                    return new ItemDiscoverBannerH5BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_banner_h5 is invalid. Received: " + obj);
            case 170:
                if ("layout/item_discover_banner_h5_2_0".equals(obj)) {
                    return new ItemDiscoverBannerH52BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_banner_h5_2 is invalid. Received: " + obj);
            case 171:
                if ("layout/item_discover_banner_shorts_0".equals(obj)) {
                    return new ItemDiscoverBannerShortsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_banner_shorts is invalid. Received: " + obj);
            case 172:
                if ("layout/item_discover_banner_shorts_2_0".equals(obj)) {
                    return new ItemDiscoverBannerShorts2BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_banner_shorts_2 is invalid. Received: " + obj);
            case 173:
                if ("layout/item_discover_banner_shorts_3_0".equals(obj)) {
                    return new ItemDiscoverBannerShorts3BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_banner_shorts_3 is invalid. Received: " + obj);
            case 174:
                if ("layout/item_discover_category_banner_item_0".equals(obj)) {
                    return new ItemDiscoverCategoryBannerItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_category_banner_item is invalid. Received: " + obj);
            case 175:
                if ("layout/item_discover_category_page_item_0".equals(obj)) {
                    return new ItemDiscoverCategoryPageItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_category_page_item is invalid. Received: " + obj);
            case 176:
                if ("layout/item_discover_circle_picture_0".equals(obj)) {
                    return new ItemDiscoverCirclePictureBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_circle_picture is invalid. Received: " + obj);
            case 177:
                if ("layout/item_discover_column_x_waterfall_0".equals(obj)) {
                    return new ItemDiscoverColumnXWaterfallBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_column_x_waterfall is invalid. Received: " + obj);
            case 178:
                if ("layout/item_discover_coming_soon_0".equals(obj)) {
                    return new ItemDiscoverComingSoonBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_coming_soon is invalid. Received: " + obj);
            case 179:
                if ("layout/item_discover_discount_rectangle_picture_0".equals(obj)) {
                    return new ItemDiscoverDiscountRectanglePictureBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_discount_rectangle_picture is invalid. Received: " + obj);
            case 180:
                if ("layout/item_discover_horizontal_image_icon_0".equals(obj)) {
                    return new ItemDiscoverHorizontalImageIconBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_horizontal_image_icon is invalid. Received: " + obj);
            case 181:
                if ("layout/item_discover_horizontal_image_video_preview_0".equals(obj)) {
                    return new ItemDiscoverHorizontalImageVideoPreviewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_horizontal_image_video_preview is invalid. Received: " + obj);
            case 182:
                if ("layout/item_discover_main_1_row_2_column_container_0".equals(obj)) {
                    return new ItemDiscoverMain1Row2ColumnContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_main_1_row_2_column_container is invalid. Received: " + obj);
            case 183:
                if ("layout/item_discover_main_1_row_2_column_container_item_0".equals(obj)) {
                    return new ItemDiscoverMain1Row2ColumnContainerItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_main_1_row_2_column_container_item is invalid. Received: " + obj);
            case 184:
                if ("layout/item_discover_module_act_banner_0".equals(obj)) {
                    return new ItemDiscoverModuleActBannerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_act_banner is invalid. Received: " + obj);
            case 185:
                if ("layout/item_discover_module_banner_0".equals(obj)) {
                    return new ItemDiscoverModuleBannerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_banner is invalid. Received: " + obj);
            case 186:
                if ("layout/item_discover_module_banner_2_0".equals(obj)) {
                    return new ItemDiscoverModuleBanner2BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_banner_2 is invalid. Received: " + obj);
            case 187:
                if ("layout/item_discover_module_banner_3_0".equals(obj)) {
                    return new ItemDiscoverModuleBanner3BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_banner_3 is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION /* 188 */:
                if ("layout/item_discover_module_carousel_0".equals(obj)) {
                    return new ItemDiscoverModuleCarouselBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_carousel is invalid. Received: " + obj);
            case 189:
                if ("layout/item_discover_module_category_banner_0".equals(obj)) {
                    return new ItemDiscoverModuleCategoryBannerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_category_banner is invalid. Received: " + obj);
            case 190:
                if ("layout/item_discover_module_category_page_0".equals(obj)) {
                    return new ItemDiscoverModuleCategoryPageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_category_page is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED /* 191 */:
                if ("layout/item_discover_module_category_tab_0".equals(obj)) {
                    return new ItemDiscoverModuleCategoryTabBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_category_tab is invalid. Received: " + obj);
            case 192:
                if ("layout/item_discover_module_empty_space_0".equals(obj)) {
                    return new ItemDiscoverModuleEmptySpaceBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_empty_space is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_COUNT /* 193 */:
                if ("layout/item_discover_module_main_1_row_2_column_x_main_part_0".equals(obj)) {
                    return new ItemDiscoverModuleMain1Row2ColumnXMainPartBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_main_1_row_2_column_x_main_part is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY /* 194 */:
                if ("layout/item_discover_module_main_1_row_2_column_x_row_part_0".equals(obj)) {
                    return new ItemDiscoverModuleMain1Row2ColumnXRowPartBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_main_1_row_2_column_x_row_part is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO /* 195 */:
                if ("layout/item_discover_module_ranking_page_0".equals(obj)) {
                    return new ItemDiscoverModuleRankingPageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_ranking_page is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE /* 196 */:
                if ("layout/item_discover_module_ranking_tab_0".equals(obj)) {
                    return new ItemDiscoverModuleRankingTabBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_ranking_tab is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY /* 197 */:
                if ("layout/item_discover_module_single_row_0".equals(obj)) {
                    return new ItemDiscoverModuleSingleRowBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_single_row is invalid. Received: " + obj);
            case 198:
                if ("layout/item_discover_module_time_count_title_more_0".equals(obj)) {
                    return new ItemDiscoverModuleTimeCountTitleMoreBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_time_count_title_more is invalid. Received: " + obj);
            case 199:
                if ("layout/item_discover_module_title_more_0".equals(obj)) {
                    return new ItemDiscoverModuleTitleMoreBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_title_more is invalid. Received: " + obj);
            case 200:
                if ("layout/item_discover_module_title_more_with_icon_0".equals(obj)) {
                    return new ItemDiscoverModuleTitleMoreWithIconBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_module_title_more_with_icon is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    private final ViewDataBinding e(DataBindingComponent dataBindingComponent, View view, int i10, Object obj) {
        switch (i10) {
            case 201:
                if ("layout/item_discover_more_category_filter_0".equals(obj)) {
                    return new ItemDiscoverMoreCategoryFilterBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_more_category_filter is invalid. Received: " + obj);
            case 202:
                if ("layout/item_discover_more_coming_soon_0".equals(obj)) {
                    return new ItemDiscoverMoreComingSoonBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_more_coming_soon is invalid. Received: " + obj);
            case 203:
                if ("layout/item_discover_more_other_0".equals(obj)) {
                    return new ItemDiscoverMoreOtherBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_more_other is invalid. Received: " + obj);
            case 204:
                if ("layout/item_discover_picture_text_0".equals(obj)) {
                    return new ItemDiscoverPictureTextBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_picture_text is invalid. Received: " + obj);
            case 205:
                if ("layout/item_discover_ranking_0".equals(obj)) {
                    return new ItemDiscoverRankingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_ranking is invalid. Received: " + obj);
            case 206:
                if ("layout/item_discover_ranking_mul_tag_0".equals(obj)) {
                    return new ItemDiscoverRankingMulTagBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_ranking_mul_tag is invalid. Received: " + obj);
            case 207:
                if ("layout/item_discover_ranking_mul_tag_item_0".equals(obj)) {
                    return new ItemDiscoverRankingMulTagItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_ranking_mul_tag_item is invalid. Received: " + obj);
            case 208:
                if ("layout/item_discover_ranking_new_0".equals(obj)) {
                    return new ItemDiscoverRankingNewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_ranking_new is invalid. Received: " + obj);
            case 209:
                if ("layout/item_discover_ranking_page_item_0".equals(obj)) {
                    return new ItemDiscoverRankingPageItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_ranking_page_item is invalid. Received: " + obj);
            case 210:
                if ("layout/item_discover_ranking_tab_0".equals(obj)) {
                    return new ItemDiscoverRankingTabBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_ranking_tab is invalid. Received: " + obj);
            case 211:
                if ("layout/item_discover_rectangle_picture_0".equals(obj)) {
                    return new ItemDiscoverRectanglePictureBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_rectangle_picture is invalid. Received: " + obj);
            case 212:
                if ("layout/item_discover_staggered_item_0".equals(obj)) {
                    return new ItemDiscoverStaggeredItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_staggered_item is invalid. Received: " + obj);
            case 213:
                if ("layout/item_discover_staggered_rank_item_0".equals(obj)) {
                    return new ItemDiscoverStaggeredRankItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_staggered_rank_item is invalid. Received: " + obj);
            case 214:
                if ("layout/item_discover_staggered_rank_short_item_0".equals(obj)) {
                    return new ItemDiscoverStaggeredRankShortItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_staggered_rank_short_item is invalid. Received: " + obj);
            case 215:
                if ("layout/item_discover_staggered_related_short_item_0".equals(obj)) {
                    return new ItemDiscoverStaggeredRelatedShortItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_staggered_related_short_item is invalid. Received: " + obj);
            case 216:
                if ("layout/item_discover_staggered_related_short_list_item_0".equals(obj)) {
                    return new ItemDiscoverStaggeredRelatedShortListItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_staggered_related_short_list_item is invalid. Received: " + obj);
            case 217:
                if ("layout/item_discover_staggered_tag_item_0".equals(obj)) {
                    return new ItemDiscoverStaggeredTagItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_staggered_tag_item is invalid. Received: " + obj);
            case 218:
                if ("layout/item_discover_staggered_tag_list_item_0".equals(obj)) {
                    return new ItemDiscoverStaggeredTagListItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_staggered_tag_list_item is invalid. Received: " + obj);
            case 219:
                if ("layout/item_discover_tab_0".equals(obj)) {
                    return new ItemDiscoverTabBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_discover_tab is invalid. Received: " + obj);
            case 220:
                if ("layout/item_download_drama_0".equals(obj)) {
                    return new ItemDownloadDramaBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_download_drama is invalid. Received: " + obj);
            case 221:
                if ("layout/item_download_drama_detail_head_0".equals(obj)) {
                    return new ItemDownloadDramaDetailHeadBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_download_drama_detail_head is invalid. Received: " + obj);
            case 222:
                if ("layout/item_download_drama_head_0".equals(obj)) {
                    return new ItemDownloadDramaHeadBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_download_drama_head is invalid. Received: " + obj);
            case 223:
                if ("layout/item_downloaded_drama_0".equals(obj)) {
                    return new ItemDownloadedDramaBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_downloaded_drama is invalid. Received: " + obj);
            case 224:
                if ("layout/item_downloaded_drama_ep_0".equals(obj)) {
                    return new ItemDownloadedDramaEpBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_downloaded_drama_ep is invalid. Received: " + obj);
            case 225:
                if ("layout/item_downloading_drama_0".equals(obj)) {
                    return new ItemDownloadingDramaBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_downloading_drama is invalid. Received: " + obj);
            case 226:
                if ("layout/item_episode_locked_0".equals(obj)) {
                    return new ItemEpisodeLockedBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_episode_locked is invalid. Received: " + obj);
            case VideoRef.VALUE_VIDEO_REF_POPULARITY_LEVEL /* 227 */:
                if ("layout/item_episode_normal_0".equals(obj)) {
                    return new ItemEpisodeNormalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_episode_normal is invalid. Received: " + obj);
            case VideoRef.VALUE_VIDEO_REF_CODEC_HAS_h266 /* 228 */:
                if ("layout/item_episode_playing_0".equals(obj)) {
                    return new ItemEpisodePlayingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_episode_playing is invalid. Received: " + obj);
            case VideoRef.VALUE_VIDEO_REF_HAS_EMBEDED_SUBTITLE /* 229 */:
                if ("layout/item_episode_tab_0".equals(obj)) {
                    return new ItemEpisodeTabBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_episode_tab is invalid. Received: " + obj);
            case 230:
                if ("layout/item_episode_virtual_0".equals(obj)) {
                    return new ItemEpisodeVirtualBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_episode_virtual is invalid. Received: " + obj);
            case 231:
                if ("layout/item_grid_library_0".equals(obj)) {
                    return new ItemGridLibraryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_grid_library is invalid. Received: " + obj);
            case VideoRef.VALUE_VIDEO_REF_CATEGORY /* 232 */:
                if ("layout/item_grid_tag_drawer_0".equals(obj)) {
                    return new ItemGridTagDrawerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_grid_tag_drawer is invalid. Received: " + obj);
            case VideoRef.VALUE_VIDEO_REF_FIRST_SUB_VID /* 233 */:
                if ("layout/item_home_check_in_day_big_0".equals(obj)) {
                    return new ItemHomeCheckInDayBigBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_home_check_in_day_big is invalid. Received: " + obj);
            case VideoRef.VALUE_VIDEO_REF_ORIGINAL_AUDIO_INFO_LIST /* 234 */:
                if ("layout/item_home_check_in_day_normal_0".equals(obj)) {
                    return new ItemHomeCheckInDayNormalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_home_check_in_day_normal is invalid. Received: " + obj);
            case VideoRef.VALUE_VIDEO_REF_AI_BARRAGE_URL /* 235 */:
                if ("layout/item_immersion_back_shorts_0".equals(obj)) {
                    return new ItemImmersionBackShortsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_immersion_back_shorts is invalid. Received: " + obj);
            case VideoRef.VALUE_VIDEO_REF_CONST_DEPTH /* 236 */:
                if ("layout/item_immersion_normal_0".equals(obj)) {
                    return new ItemImmersionNormalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_immersion_normal is invalid. Received: " + obj);
            case VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS /* 237 */:
                if ("layout/item_immersion_subtitle_0".equals(obj)) {
                    return new ItemImmersionSubtitleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_immersion_subtitle is invalid. Received: " + obj);
            case 238:
                if ("layout/item_library_0".equals(obj)) {
                    return new ItemLibraryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_library is invalid. Received: " + obj);
            case VideoRef.VALUE_VIDEO_REF_SUBTITLE_POSITION_X /* 239 */:
                if ("layout/item_library_classify_0".equals(obj)) {
                    return new ItemLibraryClassifyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_library_classify is invalid. Received: " + obj);
            case 240:
                if ("layout/item_low_sku_template_notification_0".equals(obj)) {
                    return new ItemLowSkuTemplateNotificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_low_sku_template_notification is invalid. Received: " + obj);
            case 241:
                if ("layout/item_low_sku_template_notification_3_0".equals(obj)) {
                    return new ItemLowSkuTemplateNotification3BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_low_sku_template_notification_3 is invalid. Received: " + obj);
            case 242:
                if ("layout/item_my_collection_0".equals(obj)) {
                    return new ItemMyCollectionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_my_collection is invalid. Received: " + obj);
            case 243:
                if ("layout/item_my_list_tab_0".equals(obj)) {
                    return new ItemMyListTabBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_my_list_tab is invalid. Received: " + obj);
            case 244:
                if ("layout/item_new_user_recommend_0".equals(obj)) {
                    return new ItemNewUserRecommendBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_new_user_recommend is invalid. Received: " + obj);
            case 245:
                if ("layout/item_next_episode_tip_0".equals(obj)) {
                    return new ItemNextEpisodeTipBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_next_episode_tip is invalid. Received: " + obj);
            case 246:
                if ("layout/item_novice_task_0".equals(obj)) {
                    return new ItemNoviceTaskBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_novice_task is invalid. Received: " + obj);
            case 247:
                if ("layout/item_official_social_media_0".equals(obj)) {
                    return new ItemOfficialSocialMediaBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_official_social_media is invalid. Received: " + obj);
            case 248:
                if ("layout/item_payment_method_0".equals(obj)) {
                    return new ItemPaymentMethodBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_payment_method is invalid. Received: " + obj);
            case 249:
                if ("layout/item_payment_method_linear_0".equals(obj)) {
                    return new ItemPaymentMethodLinearBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_payment_method_linear is invalid. Received: " + obj);
            case 250:
                if ("layout/item_play_episode_0".equals(obj)) {
                    return new ItemPlayEpisodeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_play_episode is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    private final ViewDataBinding f(DataBindingComponent dataBindingComponent, View view, int i10, Object obj) {
        switch (i10) {
            case 251:
                if ("layout/item_play_resolution_experiment_text_0".equals(obj)) {
                    return new ItemPlayResolutionExperimentTextBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_play_resolution_experiment_text is invalid. Received: " + obj);
            case 252:
                if ("layout/item_play_resolution_experiment_text_icon_0".equals(obj)) {
                    return new ItemPlayResolutionExperimentTextIconBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_play_resolution_experiment_text_icon is invalid. Received: " + obj);
            case 253:
                if ("layout/item_play_resolution_text_center_0".equals(obj)) {
                    return new ItemPlayResolutionTextCenterBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_play_resolution_text_center is invalid. Received: " + obj);
            case 254:
                if ("layout/item_play_resolution_text_icon_0".equals(obj)) {
                    return new ItemPlayResolutionTextIconBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_play_resolution_text_icon is invalid. Received: " + obj);
            case 255:
                if ("layout/item_play_resolution_text_left_0".equals(obj)) {
                    return new ItemPlayResolutionTextLeftBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_play_resolution_text_left is invalid. Received: " + obj);
            case 256:
                if ("layout/item_play_speed_0".equals(obj)) {
                    return new ItemPlaySpeedBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_play_speed is invalid. Received: " + obj);
            case 257:
                if ("layout/item_profile_menu_normal_0".equals(obj)) {
                    return new ItemProfileMenuNormalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_profile_menu_normal is invalid. Received: " + obj);
            case 258:
                if ("layout/item_profile_menu_rewards_0".equals(obj)) {
                    return new ItemProfileMenuRewardsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_profile_menu_rewards is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
                if ("layout/item_ranking_0".equals(obj)) {
                    return new ItemRankingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_ranking is invalid. Received: " + obj);
            case 260:
                if ("layout/item_recently_watched_0".equals(obj)) {
                    return new ItemRecentlyWatchedBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_recently_watched is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE /* 261 */:
                if ("layout/item_recently_watched_horizontal_0".equals(obj)) {
                    return new ItemRecentlyWatchedHorizontalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_recently_watched_horizontal is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC /* 262 */:
                if ("layout/item_recommend_shorts_new_0".equals(obj)) {
                    return new ItemRecommendShortsNewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_recommend_shorts_new is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_DELAY_BUFFERING_UPDATE /* 263 */:
                if ("layout/item_recommend_shorts_new_top_0".equals(obj)) {
                    return new ItemRecommendShortsNewTopBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_recommend_shorts_new_top is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME /* 264 */:
                if ("layout/item_reward_fragment_module_check_in_and_your_bonus_0".equals(obj)) {
                    return new ItemRewardFragmentModuleCheckInAndYourBonusBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_reward_fragment_module_check_in_and_your_bonus is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME /* 265 */:
                if ("layout/item_reward_fragment_module_daily_watch_0".equals(obj)) {
                    return new ItemRewardFragmentModuleDailyWatchBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_reward_fragment_module_daily_watch is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME /* 266 */:
                if ("layout/item_reward_fragment_module_des_0".equals(obj)) {
                    return new ItemRewardFragmentModuleDesBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_reward_fragment_module_des is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME /* 267 */:
                if ("layout/item_reward_fragment_module_get_more_title_0".equals(obj)) {
                    return new ItemRewardFragmentModuleGetMoreTitleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_reward_fragment_module_get_more_title is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TRAN_CONNECT_TIME /* 268 */:
                if ("layout/item_reward_fragment_module_newbie_watch_0".equals(obj)) {
                    return new ItemRewardFragmentModuleNewbieWatchBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_reward_fragment_module_newbie_watch is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME /* 269 */:
                if ("layout/item_reward_fragment_module_task_0".equals(obj)) {
                    return new ItemRewardFragmentModuleTaskBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_reward_fragment_module_task is invalid. Received: " + obj);
            case 270:
                if ("layout/item_reward_fragment_module_watch_ad_0".equals(obj)) {
                    return new ItemRewardFragmentModuleWatchAdBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_reward_fragment_module_watch_ad is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME /* 271 */:
                if ("layout/item_search_act_banner_0".equals(obj)) {
                    return new ItemSearchActBannerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_act_banner is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME /* 272 */:
                if ("layout/item_search_bottom_padding_0".equals(obj)) {
                    return new ItemSearchBottomPaddingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_bottom_padding is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_REQ_FINSIH_TIME /* 273 */:
                if ("layout/item_search_exactly_0".equals(obj)) {
                    return new ItemSearchExactlyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_exactly is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME /* 274 */:
                if ("layout/item_search_fuzzy_0".equals(obj)) {
                    return new ItemSearchFuzzyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_fuzzy is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME /* 275 */:
                if ("layout/item_search_history_0".equals(obj)) {
                    return new ItemSearchHistoryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_history is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_POST_PREPARE /* 276 */:
                if ("layout/item_search_history_keyword_0".equals(obj)) {
                    return new ItemSearchHistoryKeywordBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_history_keyword is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE /* 277 */:
                if ("layout/item_search_label_0".equals(obj)) {
                    return new ItemSearchLabelBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_label is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC /* 278 */:
                if ("layout/item_search_module_empty_space_0".equals(obj)) {
                    return new ItemSearchModuleEmptySpaceBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_module_empty_space is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS /* 279 */:
                if ("layout/item_search_module_title_0".equals(obj)) {
                    return new ItemSearchModuleTitleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_module_title is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN /* 280 */:
                if ("layout/item_search_no_more_result_0".equals(obj)) {
                    return new ItemSearchNoMoreResultBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_no_more_result is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_SET_FFMPEG_LOG_LEVEL /* 281 */:
                if ("layout/item_search_no_network_0".equals(obj)) {
                    return new ItemSearchNoNetworkBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_no_network is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS /* 282 */:
                if ("layout/item_search_no_result_0".equals(obj)) {
                    return new ItemSearchNoResultBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_no_result is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_GET_CUR_UI_FPS /* 283 */:
                if ("layout/item_search_popular_0".equals(obj)) {
                    return new ItemSearchPopularBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_popular is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER /* 284 */:
                if ("layout/item_search_ranking_0".equals(obj)) {
                    return new ItemSearchRankingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_ranking is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_FRC_LEVEL /* 285 */:
                if ("layout/item_search_ranking_short_item_0".equals(obj)) {
                    return new ItemSearchRankingShortItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_ranking_short_item is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS /* 286 */:
                if ("layout/item_select_region_0".equals(obj)) {
                    return new ItemSelectRegionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_select_region is invalid. Received: " + obj);
            case 287:
                if ("layout/item_select_region_section_0".equals(obj)) {
                    return new ItemSelectRegionSectionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_select_region_section is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE /* 288 */:
                if ("layout/item_settings_auto_unlock_episode_0".equals(obj)) {
                    return new ItemSettingsAutoUnlockEpisodeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_settings_auto_unlock_episode is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE /* 289 */:
                if ("layout/item_settings_divider_line_0".equals(obj)) {
                    return new ItemSettingsDividerLineBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_settings_divider_line is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_HTTP_AUTO_RANGE_OFFSET /* 290 */:
                if ("layout/item_settings_fsi_permission_0".equals(obj)) {
                    return new ItemSettingsFsiPermissionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_settings_fsi_permission is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPEN_TIMEOUT /* 291 */:
                if ("layout/item_settings_normal_item_0".equals(obj)) {
                    return new ItemSettingsNormalItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_settings_normal_item is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP /* 292 */:
                if ("layout/item_settings_title_0".equals(obj)) {
                    return new ItemSettingsTitleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_settings_title is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_KEEP_FORMAT_THREAD_ALIVE /* 293 */:
                if ("layout/item_shorts_brand_pic_ad_0".equals(obj)) {
                    return new ItemShortsBrandPicAdBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_shorts_brand_pic_ad is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_DANGER_BUFFER_THRESHOLD /* 294 */:
                if ("layout/item_shorts_brand_video_ad_0".equals(obj)) {
                    return new ItemShortsBrandVideoAdBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_shorts_brand_video_ad is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_SECURE_BUFFER_THRESHOLD /* 295 */:
                if ("layout/item_shorts_normal_0".equals(obj)) {
                    return new ItemShortsNormalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_shorts_normal is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL /* 296 */:
                if ("layout/item_shorts_programmatic_ad_0".equals(obj)) {
                    return new ItemShortsProgrammaticAdBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_shorts_programmatic_ad is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT /* 297 */:
                if ("layout/item_shorts_subtitle_0".equals(obj)) {
                    return new ItemShortsSubtitleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_shorts_subtitle is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX /* 298 */:
                if ("layout/item_shorts_trailer_0".equals(obj)) {
                    return new ItemShortsTrailerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_shorts_trailer is invalid. Received: " + obj);
            case 299:
                if ("layout/item_single_unlock_ad_large_0".equals(obj)) {
                    return new ItemSingleUnlockAdLargeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_single_unlock_ad_large is invalid. Received: " + obj);
            case 300:
                if ("layout/item_single_unlock_ad_small_0".equals(obj)) {
                    return new ItemSingleUnlockAdSmallBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_single_unlock_ad_small is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    private final ViewDataBinding g(DataBindingComponent dataBindingComponent, View view, int i10, Object obj) {
        switch (i10) {
            case 301:
                if ("layout/item_subs_privilege_0".equals(obj)) {
                    return new ItemSubsPrivilegeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_subs_privilege is invalid. Received: " + obj);
            case 302:
                if ("layout/item_subs_privilege_2_0".equals(obj)) {
                    return new ItemSubsPrivilege2BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_subs_privilege_2 is invalid. Received: " + obj);
            case 303:
                if ("layout/item_subs_sku_recommend_normal_0".equals(obj)) {
                    return new ItemSubsSkuRecommendNormalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_subs_sku_recommend_normal is invalid. Received: " + obj);
            case 304:
                if ("layout/item_subs_sku_recommend_pro_0".equals(obj)) {
                    return new ItemSubsSkuRecommendProBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_subs_sku_recommend_pro is invalid. Received: " + obj);
            case 305:
                if ("layout/item_subs_type_normal_7_0".equals(obj)) {
                    return new ItemSubsTypeNormal7BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_subs_type_normal_7 is invalid. Received: " + obj);
            case 306:
                if ("layout/item_subs_type_pro_7_0".equals(obj)) {
                    return new ItemSubsTypePro7BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_subs_type_pro_7 is invalid. Received: " + obj);
            case 307:
                if ("layout/item_subs_type_pro_main_0".equals(obj)) {
                    return new ItemSubsTypeProMainBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_subs_type_pro_main is invalid. Received: " + obj);
            case 308:
                if ("layout/item_subs_type_pro_normal_0".equals(obj)) {
                    return new ItemSubsTypeProNormalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_subs_type_pro_normal is invalid. Received: " + obj);
            case 309:
                if ("layout/item_subsdetail2_tab_0".equals(obj)) {
                    return new ItemSubsdetail2TabBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_subsdetail2_tab is invalid. Received: " + obj);
            case 310:
                if ("layout/item_switch_info_0".equals(obj)) {
                    return new ItemSwitchInfoBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_switch_info is invalid. Received: " + obj);
            case 311:
                if ("layout/item_tag_filter_tab_0".equals(obj)) {
                    return new ItemTagFilterTabBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_tag_filter_tab is invalid. Received: " + obj);
            case 312:
                if ("layout/item_tag_list_shorts_0".equals(obj)) {
                    return new ItemTagListShortsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_tag_list_shorts is invalid. Received: " + obj);
            case 313:
                if ("layout/item_task_center_act_banner_0".equals(obj)) {
                    return new ItemTaskCenterActBannerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_task_center_act_banner is invalid. Received: " + obj);
            case 314:
                if ("layout/item_template_unlock_ad_0".equals(obj)) {
                    return new ItemTemplateUnlockAdBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_template_unlock_ad is invalid. Received: " + obj);
            case 315:
                if ("layout/item_test_text_item_0".equals(obj)) {
                    return new ItemTestTextItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_test_text_item is invalid. Received: " + obj);
            case 316:
                if ("layout/item_third_party_payment_0".equals(obj)) {
                    return new ItemThirdPartyPaymentBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_third_party_payment is invalid. Received: " + obj);
            case 317:
                if ("layout/item_vip_choose_0".equals(obj)) {
                    return new ItemVipChooseBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_vip_choose is invalid. Received: " + obj);
            case 318:
                if ("layout/item_wallet_tab_0".equals(obj)) {
                    return new ItemWalletTabBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_wallet_tab is invalid. Received: " + obj);
            case 319:
                if ("layout/item_watch_ad_bonus_count_down_0".equals(obj)) {
                    return new ItemWatchAdBonusCountDownBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_watch_ad_bonus_count_down is invalid. Received: " + obj);
            case 320:
                if ("layout/item_watch_ad_bonus_disable_watch_0".equals(obj)) {
                    return new ItemWatchAdBonusDisableWatchBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_watch_ad_bonus_disable_watch is invalid. Received: " + obj);
            case 321:
                if ("layout/item_watch_ad_bonus_enable_watch_0".equals(obj)) {
                    return new ItemWatchAdBonusEnableWatchBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_watch_ad_bonus_enable_watch is invalid. Received: " + obj);
            case 322:
                if ("layout/item_watch_ad_bonus_watched_0".equals(obj)) {
                    return new ItemWatchAdBonusWatchedBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_watch_ad_bonus_watched is invalid. Received: " + obj);
            case 323:
                if ("layout/item_window_play_0".equals(obj)) {
                    return new ItemWindowPlayBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_window_play is invalid. Received: " + obj);
            case 324:
                if ("layout/item_you_might_like_0".equals(obj)) {
                    return new ItemYouMightLikeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_you_might_like is invalid. Received: " + obj);
            case 325:
                if ("layout/item_you_might_like_keyword_0".equals(obj)) {
                    return new ItemYouMightLikeKeywordBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_you_might_like_keyword is invalid. Received: " + obj);
            case 326:
                if ("layout/layout_mylist_history_horizontal_item_0".equals(obj)) {
                    return new LayoutMylistHistoryHorizontalItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_mylist_history_horizontal_item is invalid. Received: " + obj);
            case 327:
                if ("layout/layout_toast_collect_result_0".equals(obj)) {
                    return new LayoutToastCollectResultBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_toast_collect_result is invalid. Received: " + obj);
            case 328:
                if ("layout/layout_toast_del_0".equals(obj)) {
                    return new LayoutToastDelBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_toast_del is invalid. Received: " + obj);
            case 329:
                if ("layout/new_dialog_tip_0".equals(obj)) {
                    return new NewDialogTipBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for new_dialog_tip is invalid. Received: " + obj);
            case 330:
                if ("layout/pull_up_load_end_0".equals(obj)) {
                    return new PullUpLoadEndBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for pull_up_load_end is invalid. Received: " + obj);
            case 331:
                if ("layout/view_accumulated_daily_task_0".equals(obj)) {
                    return new ViewAccumulatedDailyTaskBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_accumulated_daily_task is invalid. Received: " + obj);
            case 332:
                if ("layout/view_accumulated_task_0".equals(obj)) {
                    return new ViewAccumulatedTaskBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_accumulated_task is invalid. Received: " + obj);
            case 333:
                if ("layout/view_accumulated_task_progress_0".equals(obj)) {
                    return new ViewAccumulatedTaskProgressBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_accumulated_task_progress is invalid. Received: " + obj);
            case 334:
                if ("layout/view_accumulated_task_progress_item_0".equals(obj)) {
                    return new ViewAccumulatedTaskProgressItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_accumulated_task_progress_item is invalid. Received: " + obj);
            case 335:
                if ("layout/view_coin_db_sku_card_0".equals(obj)) {
                    return new ViewCoinDbSkuCardBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_coin_db_sku_card is invalid. Received: " + obj);
            case 336:
                if ("layout/view_coin_sku_big_card_0".equals(obj)) {
                    return new ViewCoinSkuBigCardBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_coin_sku_big_card is invalid. Received: " + obj);
            case 337:
                if ("layout/view_coin_sku_small_card_0".equals(obj)) {
                    return new ViewCoinSkuSmallCardBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_coin_sku_small_card is invalid. Received: " + obj);
            case 338:
                if ("layout/view_discover_module_title_more_count_down_0".equals(obj)) {
                    return new ViewDiscoverModuleTitleMoreCountDownBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_discover_module_title_more_count_down is invalid. Received: " + obj);
            case 339:
                if ("layout/view_discover_taglist_tag_0".equals(obj)) {
                    return new ViewDiscoverTaglistTagBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_discover_taglist_tag is invalid. Received: " + obj);
            case 340:
                if ("layout/view_flodable_text_area_0".equals(obj)) {
                    return new ViewFlodableTextAreaBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_flodable_text_area is invalid. Received: " + obj);
            case 341:
                if ("layout/view_immersion_control_0".equals(obj)) {
                    return new ViewImmersionControlBindingImpl(dataBindingComponent, new View[]{view});
                }
                throw new IllegalArgumentException("The tag for view_immersion_control is invalid. Received: " + obj);
            case 342:
                if ("layout/view_immersion_seekbar_0".equals(obj)) {
                    return new ViewImmersionSeekbarBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_immersion_seekbar is invalid. Received: " + obj);
            case 343:
                if ("layout/view_immersion_seekbar_experiment_0".equals(obj)) {
                    return new ViewImmersionSeekbarExperimentBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_immersion_seekbar_experiment is invalid. Received: " + obj);
            case 344:
                if ("layout/view_item_load_more_end_0".equals(obj)) {
                    return new ViewItemLoadMoreEndBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_item_load_more_end is invalid. Received: " + obj);
            case 345:
                if ("layout/view_login_get_bonus_label_0".equals(obj)) {
                    return new ViewLoginGetBonusLabelBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_login_get_bonus_label is invalid. Received: " + obj);
            case 346:
                if ("layout/view_login_get_bonus_label2_0".equals(obj)) {
                    return new ViewLoginGetBonusLabel2BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_login_get_bonus_label2 is invalid. Received: " + obj);
            case 347:
                if ("layout/view_packet_float_0".equals(obj)) {
                    return new ViewPacketFloatBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_packet_float is invalid. Received: " + obj);
            case 348:
                if ("layout/view_payment_method_bar_linear_0".equals(obj)) {
                    return new ViewPaymentMethodBarLinearBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_payment_method_bar_linear is invalid. Received: " + obj);
            case 349:
                if ("layout/view_payment_method_btn_0".equals(obj)) {
                    return new ViewPaymentMethodBtnBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_payment_method_btn is invalid. Received: " + obj);
            case TTVideoEngineInterface.PLAYER_OPTION_AE_LU_RANG /* 350 */:
                if ("layout/view_payment_method_btn1_0".equals(obj)) {
                    return new ViewPaymentMethodBtn1BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_payment_method_btn1 is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    private final ViewDataBinding h(DataBindingComponent dataBindingComponent, View view, int i10, Object obj) {
        switch (i10) {
            case 351:
                if ("layout/view_payment_method_btn2_0".equals(obj)) {
                    return new ViewPaymentMethodBtn2BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_payment_method_btn2 is invalid. Received: " + obj);
            case 352:
                if ("layout/view_payment_method_btn3_0".equals(obj)) {
                    return new ViewPaymentMethodBtn3BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_payment_method_btn3 is invalid. Received: " + obj);
            case 353:
                if ("layout/view_rewards_pendant_0".equals(obj)) {
                    return new ViewRewardsPendantBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_rewards_pendant is invalid. Received: " + obj);
            case 354:
                if ("layout/view_shorts_immersion_tag_clickable_0".equals(obj)) {
                    return new ViewShortsImmersionTagClickableBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_shorts_immersion_tag_clickable is invalid. Received: " + obj);
            case 355:
                if ("layout/view_shorts_immersion_tag_normal_0".equals(obj)) {
                    return new ViewShortsImmersionTagNormalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_shorts_immersion_tag_normal is invalid. Received: " + obj);
            case 356:
                if ("layout/view_sub_db_sku_big_card_0".equals(obj)) {
                    return new ViewSubDbSkuBigCardBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_sub_db_sku_big_card is invalid. Received: " + obj);
            case 357:
                if ("layout/view_sub_db_sku_small_card_0".equals(obj)) {
                    return new ViewSubDbSkuSmallCardBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_sub_db_sku_small_card is invalid. Received: " + obj);
            case 358:
                if ("layout/view_sub_sku_big_card_0".equals(obj)) {
                    return new ViewSubSkuBigCardBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_sub_sku_big_card is invalid. Received: " + obj);
            case 359:
                if ("layout/view_sub_sku_small_card_0".equals(obj)) {
                    return new ViewSubSkuSmallCardBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_sub_sku_small_card is invalid. Received: " + obj);
            case 360:
                if ("layout/view_subtitle_0".equals(obj)) {
                    return new ViewSubtitleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_subtitle is invalid. Received: " + obj);
            case 361:
                if ("layout/view_toast_ad_reward_error_0".equals(obj)) {
                    return new ViewToastAdRewardErrorBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_toast_ad_reward_error is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_STALL_THRESHOLD /* 362 */:
                if ("layout/view_turbolink_float_0".equals(obj)) {
                    return new ViewTurbolinkFloatBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_turbolink_float is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_DECODER_STALL_THRESHOLD /* 363 */:
                if ("layout/view_you_might_like_0".equals(obj)) {
                    return new ViewYouMightLikeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_you_might_like is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_DEMUX_TIME /* 364 */:
                if ("layout/viewstub_coin_sku_normal_third_label_0".equals(obj)) {
                    return new ViewstubCoinSkuNormalThirdLabelBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for viewstub_coin_sku_normal_third_label is invalid. Received: " + obj);
            case MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_DEMUX_TIME /* 365 */:
                if ("layout/viewstub_my_list_edit_0".equals(obj)) {
                    return new ViewstubMyListEditBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for viewstub_my_list_edit is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.drake.brv.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i10) {
        return a.f37159a.get(i10);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i10) {
        int i11 = f37158a.get(i10);
        if (i11 > 0) {
            Object tag = view.getTag();
            if (tag != null) {
                switch ((i11 - 1) / 50) {
                    case 0:
                        return a(dataBindingComponent, view, i11, tag);
                    case 1:
                        return b(dataBindingComponent, view, i11, tag);
                    case 2:
                        return c(dataBindingComponent, view, i11, tag);
                    case 3:
                        return d(dataBindingComponent, view, i11, tag);
                    case 4:
                        return e(dataBindingComponent, view, i11, tag);
                    case 5:
                        return f(dataBindingComponent, view, i11, tag);
                    case 6:
                        return g(dataBindingComponent, view, i11, tag);
                    case 7:
                        return h(dataBindingComponent, view, i11, tag);
                    default:
                        return null;
                }
            }
            throw new RuntimeException("view must have a tag");
        }
        return null;
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = b.f37160a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i10) {
        int i11;
        if (viewArr != null && viewArr.length != 0 && (i11 = f37158a.get(i10)) > 0) {
            Object tag = viewArr[0].getTag();
            if (tag == null) {
                throw new RuntimeException("view must have a tag");
            }
            if (i11 == 341) {
                if ("layout/view_immersion_control_0".equals(tag)) {
                    return new ViewImmersionControlBindingImpl(dataBindingComponent, viewArr);
                }
                throw new IllegalArgumentException("The tag for view_immersion_control is invalid. Received: " + tag);
            }
        }
        return null;
    }
}
