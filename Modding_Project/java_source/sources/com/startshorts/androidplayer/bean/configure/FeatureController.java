package com.startshorts.androidplayer.bean.configure;

import com.applovin.shadow.okhttp3.HttpUrl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FeatureController.kt */
@Metadata
/* loaded from: classes6.dex */
public final class FeatureController {
    @NotNull
    private String apiErrorCodeReport;
    private boolean catonDowngradeEnable;
    private boolean cdnEnable;
    private boolean checkInitializerOnForeground;
    private boolean controlAfInit;
    private boolean customDeviceIdEnable;
    private int customPushQueryInterval;
    private boolean discoverPreloadEnable;
    private boolean dynamicDomainEnable;
    private boolean fixedBannerHeightEnable;
    private boolean fixedReportEvent;
    private int fixedReportInterval;
    private boolean httpDNSApiEnable;
    @NotNull
    private String httpDNSCountryCodes;
    @NotNull
    private String httpDNSErrorCodes;
    private long httpDNSIpExpirationTime;
    private boolean httpDNSLookupAgainIfLocalFailed;
    private boolean httpDNSPlayerEnable;
    @NotNull
    private String httpDNSQueryIpUrl;
    private int httpDNSTimeOut;
    private boolean immersionRefreshLayoutEnable;
    private boolean interceptChildThreadCrashes;
    @NotNull
    private String interceptCrashesType;
    private boolean interceptMainThreadCrashes;
    private boolean lockedEpisodeDisableSlideUp;
    private int maxCampaignInfoParseCount;
    private boolean newEcpmFormatEnable;
    private boolean onlyOneImmersionActivity;
    private int pageInfoCollectMaxNum;
    private boolean pageInfoReportEnable;
    private int pageInfoReportNum;
    private boolean playerHeadersNotifyEnable;
    private int playerNetworkTimeout;
    @NotNull
    private String playerNetworkTimeoutCountryCodes;
    private boolean ratingEnable;
    private boolean remoteConfigAwaitFirebaseEnable;
    private boolean shortsPreloadEnable;
    private boolean shortsProgressBarOptimizationEnable;
    private boolean shortsRefreshLayoutEnable;
    private boolean unregisterOnPageChangeCallbackOnPause;
    private int uploadEventInterval;
    private int uploadEventMaxSize;
    private boolean useNewLogUpload;
    private boolean webviewBackgroundTransparentEnable;

    public FeatureController() {
        this(false, false, false, false, 0, 0, 0, 0, false, false, false, null, 0L, false, 0, null, null, null, 0, false, null, false, false, false, false, false, false, false, false, false, 0, false, false, 0, 0, false, false, false, false, false, false, false, false, null, -1, 4095, null);
    }

    public final boolean component1() {
        return this.ratingEnable;
    }

    public final boolean component10() {
        return this.httpDNSApiEnable;
    }

    public final boolean component11() {
        return this.httpDNSPlayerEnable;
    }

    @NotNull
    public final String component12() {
        return this.httpDNSQueryIpUrl;
    }

    public final long component13() {
        return this.httpDNSIpExpirationTime;
    }

    public final boolean component14() {
        return this.httpDNSLookupAgainIfLocalFailed;
    }

    public final int component15() {
        return this.httpDNSTimeOut;
    }

    @NotNull
    public final String component16() {
        return this.httpDNSErrorCodes;
    }

    @NotNull
    public final String component17() {
        return this.httpDNSCountryCodes;
    }

    @NotNull
    public final String component18() {
        return this.playerNetworkTimeoutCountryCodes;
    }

    public final int component19() {
        return this.playerNetworkTimeout;
    }

    public final boolean component2() {
        return this.dynamicDomainEnable;
    }

    public final boolean component20() {
        return this.playerHeadersNotifyEnable;
    }

    @NotNull
    public final String component21() {
        return this.apiErrorCodeReport;
    }

    public final boolean component22() {
        return this.customDeviceIdEnable;
    }

    public final boolean component23() {
        return this.immersionRefreshLayoutEnable;
    }

    public final boolean component24() {
        return this.shortsRefreshLayoutEnable;
    }

    public final boolean component25() {
        return this.remoteConfigAwaitFirebaseEnable;
    }

    public final boolean component26() {
        return this.catonDowngradeEnable;
    }

    public final boolean component27() {
        return this.fixedBannerHeightEnable;
    }

    public final boolean component28() {
        return this.controlAfInit;
    }

    public final boolean component29() {
        return this.unregisterOnPageChangeCallbackOnPause;
    }

    public final boolean component3() {
        return this.shortsProgressBarOptimizationEnable;
    }

    public final boolean component30() {
        return this.fixedReportEvent;
    }

    public final int component31() {
        return this.fixedReportInterval;
    }

    public final boolean component32() {
        return this.useNewLogUpload;
    }

    public final boolean component33() {
        return this.pageInfoReportEnable;
    }

    public final int component34() {
        return this.pageInfoReportNum;
    }

    public final int component35() {
        return this.pageInfoCollectMaxNum;
    }

    public final boolean component36() {
        return this.webviewBackgroundTransparentEnable;
    }

    public final boolean component37() {
        return this.discoverPreloadEnable;
    }

    public final boolean component38() {
        return this.shortsPreloadEnable;
    }

    public final boolean component39() {
        return this.newEcpmFormatEnable;
    }

    public final boolean component4() {
        return this.cdnEnable;
    }

    public final boolean component40() {
        return this.checkInitializerOnForeground;
    }

    public final boolean component41() {
        return this.onlyOneImmersionActivity;
    }

    public final boolean component42() {
        return this.interceptChildThreadCrashes;
    }

    public final boolean component43() {
        return this.interceptMainThreadCrashes;
    }

    @NotNull
    public final String component44() {
        return this.interceptCrashesType;
    }

    public final int component5() {
        return this.maxCampaignInfoParseCount;
    }

    public final int component6() {
        return this.uploadEventInterval;
    }

    public final int component7() {
        return this.uploadEventMaxSize;
    }

    public final int component8() {
        return this.customPushQueryInterval;
    }

    public final boolean component9() {
        return this.lockedEpisodeDisableSlideUp;
    }

    @NotNull
    public final FeatureController copy(boolean z10, boolean z11, boolean z12, boolean z13, int i10, int i11, int i12, int i13, boolean z14, boolean z15, boolean z16, @NotNull String httpDNSQueryIpUrl, long j10, boolean z17, int i14, @NotNull String httpDNSErrorCodes, @NotNull String httpDNSCountryCodes, @NotNull String playerNetworkTimeoutCountryCodes, int i15, boolean z18, @NotNull String apiErrorCodeReport, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, boolean z24, boolean z25, boolean z26, boolean z27, int i16, boolean z28, boolean z29, int i17, int i18, boolean z30, boolean z31, boolean z32, boolean z33, boolean z34, boolean z35, boolean z36, boolean z37, @NotNull String interceptCrashesType) {
        Intrinsics.checkNotNullParameter(httpDNSQueryIpUrl, "httpDNSQueryIpUrl");
        Intrinsics.checkNotNullParameter(httpDNSErrorCodes, "httpDNSErrorCodes");
        Intrinsics.checkNotNullParameter(httpDNSCountryCodes, "httpDNSCountryCodes");
        Intrinsics.checkNotNullParameter(playerNetworkTimeoutCountryCodes, "playerNetworkTimeoutCountryCodes");
        Intrinsics.checkNotNullParameter(apiErrorCodeReport, "apiErrorCodeReport");
        Intrinsics.checkNotNullParameter(interceptCrashesType, "interceptCrashesType");
        return new FeatureController(z10, z11, z12, z13, i10, i11, i12, i13, z14, z15, z16, httpDNSQueryIpUrl, j10, z17, i14, httpDNSErrorCodes, httpDNSCountryCodes, playerNetworkTimeoutCountryCodes, i15, z18, apiErrorCodeReport, z19, z20, z21, z22, z23, z24, z25, z26, z27, i16, z28, z29, i17, i18, z30, z31, z32, z33, z34, z35, z36, z37, interceptCrashesType);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeatureController)) {
            return false;
        }
        FeatureController featureController = (FeatureController) obj;
        if (this.ratingEnable == featureController.ratingEnable && this.dynamicDomainEnable == featureController.dynamicDomainEnable && this.shortsProgressBarOptimizationEnable == featureController.shortsProgressBarOptimizationEnable && this.cdnEnable == featureController.cdnEnable && this.maxCampaignInfoParseCount == featureController.maxCampaignInfoParseCount && this.uploadEventInterval == featureController.uploadEventInterval && this.uploadEventMaxSize == featureController.uploadEventMaxSize && this.customPushQueryInterval == featureController.customPushQueryInterval && this.lockedEpisodeDisableSlideUp == featureController.lockedEpisodeDisableSlideUp && this.httpDNSApiEnable == featureController.httpDNSApiEnable && this.httpDNSPlayerEnable == featureController.httpDNSPlayerEnable && Intrinsics.areEqual(this.httpDNSQueryIpUrl, featureController.httpDNSQueryIpUrl) && this.httpDNSIpExpirationTime == featureController.httpDNSIpExpirationTime && this.httpDNSLookupAgainIfLocalFailed == featureController.httpDNSLookupAgainIfLocalFailed && this.httpDNSTimeOut == featureController.httpDNSTimeOut && Intrinsics.areEqual(this.httpDNSErrorCodes, featureController.httpDNSErrorCodes) && Intrinsics.areEqual(this.httpDNSCountryCodes, featureController.httpDNSCountryCodes) && Intrinsics.areEqual(this.playerNetworkTimeoutCountryCodes, featureController.playerNetworkTimeoutCountryCodes) && this.playerNetworkTimeout == featureController.playerNetworkTimeout && this.playerHeadersNotifyEnable == featureController.playerHeadersNotifyEnable && Intrinsics.areEqual(this.apiErrorCodeReport, featureController.apiErrorCodeReport) && this.customDeviceIdEnable == featureController.customDeviceIdEnable && this.immersionRefreshLayoutEnable == featureController.immersionRefreshLayoutEnable && this.shortsRefreshLayoutEnable == featureController.shortsRefreshLayoutEnable && this.remoteConfigAwaitFirebaseEnable == featureController.remoteConfigAwaitFirebaseEnable && this.catonDowngradeEnable == featureController.catonDowngradeEnable && this.fixedBannerHeightEnable == featureController.fixedBannerHeightEnable && this.controlAfInit == featureController.controlAfInit && this.unregisterOnPageChangeCallbackOnPause == featureController.unregisterOnPageChangeCallbackOnPause && this.fixedReportEvent == featureController.fixedReportEvent && this.fixedReportInterval == featureController.fixedReportInterval && this.useNewLogUpload == featureController.useNewLogUpload && this.pageInfoReportEnable == featureController.pageInfoReportEnable && this.pageInfoReportNum == featureController.pageInfoReportNum && this.pageInfoCollectMaxNum == featureController.pageInfoCollectMaxNum && this.webviewBackgroundTransparentEnable == featureController.webviewBackgroundTransparentEnable && this.discoverPreloadEnable == featureController.discoverPreloadEnable && this.shortsPreloadEnable == featureController.shortsPreloadEnable && this.newEcpmFormatEnable == featureController.newEcpmFormatEnable && this.checkInitializerOnForeground == featureController.checkInitializerOnForeground && this.onlyOneImmersionActivity == featureController.onlyOneImmersionActivity && this.interceptChildThreadCrashes == featureController.interceptChildThreadCrashes && this.interceptMainThreadCrashes == featureController.interceptMainThreadCrashes && Intrinsics.areEqual(this.interceptCrashesType, featureController.interceptCrashesType)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getApiErrorCodeReport() {
        return this.apiErrorCodeReport;
    }

    public final boolean getCatonDowngradeEnable() {
        return this.catonDowngradeEnable;
    }

    public final boolean getCdnEnable() {
        return this.cdnEnable;
    }

    public final boolean getCheckInitializerOnForeground() {
        return this.checkInitializerOnForeground;
    }

    public final boolean getControlAfInit() {
        return this.controlAfInit;
    }

    public final boolean getCustomDeviceIdEnable() {
        return this.customDeviceIdEnable;
    }

    public final int getCustomPushQueryInterval() {
        return this.customPushQueryInterval;
    }

    public final boolean getDiscoverPreloadEnable() {
        return this.discoverPreloadEnable;
    }

    public final boolean getDynamicDomainEnable() {
        return this.dynamicDomainEnable;
    }

    public final boolean getFixedBannerHeightEnable() {
        return this.fixedBannerHeightEnable;
    }

    public final boolean getFixedReportEvent() {
        return this.fixedReportEvent;
    }

    public final int getFixedReportInterval() {
        return this.fixedReportInterval;
    }

    public final boolean getHttpDNSApiEnable() {
        return this.httpDNSApiEnable;
    }

    @NotNull
    public final String getHttpDNSCountryCodes() {
        return this.httpDNSCountryCodes;
    }

    @NotNull
    public final String getHttpDNSErrorCodes() {
        return this.httpDNSErrorCodes;
    }

    public final long getHttpDNSIpExpirationTime() {
        return this.httpDNSIpExpirationTime;
    }

    public final boolean getHttpDNSLookupAgainIfLocalFailed() {
        return this.httpDNSLookupAgainIfLocalFailed;
    }

    public final boolean getHttpDNSPlayerEnable() {
        return this.httpDNSPlayerEnable;
    }

    @NotNull
    public final String getHttpDNSQueryIpUrl() {
        return this.httpDNSQueryIpUrl;
    }

    public final int getHttpDNSTimeOut() {
        return this.httpDNSTimeOut;
    }

    public final boolean getImmersionRefreshLayoutEnable() {
        return this.immersionRefreshLayoutEnable;
    }

    public final boolean getInterceptChildThreadCrashes() {
        return this.interceptChildThreadCrashes;
    }

    @NotNull
    public final String getInterceptCrashesType() {
        return this.interceptCrashesType;
    }

    public final boolean getInterceptMainThreadCrashes() {
        return this.interceptMainThreadCrashes;
    }

    public final boolean getLockedEpisodeDisableSlideUp() {
        return this.lockedEpisodeDisableSlideUp;
    }

    public final int getMaxCampaignInfoParseCount() {
        return this.maxCampaignInfoParseCount;
    }

    public final boolean getNewEcpmFormatEnable() {
        return this.newEcpmFormatEnable;
    }

    public final boolean getOnlyOneImmersionActivity() {
        return this.onlyOneImmersionActivity;
    }

    public final int getPageInfoCollectMaxNum() {
        return this.pageInfoCollectMaxNum;
    }

    public final boolean getPageInfoReportEnable() {
        return this.pageInfoReportEnable;
    }

    public final int getPageInfoReportNum() {
        return this.pageInfoReportNum;
    }

    public final boolean getPlayerHeadersNotifyEnable() {
        return this.playerHeadersNotifyEnable;
    }

    public final int getPlayerNetworkTimeout() {
        return this.playerNetworkTimeout;
    }

    @NotNull
    public final String getPlayerNetworkTimeoutCountryCodes() {
        return this.playerNetworkTimeoutCountryCodes;
    }

    public final boolean getRatingEnable() {
        return this.ratingEnable;
    }

    public final boolean getRemoteConfigAwaitFirebaseEnable() {
        return this.remoteConfigAwaitFirebaseEnable;
    }

    public final boolean getShortsPreloadEnable() {
        return this.shortsPreloadEnable;
    }

    public final boolean getShortsProgressBarOptimizationEnable() {
        return this.shortsProgressBarOptimizationEnable;
    }

    public final boolean getShortsRefreshLayoutEnable() {
        return this.shortsRefreshLayoutEnable;
    }

    public final boolean getUnregisterOnPageChangeCallbackOnPause() {
        return this.unregisterOnPageChangeCallbackOnPause;
    }

    public final int getUploadEventInterval() {
        return this.uploadEventInterval;
    }

    public final int getUploadEventMaxSize() {
        return this.uploadEventMaxSize;
    }

    public final boolean getUseNewLogUpload() {
        return this.useNewLogUpload;
    }

    public final boolean getWebviewBackgroundTransparentEnable() {
        return this.webviewBackgroundTransparentEnable;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((Boolean.hashCode(this.ratingEnable) * 31) + Boolean.hashCode(this.dynamicDomainEnable)) * 31) + Boolean.hashCode(this.shortsProgressBarOptimizationEnable)) * 31) + Boolean.hashCode(this.cdnEnable)) * 31) + Integer.hashCode(this.maxCampaignInfoParseCount)) * 31) + Integer.hashCode(this.uploadEventInterval)) * 31) + Integer.hashCode(this.uploadEventMaxSize)) * 31) + Integer.hashCode(this.customPushQueryInterval)) * 31) + Boolean.hashCode(this.lockedEpisodeDisableSlideUp)) * 31) + Boolean.hashCode(this.httpDNSApiEnable)) * 31) + Boolean.hashCode(this.httpDNSPlayerEnable)) * 31) + this.httpDNSQueryIpUrl.hashCode()) * 31) + Long.hashCode(this.httpDNSIpExpirationTime)) * 31) + Boolean.hashCode(this.httpDNSLookupAgainIfLocalFailed)) * 31) + Integer.hashCode(this.httpDNSTimeOut)) * 31) + this.httpDNSErrorCodes.hashCode()) * 31) + this.httpDNSCountryCodes.hashCode()) * 31) + this.playerNetworkTimeoutCountryCodes.hashCode()) * 31) + Integer.hashCode(this.playerNetworkTimeout)) * 31) + Boolean.hashCode(this.playerHeadersNotifyEnable)) * 31) + this.apiErrorCodeReport.hashCode()) * 31) + Boolean.hashCode(this.customDeviceIdEnable)) * 31) + Boolean.hashCode(this.immersionRefreshLayoutEnable)) * 31) + Boolean.hashCode(this.shortsRefreshLayoutEnable)) * 31) + Boolean.hashCode(this.remoteConfigAwaitFirebaseEnable)) * 31) + Boolean.hashCode(this.catonDowngradeEnable)) * 31) + Boolean.hashCode(this.fixedBannerHeightEnable)) * 31) + Boolean.hashCode(this.controlAfInit)) * 31) + Boolean.hashCode(this.unregisterOnPageChangeCallbackOnPause)) * 31) + Boolean.hashCode(this.fixedReportEvent)) * 31) + Integer.hashCode(this.fixedReportInterval)) * 31) + Boolean.hashCode(this.useNewLogUpload)) * 31) + Boolean.hashCode(this.pageInfoReportEnable)) * 31) + Integer.hashCode(this.pageInfoReportNum)) * 31) + Integer.hashCode(this.pageInfoCollectMaxNum)) * 31) + Boolean.hashCode(this.webviewBackgroundTransparentEnable)) * 31) + Boolean.hashCode(this.discoverPreloadEnable)) * 31) + Boolean.hashCode(this.shortsPreloadEnable)) * 31) + Boolean.hashCode(this.newEcpmFormatEnable)) * 31) + Boolean.hashCode(this.checkInitializerOnForeground)) * 31) + Boolean.hashCode(this.onlyOneImmersionActivity)) * 31) + Boolean.hashCode(this.interceptChildThreadCrashes)) * 31) + Boolean.hashCode(this.interceptMainThreadCrashes)) * 31) + this.interceptCrashesType.hashCode();
    }

    public final void setApiErrorCodeReport(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.apiErrorCodeReport = str;
    }

    public final void setCatonDowngradeEnable(boolean z10) {
        this.catonDowngradeEnable = z10;
    }

    public final void setCdnEnable(boolean z10) {
        this.cdnEnable = z10;
    }

    public final void setCheckInitializerOnForeground(boolean z10) {
        this.checkInitializerOnForeground = z10;
    }

    public final void setControlAfInit(boolean z10) {
        this.controlAfInit = z10;
    }

    public final void setCustomDeviceIdEnable(boolean z10) {
        this.customDeviceIdEnable = z10;
    }

    public final void setCustomPushQueryInterval(int i10) {
        this.customPushQueryInterval = i10;
    }

    public final void setDiscoverPreloadEnable(boolean z10) {
        this.discoverPreloadEnable = z10;
    }

    public final void setDynamicDomainEnable(boolean z10) {
        this.dynamicDomainEnable = z10;
    }

    public final void setFixedBannerHeightEnable(boolean z10) {
        this.fixedBannerHeightEnable = z10;
    }

    public final void setFixedReportEvent(boolean z10) {
        this.fixedReportEvent = z10;
    }

    public final void setFixedReportInterval(int i10) {
        this.fixedReportInterval = i10;
    }

    public final void setHttpDNSApiEnable(boolean z10) {
        this.httpDNSApiEnable = z10;
    }

    public final void setHttpDNSCountryCodes(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.httpDNSCountryCodes = str;
    }

    public final void setHttpDNSErrorCodes(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.httpDNSErrorCodes = str;
    }

    public final void setHttpDNSIpExpirationTime(long j10) {
        this.httpDNSIpExpirationTime = j10;
    }

    public final void setHttpDNSLookupAgainIfLocalFailed(boolean z10) {
        this.httpDNSLookupAgainIfLocalFailed = z10;
    }

    public final void setHttpDNSPlayerEnable(boolean z10) {
        this.httpDNSPlayerEnable = z10;
    }

    public final void setHttpDNSQueryIpUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.httpDNSQueryIpUrl = str;
    }

    public final void setHttpDNSTimeOut(int i10) {
        this.httpDNSTimeOut = i10;
    }

    public final void setImmersionRefreshLayoutEnable(boolean z10) {
        this.immersionRefreshLayoutEnable = z10;
    }

    public final void setInterceptChildThreadCrashes(boolean z10) {
        this.interceptChildThreadCrashes = z10;
    }

    public final void setInterceptCrashesType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.interceptCrashesType = str;
    }

    public final void setInterceptMainThreadCrashes(boolean z10) {
        this.interceptMainThreadCrashes = z10;
    }

    public final void setLockedEpisodeDisableSlideUp(boolean z10) {
        this.lockedEpisodeDisableSlideUp = z10;
    }

    public final void setMaxCampaignInfoParseCount(int i10) {
        this.maxCampaignInfoParseCount = i10;
    }

    public final void setNewEcpmFormatEnable(boolean z10) {
        this.newEcpmFormatEnable = z10;
    }

    public final void setOnlyOneImmersionActivity(boolean z10) {
        this.onlyOneImmersionActivity = z10;
    }

    public final void setPageInfoCollectMaxNum(int i10) {
        this.pageInfoCollectMaxNum = i10;
    }

    public final void setPageInfoReportEnable(boolean z10) {
        this.pageInfoReportEnable = z10;
    }

    public final void setPageInfoReportNum(int i10) {
        this.pageInfoReportNum = i10;
    }

    public final void setPlayerHeadersNotifyEnable(boolean z10) {
        this.playerHeadersNotifyEnable = z10;
    }

    public final void setPlayerNetworkTimeout(int i10) {
        this.playerNetworkTimeout = i10;
    }

    public final void setPlayerNetworkTimeoutCountryCodes(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.playerNetworkTimeoutCountryCodes = str;
    }

    public final void setRatingEnable(boolean z10) {
        this.ratingEnable = z10;
    }

    public final void setRemoteConfigAwaitFirebaseEnable(boolean z10) {
        this.remoteConfigAwaitFirebaseEnable = z10;
    }

    public final void setShortsPreloadEnable(boolean z10) {
        this.shortsPreloadEnable = z10;
    }

    public final void setShortsProgressBarOptimizationEnable(boolean z10) {
        this.shortsProgressBarOptimizationEnable = z10;
    }

    public final void setShortsRefreshLayoutEnable(boolean z10) {
        this.shortsRefreshLayoutEnable = z10;
    }

    public final void setUnregisterOnPageChangeCallbackOnPause(boolean z10) {
        this.unregisterOnPageChangeCallbackOnPause = z10;
    }

    public final void setUploadEventInterval(int i10) {
        this.uploadEventInterval = i10;
    }

    public final void setUploadEventMaxSize(int i10) {
        this.uploadEventMaxSize = i10;
    }

    public final void setUseNewLogUpload(boolean z10) {
        this.useNewLogUpload = z10;
    }

    public final void setWebviewBackgroundTransparentEnable(boolean z10) {
        this.webviewBackgroundTransparentEnable = z10;
    }

    @NotNull
    public String toString() {
        return "FeatureController(ratingEnable=" + this.ratingEnable + ", dynamicDomainEnable=" + this.dynamicDomainEnable + ", shortsProgressBarOptimizationEnable=" + this.shortsProgressBarOptimizationEnable + ", cdnEnable=" + this.cdnEnable + ", maxCampaignInfoParseCount=" + this.maxCampaignInfoParseCount + ", uploadEventInterval=" + this.uploadEventInterval + ", uploadEventMaxSize=" + this.uploadEventMaxSize + ", customPushQueryInterval=" + this.customPushQueryInterval + ", lockedEpisodeDisableSlideUp=" + this.lockedEpisodeDisableSlideUp + ", httpDNSApiEnable=" + this.httpDNSApiEnable + ", httpDNSPlayerEnable=" + this.httpDNSPlayerEnable + ", httpDNSQueryIpUrl=" + this.httpDNSQueryIpUrl + ", httpDNSIpExpirationTime=" + this.httpDNSIpExpirationTime + ", httpDNSLookupAgainIfLocalFailed=" + this.httpDNSLookupAgainIfLocalFailed + ", httpDNSTimeOut=" + this.httpDNSTimeOut + ", httpDNSErrorCodes=" + this.httpDNSErrorCodes + ", httpDNSCountryCodes=" + this.httpDNSCountryCodes + ", playerNetworkTimeoutCountryCodes=" + this.playerNetworkTimeoutCountryCodes + ", playerNetworkTimeout=" + this.playerNetworkTimeout + ", playerHeadersNotifyEnable=" + this.playerHeadersNotifyEnable + ", apiErrorCodeReport=" + this.apiErrorCodeReport + ", customDeviceIdEnable=" + this.customDeviceIdEnable + ", immersionRefreshLayoutEnable=" + this.immersionRefreshLayoutEnable + ", shortsRefreshLayoutEnable=" + this.shortsRefreshLayoutEnable + ", remoteConfigAwaitFirebaseEnable=" + this.remoteConfigAwaitFirebaseEnable + ", catonDowngradeEnable=" + this.catonDowngradeEnable + ", fixedBannerHeightEnable=" + this.fixedBannerHeightEnable + ", controlAfInit=" + this.controlAfInit + ", unregisterOnPageChangeCallbackOnPause=" + this.unregisterOnPageChangeCallbackOnPause + ", fixedReportEvent=" + this.fixedReportEvent + ", fixedReportInterval=" + this.fixedReportInterval + ", useNewLogUpload=" + this.useNewLogUpload + ", pageInfoReportEnable=" + this.pageInfoReportEnable + ", pageInfoReportNum=" + this.pageInfoReportNum + ", pageInfoCollectMaxNum=" + this.pageInfoCollectMaxNum + ", webviewBackgroundTransparentEnable=" + this.webviewBackgroundTransparentEnable + ", discoverPreloadEnable=" + this.discoverPreloadEnable + ", shortsPreloadEnable=" + this.shortsPreloadEnable + ", newEcpmFormatEnable=" + this.newEcpmFormatEnable + ", checkInitializerOnForeground=" + this.checkInitializerOnForeground + ", onlyOneImmersionActivity=" + this.onlyOneImmersionActivity + ", interceptChildThreadCrashes=" + this.interceptChildThreadCrashes + ", interceptMainThreadCrashes=" + this.interceptMainThreadCrashes + ", interceptCrashesType=" + this.interceptCrashesType + ')';
    }

    public FeatureController(boolean z10, boolean z11, boolean z12, boolean z13, int i10, int i11, int i12, int i13, boolean z14, boolean z15, boolean z16, @NotNull String httpDNSQueryIpUrl, long j10, boolean z17, int i14, @NotNull String httpDNSErrorCodes, @NotNull String httpDNSCountryCodes, @NotNull String playerNetworkTimeoutCountryCodes, int i15, boolean z18, @NotNull String apiErrorCodeReport, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, boolean z24, boolean z25, boolean z26, boolean z27, int i16, boolean z28, boolean z29, int i17, int i18, boolean z30, boolean z31, boolean z32, boolean z33, boolean z34, boolean z35, boolean z36, boolean z37, @NotNull String interceptCrashesType) {
        Intrinsics.checkNotNullParameter(httpDNSQueryIpUrl, "httpDNSQueryIpUrl");
        Intrinsics.checkNotNullParameter(httpDNSErrorCodes, "httpDNSErrorCodes");
        Intrinsics.checkNotNullParameter(httpDNSCountryCodes, "httpDNSCountryCodes");
        Intrinsics.checkNotNullParameter(playerNetworkTimeoutCountryCodes, "playerNetworkTimeoutCountryCodes");
        Intrinsics.checkNotNullParameter(apiErrorCodeReport, "apiErrorCodeReport");
        Intrinsics.checkNotNullParameter(interceptCrashesType, "interceptCrashesType");
        this.ratingEnable = z10;
        this.dynamicDomainEnable = z11;
        this.shortsProgressBarOptimizationEnable = z12;
        this.cdnEnable = z13;
        this.maxCampaignInfoParseCount = i10;
        this.uploadEventInterval = i11;
        this.uploadEventMaxSize = i12;
        this.customPushQueryInterval = i13;
        this.lockedEpisodeDisableSlideUp = z14;
        this.httpDNSApiEnable = z15;
        this.httpDNSPlayerEnable = z16;
        this.httpDNSQueryIpUrl = httpDNSQueryIpUrl;
        this.httpDNSIpExpirationTime = j10;
        this.httpDNSLookupAgainIfLocalFailed = z17;
        this.httpDNSTimeOut = i14;
        this.httpDNSErrorCodes = httpDNSErrorCodes;
        this.httpDNSCountryCodes = httpDNSCountryCodes;
        this.playerNetworkTimeoutCountryCodes = playerNetworkTimeoutCountryCodes;
        this.playerNetworkTimeout = i15;
        this.playerHeadersNotifyEnable = z18;
        this.apiErrorCodeReport = apiErrorCodeReport;
        this.customDeviceIdEnable = z19;
        this.immersionRefreshLayoutEnable = z20;
        this.shortsRefreshLayoutEnable = z21;
        this.remoteConfigAwaitFirebaseEnable = z22;
        this.catonDowngradeEnable = z23;
        this.fixedBannerHeightEnable = z24;
        this.controlAfInit = z25;
        this.unregisterOnPageChangeCallbackOnPause = z26;
        this.fixedReportEvent = z27;
        this.fixedReportInterval = i16;
        this.useNewLogUpload = z28;
        this.pageInfoReportEnable = z29;
        this.pageInfoReportNum = i17;
        this.pageInfoCollectMaxNum = i18;
        this.webviewBackgroundTransparentEnable = z30;
        this.discoverPreloadEnable = z31;
        this.shortsPreloadEnable = z32;
        this.newEcpmFormatEnable = z33;
        this.checkInitializerOnForeground = z34;
        this.onlyOneImmersionActivity = z35;
        this.interceptChildThreadCrashes = z36;
        this.interceptMainThreadCrashes = z37;
        this.interceptCrashesType = interceptCrashesType;
    }

    public /* synthetic */ FeatureController(boolean z10, boolean z11, boolean z12, boolean z13, int i10, int i11, int i12, int i13, boolean z14, boolean z15, boolean z16, String str, long j10, boolean z17, int i14, String str2, String str3, String str4, int i15, boolean z18, String str5, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, boolean z24, boolean z25, boolean z26, boolean z27, int i16, boolean z28, boolean z29, int i17, int i18, boolean z30, boolean z31, boolean z32, boolean z33, boolean z34, boolean z35, boolean z36, boolean z37, String str6, int i19, int i20, DefaultConstructorMarker defaultConstructorMarker) {
        this((i19 & 1) != 0 ? false : z10, (i19 & 2) != 0 ? true : z11, (i19 & 4) != 0 ? true : z12, (i19 & 8) != 0 ? false : z13, (i19 & 16) != 0 ? 24 : i10, (i19 & 32) != 0 ? 10 : i11, (i19 & 64) != 0 ? 50 : i12, (i19 & 128) != 0 ? 300 : i13, (i19 & 256) != 0 ? true : z14, (i19 & 512) != 0 ? false : z15, (i19 & 1024) != 0 ? false : z16, (i19 & 2048) != 0 ? "[https://103.150.251.71]" : str, (i19 & 4096) != 0 ? 1800L : j10, (i19 & 8192) != 0 ? false : z17, (i19 & 16384) != 0 ? 15 : i14, (i19 & 32768) != 0 ? "[-499897,-9999]" : str2, (i19 & 65536) != 0 ? HttpUrl.PATH_SEGMENT_ENCODE_SET_URI : str3, (i19 & 131072) != 0 ? "[ZA,KE,JM,GB,IN,AU,MY]" : str4, (i19 & 262144) != 0 ? 10 : i15, (i19 & 524288) != 0 ? false : z18, (i19 & 1048576) != 0 ? "[400,500]" : str5, (i19 & 2097152) != 0 ? true : z19, (i19 & 4194304) != 0 ? true : z20, (i19 & 8388608) != 0 ? true : z21, (i19 & 16777216) != 0 ? true : z22, (i19 & 33554432) != 0 ? true : z23, (i19 & 67108864) != 0 ? false : z24, (i19 & 134217728) != 0 ? false : z25, (i19 & 268435456) != 0 ? true : z26, (i19 & 536870912) != 0 ? false : z27, (i19 & 1073741824) != 0 ? 60 : i16, (i19 & Integer.MIN_VALUE) != 0 ? false : z28, (i20 & 1) != 0 ? false : z29, (i20 & 2) != 0 ? 20 : i17, (i20 & 4) == 0 ? i18 : 20, (i20 & 8) != 0 ? true : z30, (i20 & 16) != 0 ? false : z31, (i20 & 32) != 0 ? false : z32, (i20 & 64) != 0 ? true : z33, (i20 & 128) != 0 ? true : z34, (i20 & 256) != 0 ? true : z35, (i20 & 512) != 0 ? true : z36, (i20 & 1024) != 0 ? false : z37, (i20 & 2048) != 0 ? "[NullPointerException,UnsatisfiedLinkError,android.app.RemoteServiceException,Bad notification,CursorWindowAllocationException,OverlappingFileLockException,IllegalArgumentException,SQLiteCantOpenDatabaseException,NotFoundException,DeadSystemException,SQLiteDiskIOException,BadTokenException,FileNotFoundException,SQLiteFullException,RSRuntimeException,ConcurrentModificationException]" : str6);
    }
}
