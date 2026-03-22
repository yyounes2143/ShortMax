package com.vungle.ads.internal.presenter;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.ContextThemeWrapper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.LinkError;
import com.vungle.ads.PrivacyUrlError;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.TpatError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.network.TpatRequest;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.omsdk.NativeOMTracker;
import com.vungle.ads.internal.omsdk.OMInjector;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.privacy.PrivacyConsent;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.ui.PresenterAdOpenCallback;
import com.vungle.ads.internal.util.ExternalRouter;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import java.util.List;
import java.util.Map;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NativeAdPresenter.kt */
@Metadata
/* loaded from: classes7.dex */
public final class NativeAdPresenter {
    @NotNull
    public static final String DOWNLOAD = "download";
    @NotNull
    public static final String OPEN_PRIVACY = "openPrivacy";
    @NotNull
    private static final String TAG = "NativeAdPresenter";
    @NotNull
    public static final String TPAT = "tpat";
    @NotNull
    public static final String VIDEO_VIEWED = "videoViewed";
    @Nullable
    private Long adStartTime;
    private boolean adViewed;
    @Nullable
    private final AdPayload advertisement;
    @Nullable
    private AdEventListener bus;
    @NotNull
    private final Context context;
    @Nullable
    private Dialog currentDialog;
    @NotNull
    private final NativePresenterDelegate delegate;
    @NotNull
    private final i logEntry$delegate;
    @Nullable
    private NativeOMTracker omTracker;
    @NotNull
    private final Platform platform;
    @NotNull
    private final i tpatSender$delegate;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Map<String, Sdk.SDKMetric.SDKMetricType> eventMap = p0.m(k.a(Constants.CHECKPOINT_0, Sdk.SDKMetric.SDKMetricType.AD_START_EVENT), k.a(Constants.CLICK_URL, Sdk.SDKMetric.SDKMetricType.AD_CLICK_EVENT));

    /* compiled from: NativeAdPresenter.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Map<String, Sdk.SDKMetric.SDKMetricType> getEventMap$vungle_ads_release() {
            return NativeAdPresenter.eventMap;
        }

        private Companion() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getEventMap$vungle_ads_release$annotations() {
        }
    }

    public NativeAdPresenter(@NotNull final Context context, @NotNull NativePresenterDelegate delegate, @Nullable AdPayload adPayload, @NotNull Platform platform) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(platform, "platform");
        this.context = context;
        this.delegate = delegate;
        this.advertisement = adPayload;
        this.platform = platform;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        this.tpatSender$delegate = kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<TpatSender>() { // from class: com.vungle.ads.internal.presenter.NativeAdPresenter$special$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.TpatSender, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TpatSender invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(TpatSender.class);
            }
        });
        this.logEntry$delegate = kotlin.c.b(new Function0<LogEntry>() { // from class: com.vungle.ads.internal.presenter.NativeAdPresenter$logEntry$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final LogEntry invoke() {
                AdPayload adPayload2;
                adPayload2 = NativeAdPresenter.this.advertisement;
                if (adPayload2 != null) {
                    return adPayload2.getLogEntry$vungle_ads_release();
                }
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LogEntry getLogEntry() {
        return (LogEntry) this.logEntry$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TpatSender getTpatSender() {
        return (TpatSender) this.tpatSender$delegate.getValue();
    }

    /* renamed from: initOMTracker$lambda-10  reason: not valid java name */
    private static final OMInjector m4825initOMTracker$lambda10(i<OMInjector> iVar) {
        return iVar.getValue();
    }

    private final boolean needShowGdpr() {
        if (ConfigManager.INSTANCE.getGDPRIsCountryDataProtected() && Intrinsics.areEqual("unknown", PrivacyManager.INSTANCE.getConsentStatus())) {
            return true;
        }
        return false;
    }

    private final void onDownload(String str) {
        List<String> list;
        AdEventListener adEventListener;
        AdPayload.AdUnit adUnit;
        AdPayload adPayload = this.advertisement;
        final String str2 = null;
        if (adPayload != null) {
            list = AdPayload.getTpatUrls$default(adPayload, Constants.CLICK_URL, null, null, 6, null);
        } else {
            list = null;
        }
        List list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            for (String str3 : list) {
                TpatSender.sendTpat$default(getTpatSender(), new TpatRequest.Builder(str3).tpatKey(Constants.CLICK_URL).withLogEntry(getLogEntry()).build(), false, 2, null);
            }
        } else {
            new TpatError(Sdk.SDKError.Reason.EMPTY_TPAT_ERROR, "Empty tpat key: clickUrl").setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
        }
        if (str != null) {
            TpatSender.sendTpat$default(getTpatSender(), new TpatRequest.Builder(str).tpatKey(Constants.CTA_URL).withLogEntry(getLogEntry()).build(), false, 2, null);
        }
        AdPayload adPayload2 = this.advertisement;
        if (adPayload2 != null && (adUnit = adPayload2.adUnit()) != null) {
            str2 = adUnit.getDeeplinkUrl();
        }
        boolean launch = ExternalRouter.launch(str2, str, this.context, getLogEntry(), new PresenterAdOpenCallback() { // from class: com.vungle.ads.internal.presenter.NativeAdPresenter$onDownload$launched$1
            @Override // com.vungle.ads.internal.ui.PresenterAdOpenCallback
            public void onDeeplinkClick(boolean z10) {
                AdPayload adPayload3;
                List<String> list3;
                LogEntry logEntry;
                TpatSender tpatSender;
                LogEntry logEntry2;
                if (!z10) {
                    LinkError linkError = new LinkError(Sdk.SDKError.Reason.DEEPLINK_OPEN_FAILED, "Fail to open " + str2);
                    logEntry2 = this.getLogEntry();
                    linkError.setLogEntry$vungle_ads_release(logEntry2).logErrorNoReturnValue$vungle_ads_release();
                }
                adPayload3 = this.advertisement;
                if (adPayload3 != null) {
                    list3 = AdPayload.getTpatUrls$default(adPayload3, Constants.DEEPLINK_CLICK, String.valueOf(z10), null, 4, null);
                } else {
                    list3 = null;
                }
                if (list3 != null) {
                    NativeAdPresenter nativeAdPresenter = this;
                    for (String str4 : list3) {
                        TpatRequest.Builder tpatKey = new TpatRequest.Builder(str4).tpatKey(Constants.DEEPLINK_CLICK);
                        logEntry = nativeAdPresenter.getLogEntry();
                        TpatRequest build = tpatKey.withLogEntry(logEntry).build();
                        tpatSender = nativeAdPresenter.getTpatSender();
                        TpatSender.sendTpat$default(tpatSender, build, false, 2, null);
                    }
                }
            }
        });
        AdEventListener adEventListener2 = this.bus;
        if (adEventListener2 != null) {
            adEventListener2.onNext(MRAIDPresenter.OPEN, "adClick", this.delegate.getPlacementRefId());
        }
        if (launch && (adEventListener = this.bus) != null) {
            adEventListener.onNext(MRAIDPresenter.OPEN, "adLeftApplication", this.delegate.getPlacementRefId());
        }
    }

    private final void onPrivacy(String str) {
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.PRIVACY_URL_OPENED), getLogEntry(), (String) null, 4, (Object) null);
        if (str != null) {
            if (!FileUtility.INSTANCE.isValidUrl(str)) {
                new PrivacyUrlError(str).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
            } else if (ExternalRouter.launch$default(null, str, this.context, getLogEntry(), null, 16, null)) {
                AdEventListener adEventListener = this.bus;
                if (adEventListener != null) {
                    adEventListener.onNext(MRAIDPresenter.OPEN, "adLeftApplication", this.delegate.getPlacementRefId());
                }
            } else {
                new PrivacyUrlError(str).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
            }
        }
    }

    public static /* synthetic */ void processCommand$default(NativeAdPresenter nativeAdPresenter, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        nativeAdPresenter.processCommand(str, str2);
    }

    private final void showGdpr() {
        PrivacyManager.INSTANCE.updateGdprConsent("opted_out_by_timeout", "vungle_modal", null);
        if (!(this.context instanceof Activity)) {
            Logger.Companion.w(TAG, "We can not show GDPR dialog with application context.");
            return;
        }
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.vungle.ads.internal.presenter.f
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                NativeAdPresenter.m4826showGdpr$lambda8(NativeAdPresenter.this, dialogInterface, i10);
            }
        };
        ConfigManager configManager = ConfigManager.INSTANCE;
        String gDPRConsentTitle = configManager.getGDPRConsentTitle();
        String gDPRConsentMessage = configManager.getGDPRConsentMessage();
        String gDPRButtonAccept = configManager.getGDPRButtonAccept();
        String gDPRButtonDeny = configManager.getGDPRButtonDeny();
        Context context = this.context;
        AlertDialog.Builder builder = new AlertDialog.Builder(new ContextThemeWrapper(context, ((Activity) context).getApplicationInfo().theme));
        if (gDPRConsentTitle != null && gDPRConsentTitle.length() != 0) {
            builder.setTitle(gDPRConsentTitle);
        }
        if (gDPRConsentMessage != null && gDPRConsentMessage.length() != 0) {
            builder.setMessage(gDPRConsentMessage);
        }
        builder.setPositiveButton(gDPRButtonAccept, onClickListener);
        builder.setNegativeButton(gDPRButtonDeny, onClickListener);
        builder.setCancelable(false);
        AlertDialog create = builder.create();
        create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.vungle.ads.internal.presenter.g
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                NativeAdPresenter.m4827showGdpr$lambda9(NativeAdPresenter.this, dialogInterface);
            }
        });
        this.currentDialog = create;
        create.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showGdpr$lambda-8  reason: not valid java name */
    public static final void m4826showGdpr$lambda8(NativeAdPresenter this$0, DialogInterface dialogInterface, int i10) {
        String value;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i10 != -2) {
            if (i10 != -1) {
                value = "opted_out_by_timeout";
            } else {
                value = PrivacyConsent.OPT_IN.getValue();
            }
        } else {
            value = PrivacyConsent.OPT_OUT.getValue();
        }
        PrivacyManager.INSTANCE.updateGdprConsent(value, "vungle_modal", null);
        this$0.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showGdpr$lambda-9  reason: not valid java name */
    public static final void m4827showGdpr$lambda9(NativeAdPresenter this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.currentDialog = null;
    }

    private final void start() {
        if (needShowGdpr()) {
            showGdpr();
        }
    }

    private final void triggerEventMetricForTpat(String str) {
        Sdk.SDKMetric.SDKMetricType sDKMetricType = eventMap.get(str);
        if (sDKMetricType != null) {
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new SingleValueMetric(sDKMetricType), getLogEntry(), (String) null, 4, (Object) null);
        }
    }

    public final void detach() {
        List<String> tpatUrls;
        NativeOMTracker nativeOMTracker = this.omTracker;
        if (nativeOMTracker != null) {
            nativeOMTracker.stop();
        }
        Dialog dialog = this.currentDialog;
        if (dialog != null && dialog.isShowing()) {
            dialog.dismiss();
        }
        Long l10 = this.adStartTime;
        if (l10 != null) {
            long currentTimeMillis = System.currentTimeMillis() - l10.longValue();
            AdPayload adPayload = this.advertisement;
            if (adPayload != null && (tpatUrls = adPayload.getTpatUrls(Constants.AD_CLOSE, String.valueOf(currentTimeMillis), String.valueOf(this.platform.getVolumeLevel()))) != null) {
                for (String str : tpatUrls) {
                    TpatSender.sendTpat$default(getTpatSender(), new TpatRequest.Builder(str).tpatKey(Constants.AD_CLOSE).withLogEntry(getLogEntry()).build(), false, 2, null);
                }
            }
        }
        AdEventListener adEventListener = this.bus;
        if (adEventListener != null) {
            adEventListener.onNext("end", null, this.delegate.getPlacementRefId());
        }
    }

    public final void initOMTracker(@NotNull String omSdkData) {
        boolean z10;
        Intrinsics.checkNotNullParameter(omSdkData, "omSdkData");
        AdPayload adPayload = this.advertisement;
        if (adPayload != null) {
            z10 = adPayload.omEnabled();
        } else {
            z10 = false;
        }
        if (omSdkData.length() > 0 && z10) {
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            final Context context = this.context;
            i a10 = kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<OMInjector>() { // from class: com.vungle.ads.internal.presenter.NativeAdPresenter$initOMTracker$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.omsdk.OMInjector] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final OMInjector invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(OMInjector.class);
                }
            });
            m4825initOMTracker$lambda10(a10).init();
            String oMSDKJS$vungle_ads_release = m4825initOMTracker$lambda10(a10).getOMSDKJS$vungle_ads_release();
            if (oMSDKJS$vungle_ads_release != null) {
                this.omTracker = new NativeOMTracker(omSdkData, oMSDKJS$vungle_ads_release);
            }
        }
    }

    public final void onImpression() {
        NativeOMTracker nativeOMTracker = this.omTracker;
        if (nativeOMTracker != null) {
            nativeOMTracker.impressionOccurred();
        }
    }

    public final void prepare() {
        start();
        AdEventListener adEventListener = this.bus;
        if (adEventListener != null) {
            adEventListener.onNext("start", null, this.delegate.getPlacementRefId());
        }
        this.adStartTime = Long.valueOf(System.currentTimeMillis());
    }

    public final void processCommand(@NotNull String action, @Nullable String str) {
        List<String> tpatUrls$default;
        Intrinsics.checkNotNullParameter(action, "action");
        switch (action.hashCode()) {
            case -511324706:
                if (action.equals("openPrivacy")) {
                    onPrivacy(str);
                    return;
                }
                break;
            case 3566511:
                if (action.equals("tpat")) {
                    if (str != null && str.length() != 0) {
                        triggerEventMetricForTpat(str);
                        if (Intrinsics.areEqual(str, Constants.CHECKPOINT_0)) {
                            AdPayload adPayload = this.advertisement;
                            if (adPayload != null) {
                                tpatUrls$default = adPayload.getTpatUrls(str, this.platform.getCarrierName(), String.valueOf(this.platform.getVolumeLevel()));
                            }
                            tpatUrls$default = null;
                        } else {
                            AdPayload adPayload2 = this.advertisement;
                            if (adPayload2 != null) {
                                tpatUrls$default = AdPayload.getTpatUrls$default(adPayload2, str, null, null, 6, null);
                            }
                            tpatUrls$default = null;
                        }
                        List<String> list = tpatUrls$default;
                        if (list != null && !list.isEmpty()) {
                            for (String str2 : tpatUrls$default) {
                                TpatSender.sendTpat$default(getTpatSender(), new TpatRequest.Builder(str2).tpatKey(str).withLogEntry(getLogEntry()).build(), false, 2, null);
                            }
                            return;
                        }
                        new TpatError(Sdk.SDKError.Reason.INVALID_TPAT_KEY, "Empty urls for tpat: " + str).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                        return;
                    }
                    new TpatError(Sdk.SDKError.Reason.EMPTY_TPAT_ERROR, "Empty tpat key").setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                    return;
                }
                break;
            case 1118284383:
                if (action.equals("videoViewed")) {
                    AdEventListener adEventListener = this.bus;
                    if (adEventListener != null && !this.adViewed) {
                        this.adViewed = true;
                        if (adEventListener != null) {
                            adEventListener.onNext("adViewed", null, this.delegate.getPlacementRefId());
                        }
                        List<String> impressionUrls = this.delegate.getImpressionUrls();
                        if (impressionUrls != null) {
                            for (String str3 : impressionUrls) {
                                TpatSender.sendTpat$default(getTpatSender(), new TpatRequest.Builder(str3).tpatKey("impression").withLogEntry(getLogEntry()).build(), false, 2, null);
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                break;
            case 1427818632:
                if (action.equals(DOWNLOAD)) {
                    onDownload(str);
                    return;
                }
                break;
        }
        Logger.Companion.w(TAG, "Unknown native ad action: " + action);
    }

    public final void setEventListener(@Nullable AdEventListener adEventListener) {
        this.bus = adEventListener;
    }

    public final void startTracking(@NotNull View rootView) {
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        NativeOMTracker nativeOMTracker = this.omTracker;
        if (nativeOMTracker != null) {
            nativeOMTracker.start(rootView);
        }
    }
}
