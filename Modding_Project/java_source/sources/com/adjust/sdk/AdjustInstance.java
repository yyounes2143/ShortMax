package com.adjust.sdk;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import com.adjust.sdk.scheduler.AsyncTaskExecutor;
import com.adjust.sdk.scheduler.SingleThreadCachedScheduler;
import com.inmobi.sdk.InMobiSdk;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class AdjustInstance {
    private IActivityHandler activityHandler;
    private String basePath;
    private OnDeeplinkResolvedListener cachedDeeplinkResolutionCallback;
    private String gdprPath;
    private String purchaseVerificationPath;
    private String pushToken;
    private String subscriptionPath;
    private Boolean startEnabled = null;
    private boolean startOffline = false;
    private PreLaunchActions preLaunchActions = new PreLaunchActions();
    private final ArrayList<OnAdidReadListener> cachedAdidReadCallbacks = new ArrayList<>();
    private final ArrayList<AdjustTimeoutCallback> cachedAdidReadTimeoutCallbacks = new ArrayList<>();
    private final ArrayList<OnAttributionReadListener> cachedAttributionReadCallbacks = new ArrayList<>();
    private final ArrayList<AdjustTimeoutCallback> cachedAttributionReadTimeoutCallbacks = new ArrayList<>();

    /* loaded from: classes2.dex */
    public static class PreLaunchActions {
        public List<IRunActivityHandler> preLaunchActionsArray = new ArrayList();
    }

    /* loaded from: classes2.dex */
    public class a extends AsyncTaskExecutor<Void, String> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ OnSdkVersionReadListener f4196a;

        public a(OnSdkVersionReadListener onSdkVersionReadListener) {
            this.f4196a = onSdkVersionReadListener;
        }

        @Override // com.adjust.sdk.scheduler.AsyncTaskExecutor
        public final String doInBackground(Void[] voidArr) {
            return Util.getSdkVersion();
        }

        @Override // com.adjust.sdk.scheduler.AsyncTaskExecutor
        public final void onPostExecute(String str) {
            this.f4196a.onSdkVersionRead(str);
        }
    }

    /* loaded from: classes2.dex */
    public class b implements InstallReferrerReadListener {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ OnGooglePlayInstallReferrerReadListener f4197a;

        public b(OnGooglePlayInstallReferrerReadListener onGooglePlayInstallReferrerReadListener) {
            this.f4197a = onGooglePlayInstallReferrerReadListener;
        }

        @Override // com.adjust.sdk.InstallReferrerReadListener
        public final void onFail(String str) {
            this.f4197a.onFail(str);
        }

        @Override // com.adjust.sdk.InstallReferrerReadListener
        public final void onInstallReferrerRead(ReferrerDetails referrerDetails, String str) {
            this.f4197a.onInstallReferrerRead(new GooglePlayInstallReferrerDetails(referrerDetails));
        }
    }

    /* loaded from: classes2.dex */
    public class c extends AsyncTaskExecutor<Void, Uri> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f4198a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ OnLastDeeplinkReadListener f4199b;

        public c(Context context, OnLastDeeplinkReadListener onLastDeeplinkReadListener) {
            this.f4198a = context;
            this.f4199b = onLastDeeplinkReadListener;
        }

        @Override // com.adjust.sdk.scheduler.AsyncTaskExecutor
        public final Uri doInBackground(Void[] voidArr) {
            try {
                return Uri.parse(AdjustInstance.this.getCachedDeeplink(this.f4198a));
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // com.adjust.sdk.scheduler.AsyncTaskExecutor
        public final void onPostExecute(Uri uri) {
            this.f4199b.onLastDeeplinkRead(uri);
        }
    }

    /* loaded from: classes2.dex */
    public class d extends AsyncTaskExecutor<Context, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ OnIsEnabledListener f4201a;

        public d(OnIsEnabledListener onIsEnabledListener) {
            this.f4201a = onIsEnabledListener;
        }

        @Override // com.adjust.sdk.scheduler.AsyncTaskExecutor
        public final Boolean doInBackground(Context[] contextArr) {
            return Boolean.valueOf(Util.isEnabledFromActivityStateFile(contextArr[0]));
        }

        @Override // com.adjust.sdk.scheduler.AsyncTaskExecutor
        public final void onPostExecute(Boolean bool) {
            this.f4201a.onIsEnabledRead(bool.booleanValue());
        }
    }

    /* loaded from: classes2.dex */
    public class e implements IRunActivityHandler {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f4202a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f4203b;

        public e(String str, String str2) {
            this.f4202a = str;
            this.f4203b = str2;
        }

        @Override // com.adjust.sdk.IRunActivityHandler
        public final void run(ActivityHandler activityHandler) {
            activityHandler.addGlobalCallbackParameterI(this.f4202a, this.f4203b);
        }
    }

    /* loaded from: classes2.dex */
    public class f implements IRunActivityHandler {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f4204a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f4205b;

        public f(String str, String str2) {
            this.f4204a = str;
            this.f4205b = str2;
        }

        @Override // com.adjust.sdk.IRunActivityHandler
        public final void run(ActivityHandler activityHandler) {
            activityHandler.addGlobalPartnerParameterI(this.f4204a, this.f4205b);
        }
    }

    /* loaded from: classes2.dex */
    public class g implements IRunActivityHandler {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f4206a;

        public g(String str) {
            this.f4206a = str;
        }

        @Override // com.adjust.sdk.IRunActivityHandler
        public final void run(ActivityHandler activityHandler) {
            activityHandler.removeGlobalCallbackParameterI(this.f4206a);
        }
    }

    /* loaded from: classes2.dex */
    public class h implements IRunActivityHandler {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f4207a;

        public h(String str) {
            this.f4207a = str;
        }

        @Override // com.adjust.sdk.IRunActivityHandler
        public final void run(ActivityHandler activityHandler) {
            activityHandler.removeGlobalPartnerParameterI(this.f4207a);
        }
    }

    /* loaded from: classes2.dex */
    public class i implements IRunActivityHandler {
        @Override // com.adjust.sdk.IRunActivityHandler
        public final void run(ActivityHandler activityHandler) {
            activityHandler.removeGlobalCallbackParametersI();
        }
    }

    /* loaded from: classes2.dex */
    public class j implements IRunActivityHandler {
        @Override // com.adjust.sdk.IRunActivityHandler
        public final void run(ActivityHandler activityHandler) {
            activityHandler.removeGlobalPartnerParametersI();
        }
    }

    /* loaded from: classes2.dex */
    public class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f4208a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ OnAdidReadListener f4209b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ long f4210c;

        public k(Context context, OnAdidReadListener onAdidReadListener, long j10) {
            this.f4208a = context;
            this.f4209b = onAdidReadListener;
            this.f4210c = j10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String adidFromActivityStateFile = Util.getAdidFromActivityStateFile(this.f4208a);
            if (adidFromActivityStateFile != null) {
                new Handler(this.f4208a.getMainLooper()).post(new g1(this, adidFromActivityStateFile));
            } else {
                ActivityHandler.queueGetAdidWithTimeout(this.f4210c, this.f4209b, AdjustInstance.this.cachedAdidReadTimeoutCallbacks, this.f4208a);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f4212a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ OnAttributionReadListener f4213b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ long f4214c;

        public l(Context context, OnAttributionReadListener onAttributionReadListener, long j10) {
            this.f4212a = context;
            this.f4213b = onAttributionReadListener;
            this.f4214c = j10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AdjustAttribution attributionFromAttributionFile = Util.getAttributionFromAttributionFile(this.f4212a);
            if (attributionFromAttributionFile != null) {
                new Handler(this.f4212a.getMainLooper()).post(new h1(this, attributionFromAttributionFile));
            } else {
                ActivityHandler.queueGetAttributionWithTimeout(this.f4214c, this.f4213b, AdjustInstance.this.cachedAttributionReadTimeoutCallbacks, this.f4212a);
            }
        }
    }

    private void cacheDeeplink(Uri uri, Context context) {
        SharedPreferencesManager.getDefaultInstance(context).cacheDeeplink(uri);
    }

    private boolean checkActivityHandler(String str) {
        return checkActivityHandler(str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCachedDeeplink(Context context) {
        return SharedPreferencesManager.getDefaultInstance(context).getCachedDeeplink();
    }

    private boolean isInstanceEnabled() {
        Boolean bool = this.startEnabled;
        if (bool != null && !bool.booleanValue()) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setSendingReferrersAsNotSent$2(Context context) {
        SharedPreferencesManager.getDefaultInstance(context).setSendingReferrersAsNotSent();
    }

    private void saveDeeplink(AdjustDeeplink adjustDeeplink, long j10, Context context) {
        SharedPreferencesManager.getDefaultInstance(context).saveDeeplink(adjustDeeplink, j10);
    }

    private void saveGdprForgetMe(Context context) {
        SharedPreferencesManager.getDefaultInstance(context).setGdprForgetMe();
    }

    private void savePreinstallReferrer(String str, Context context) {
        SharedPreferencesManager.getDefaultInstance(context).savePreinstallReferrer(str);
    }

    private void savePushToken(String str, Context context) {
        SharedPreferencesManager.getDefaultInstance(context).savePushToken(str);
    }

    private void saveRawReferrer(String str, long j10, Context context) {
        SharedPreferencesManager.getDefaultInstance(context).saveRawReferrer(str, j10);
    }

    private void setSendingReferrersAsNotSent(final Context context) {
        new SingleThreadCachedScheduler("AdjustInstance").submit(new Runnable() { // from class: com.adjust.sdk.e1
            @Override // java.lang.Runnable
            public final void run() {
                AdjustInstance.lambda$setSendingReferrersAsNotSent$2(context);
            }
        });
    }

    public void addGlobalCallbackParameter(String str, String str2) {
        if (checkActivityHandler("adding global callback parameter", true)) {
            this.activityHandler.addGlobalCallbackParameter(str, str2);
        } else {
            this.preLaunchActions.preLaunchActionsArray.add(new e(str, str2));
        }
    }

    public void addGlobalPartnerParameter(String str, String str2) {
        if (checkActivityHandler("adding global partner parameter", true)) {
            this.activityHandler.addGlobalPartnerParameter(str, str2);
        } else {
            this.preLaunchActions.preLaunchActionsArray.add(new f(str, str2));
        }
    }

    public void disable() {
        this.startEnabled = Boolean.FALSE;
        if (checkActivityHandler(false, "enabled mode", "disabled mode")) {
            this.activityHandler.setEnabled(false);
        }
    }

    public void disableCoppaComplianceInDelay() {
        if (!checkActivityHandler("disableCoppaComplianceInDelay")) {
            return;
        }
        this.activityHandler.setCoppaComplianceInDelay(false);
    }

    public void disablePlayStoreKidsComplianceInDelay() {
        if (!checkActivityHandler("disablePlayStoreKidsComplianceInDelay")) {
            return;
        }
        this.activityHandler.setPlayStoreKidsComplianceInDelay(false);
    }

    public void enable() {
        this.startEnabled = Boolean.TRUE;
        if (checkActivityHandler(true, "enabled mode", "disabled mode")) {
            this.activityHandler.setEnabled(true);
        }
    }

    public void enableCoppaComplianceInDelay() {
        if (!checkActivityHandler("enableCoppaComplianceInDelay")) {
            return;
        }
        this.activityHandler.setCoppaComplianceInDelay(true);
    }

    public void enablePlayStoreKidsComplianceInDelay() {
        if (!checkActivityHandler("enablePlayStoreKidsComplianceInDelay")) {
            return;
        }
        this.activityHandler.setPlayStoreKidsComplianceInDelay(true);
    }

    public void endFirstSessionDelay() {
        if (!checkActivityHandler("endFirstSessionDelay")) {
            return;
        }
        this.activityHandler.endFirstSessionDelay();
    }

    public void gdprForgetMe(Context context) {
        saveGdprForgetMe(context);
        if (checkActivityHandler(InMobiSdk.IM_GDPR_CONSENT_GDPR_APPLIES, true) && this.activityHandler.isEnabled()) {
            this.activityHandler.gdprForgetMe();
        }
    }

    public void getAdid(OnAdidReadListener onAdidReadListener) {
        if (!checkActivityHandler("getAdid")) {
            this.cachedAdidReadCallbacks.add(onAdidReadListener);
        } else {
            this.activityHandler.getAdid(onAdidReadListener);
        }
    }

    public void getAdidWithTimeout(Context context, long j10, OnAdidReadListener onAdidReadListener) {
        if (!checkActivityHandler("getAdidWithTimeout")) {
            new SingleThreadCachedScheduler("getAdidWithTimeout").submit(new k(context, onAdidReadListener, j10));
        } else {
            this.activityHandler.getAdidWithTimeout(j10, onAdidReadListener);
        }
    }

    public void getAmazonAdId(Context context, OnAmazonAdIdReadListener onAmazonAdIdReadListener) {
        DeviceInfo.getFireAdvertisingIdBypassConditions(context.getContentResolver(), onAmazonAdIdReadListener);
    }

    public void getAttribution(OnAttributionReadListener onAttributionReadListener) {
        if (!checkActivityHandler("getAttribution")) {
            this.cachedAttributionReadCallbacks.add(onAttributionReadListener);
        } else {
            this.activityHandler.getAttribution(onAttributionReadListener);
        }
    }

    public void getAttributionWithTimeout(Context context, long j10, OnAttributionReadListener onAttributionReadListener) {
        if (!checkActivityHandler("getAttributionWithTimeout")) {
            new SingleThreadCachedScheduler("getAttributionWithTimeout").submit(new l(context, onAttributionReadListener, j10));
        } else {
            this.activityHandler.getAttributionWithTimeout(j10, onAttributionReadListener);
        }
    }

    public void getGooglePlayInstallReferrer(Context context, OnGooglePlayInstallReferrerReadListener onGooglePlayInstallReferrerReadListener) {
        new InstallReferrer(context, new b(onGooglePlayInstallReferrerReadListener)).startConnection();
    }

    public void getLastDeeplink(Context context, OnLastDeeplinkReadListener onLastDeeplinkReadListener) {
        new c(context, onLastDeeplinkReadListener).execute(new Void[0]);
    }

    public void getSdkVersion(OnSdkVersionReadListener onSdkVersionReadListener) {
        new a(onSdkVersionReadListener).execute(new Void[0]);
    }

    public void initSdk(AdjustConfig adjustConfig) {
        if (!AdjustSigner.isPresent()) {
            AdjustFactory.getLogger().error("Missing signature library, SDK can't be initialised", new Object[0]);
        } else if (adjustConfig == null) {
            AdjustFactory.getLogger().error("AdjustConfig missing", new Object[0]);
        } else if (!adjustConfig.isValid()) {
            AdjustFactory.getLogger().error("AdjustConfig not initialized correctly", new Object[0]);
        } else if (this.activityHandler != null) {
            AdjustFactory.getLogger().error("Adjust already initialized", new Object[0]);
        } else {
            adjustConfig.preLaunchActions = this.preLaunchActions;
            adjustConfig.pushToken = this.pushToken;
            adjustConfig.startEnabled = this.startEnabled;
            adjustConfig.startOffline = this.startOffline;
            adjustConfig.basePath = this.basePath;
            adjustConfig.gdprPath = this.gdprPath;
            adjustConfig.subscriptionPath = this.subscriptionPath;
            adjustConfig.purchaseVerificationPath = this.purchaseVerificationPath;
            adjustConfig.cachedDeeplinkResolutionCallback = this.cachedDeeplinkResolutionCallback;
            adjustConfig.cachedAdidReadCallbacks = this.cachedAdidReadCallbacks;
            adjustConfig.cachedAdidReadTimeoutCallbacks = this.cachedAdidReadTimeoutCallbacks;
            adjustConfig.cachedAttributionReadCallbacks = this.cachedAttributionReadCallbacks;
            adjustConfig.cachedAttributionReadTimeoutCallbacks = this.cachedAttributionReadTimeoutCallbacks;
            this.activityHandler = AdjustFactory.getActivityHandler(adjustConfig);
            setSendingReferrersAsNotSent(adjustConfig.context);
        }
    }

    public void isEnabled(Context context, OnIsEnabledListener onIsEnabledListener) {
        if (!checkActivityHandler("isEnabled")) {
            new d(onIsEnabledListener).execute(context);
        } else {
            this.activityHandler.isEnabled(onIsEnabledListener);
        }
    }

    public void onPause() {
        if (!checkActivityHandler("onPause")) {
            return;
        }
        this.activityHandler.onPause();
    }

    public void onResume() {
        if (!checkActivityHandler("onResume")) {
            return;
        }
        this.activityHandler.onResume();
    }

    public void processAndResolveDeeplink(AdjustDeeplink adjustDeeplink, Context context, OnDeeplinkResolvedListener onDeeplinkResolvedListener) {
        if (adjustDeeplink != null && adjustDeeplink.isValid()) {
            if (onDeeplinkResolvedListener == null) {
                processDeeplink(adjustDeeplink, context);
                return;
            }
            cacheDeeplink(adjustDeeplink.url, context);
            long currentTimeMillis = System.currentTimeMillis();
            if (!checkActivityHandler("processAndResolveDeeplink", true)) {
                saveDeeplink(adjustDeeplink, currentTimeMillis, context);
                this.cachedDeeplinkResolutionCallback = onDeeplinkResolvedListener;
                return;
            }
            this.activityHandler.processAndResolveDeeplink(adjustDeeplink, currentTimeMillis, onDeeplinkResolvedListener);
            return;
        }
        AdjustFactory.getLogger().warn("Skipping deeplink processing (null or empty)", new Object[0]);
    }

    public void processDeeplink(AdjustDeeplink adjustDeeplink, Context context) {
        if (adjustDeeplink != null && adjustDeeplink.isValid()) {
            cacheDeeplink(adjustDeeplink.url, context);
            long currentTimeMillis = System.currentTimeMillis();
            if (!checkActivityHandler("processDeeplink", true)) {
                saveDeeplink(adjustDeeplink, currentTimeMillis, context);
                return;
            } else {
                this.activityHandler.processDeeplink(adjustDeeplink, currentTimeMillis);
                return;
            }
        }
        AdjustFactory.getLogger().warn("Skipping deeplink processing (null or empty)", new Object[0]);
    }

    public void removeGlobalCallbackParameter(String str) {
        if (checkActivityHandler("removing global callback parameter", true)) {
            this.activityHandler.removeGlobalCallbackParameter(str);
        } else {
            this.preLaunchActions.preLaunchActionsArray.add(new g(str));
        }
    }

    public void removeGlobalCallbackParameters() {
        if (checkActivityHandler("resetting global callback parameters", true)) {
            this.activityHandler.removeGlobalCallbackParameters();
        } else {
            this.preLaunchActions.preLaunchActionsArray.add(new i());
        }
    }

    public void removeGlobalPartnerParameter(String str) {
        if (checkActivityHandler("removing global partner parameter", true)) {
            this.activityHandler.removeGlobalPartnerParameter(str);
        } else {
            this.preLaunchActions.preLaunchActionsArray.add(new h(str));
        }
    }

    public void removeGlobalPartnerParameters() {
        if (checkActivityHandler("resetting global partner parameters", true)) {
            this.activityHandler.removeGlobalPartnerParameters();
        } else {
            this.preLaunchActions.preLaunchActionsArray.add(new j());
        }
    }

    public void sendPreinstallReferrer(String str, Context context) {
        if (str != null && str.length() != 0) {
            savePreinstallReferrer(str, context);
            if (checkActivityHandler("preinstall referrer", true) && this.activityHandler.isEnabled()) {
                this.activityHandler.sendPreinstallReferrer();
                return;
            }
            return;
        }
        AdjustFactory.getLogger().warn("Skipping SYSTEM_INSTALLER_REFERRER preinstall referrer processing (null or empty)", new Object[0]);
    }

    public void sendReferrer(String str, Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        if (str != null && str.length() != 0) {
            saveRawReferrer(str, currentTimeMillis, context);
            if (checkActivityHandler(Constants.REFERRER, true) && this.activityHandler.isEnabled()) {
                this.activityHandler.sendReftagReferrer();
                return;
            }
            return;
        }
        AdjustFactory.getLogger().warn("Skipping INSTALL_REFERRER intent referrer processing (null or empty)", new Object[0]);
    }

    public void setExternalDeviceIdInDelay(String str) {
        if (!checkActivityHandler("setExternalDeviceIdInDelay")) {
            return;
        }
        this.activityHandler.setExternalDeviceIdInDelay(str);
    }

    public void setPushToken(String str, Context context) {
        savePushToken(str, context);
        if (checkActivityHandler("push token", true) && this.activityHandler.isEnabled()) {
            this.activityHandler.setPushToken(str, true);
        }
    }

    public void setTestOptions(AdjustTestOptions adjustTestOptions) {
        String str = adjustTestOptions.basePath;
        if (str != null) {
            this.basePath = str;
        }
        String str2 = adjustTestOptions.gdprPath;
        if (str2 != null) {
            this.gdprPath = str2;
        }
        String str3 = adjustTestOptions.subscriptionPath;
        if (str3 != null) {
            this.subscriptionPath = str3;
        }
        String str4 = adjustTestOptions.purchaseVerificationPath;
        if (str4 != null) {
            this.purchaseVerificationPath = str4;
        }
        String str5 = adjustTestOptions.baseUrl;
        if (str5 != null) {
            AdjustFactory.setBaseUrl(str5);
        }
        String str6 = adjustTestOptions.gdprUrl;
        if (str6 != null) {
            AdjustFactory.setGdprUrl(str6);
        }
        String str7 = adjustTestOptions.subscriptionUrl;
        if (str7 != null) {
            AdjustFactory.setSubscriptionUrl(str7);
        }
        String str8 = adjustTestOptions.purchaseVerificationUrl;
        if (str8 != null) {
            AdjustFactory.setPurchaseVerificationUrl(str8);
        }
        Long l10 = adjustTestOptions.timerIntervalInMilliseconds;
        if (l10 != null) {
            AdjustFactory.setTimerInterval(l10.longValue());
        }
        if (adjustTestOptions.timerStartInMilliseconds != null) {
            AdjustFactory.setTimerStart(adjustTestOptions.timerIntervalInMilliseconds.longValue());
        }
        Long l11 = adjustTestOptions.sessionIntervalInMilliseconds;
        if (l11 != null) {
            AdjustFactory.setSessionInterval(l11.longValue());
        }
        Long l12 = adjustTestOptions.subsessionIntervalInMilliseconds;
        if (l12 != null) {
            AdjustFactory.setSubsessionInterval(l12.longValue());
        }
        Boolean bool = adjustTestOptions.tryInstallReferrer;
        if (bool != null) {
            AdjustFactory.setTryInstallReferrer(bool.booleanValue());
        }
        if (adjustTestOptions.noBackoffWait != null) {
            BackoffStrategy backoffStrategy = BackoffStrategy.NO_WAIT;
            AdjustFactory.setPackageHandlerBackoffStrategy(backoffStrategy);
            AdjustFactory.setSdkClickBackoffStrategy(backoffStrategy);
        }
        Boolean bool2 = adjustTestOptions.ignoreSystemLifecycleBootstrap;
        if (bool2 != null) {
            AdjustFactory.setIgnoreSystemLifecycleBootstrap(bool2.booleanValue());
        }
        Boolean bool3 = adjustTestOptions.allowUrlStrategyFallback;
        if (bool3 != null) {
            AdjustFactory.setAllowUrlStrategyFallback(bool3.booleanValue());
        }
    }

    public void switchBackToOnlineMode() {
        if (!checkActivityHandler(false, "offline mode", "online mode")) {
            this.startOffline = false;
        } else {
            this.activityHandler.setOfflineMode(false);
        }
    }

    public void switchToOfflineMode() {
        if (!checkActivityHandler(true, "offline mode", "online mode")) {
            this.startOffline = true;
        } else {
            this.activityHandler.setOfflineMode(true);
        }
    }

    public void teardown() {
        if (!checkActivityHandler("teardown")) {
            return;
        }
        this.activityHandler.teardown();
        this.activityHandler = null;
    }

    public void trackAdRevenue(AdjustAdRevenue adjustAdRevenue) {
        if (!checkActivityHandler("trackAdRevenue")) {
            return;
        }
        this.activityHandler.trackAdRevenue(adjustAdRevenue);
    }

    public void trackEvent(AdjustEvent adjustEvent) {
        if (!checkActivityHandler("trackEvent")) {
            return;
        }
        this.activityHandler.trackEvent(adjustEvent);
    }

    public void trackMeasurementConsent(final boolean z10) {
        if (!checkActivityHandler("measurement consent", true)) {
            this.preLaunchActions.preLaunchActionsArray.add(new IRunActivityHandler() { // from class: com.adjust.sdk.f1
                @Override // com.adjust.sdk.IRunActivityHandler
                public final void run(ActivityHandler activityHandler) {
                    activityHandler.tryTrackMeasurementConsentI(z10);
                }
            });
        } else {
            this.activityHandler.trackMeasurementConsent(z10);
        }
    }

    public void trackPlayStoreSubscription(AdjustPlayStoreSubscription adjustPlayStoreSubscription) {
        if (!checkActivityHandler("trackPlayStoreSubscription")) {
            return;
        }
        this.activityHandler.trackPlayStoreSubscription(adjustPlayStoreSubscription);
    }

    public void trackThirdPartySharing(final AdjustThirdPartySharing adjustThirdPartySharing) {
        if (!checkActivityHandler("third party sharing", true)) {
            this.preLaunchActions.preLaunchActionsArray.add(new IRunActivityHandler() { // from class: com.adjust.sdk.d1
                @Override // com.adjust.sdk.IRunActivityHandler
                public final void run(ActivityHandler activityHandler) {
                    activityHandler.tryTrackThirdPartySharingI(AdjustThirdPartySharing.this);
                }
            });
        } else {
            this.activityHandler.trackThirdPartySharing(adjustThirdPartySharing);
        }
    }

    public void verifyAndTrackPlayStorePurchase(AdjustEvent adjustEvent, OnPurchaseVerificationFinishedListener onPurchaseVerificationFinishedListener) {
        if (!checkActivityHandler("verifyAndTrack")) {
            if (onPurchaseVerificationFinishedListener != null) {
                onPurchaseVerificationFinishedListener.onVerificationFinished(new AdjustPurchaseVerificationResult("not_verified", 100, "SDK needs to be initialized before making purchase verification request"));
                return;
            }
            return;
        }
        this.activityHandler.verifyAndTrackPlayStorePurchase(adjustEvent, onPurchaseVerificationFinishedListener);
    }

    public void verifyPlayStorePurchase(AdjustPlayStorePurchase adjustPlayStorePurchase, OnPurchaseVerificationFinishedListener onPurchaseVerificationFinishedListener) {
        if (!checkActivityHandler("verifyPurchase")) {
            onPurchaseVerificationFinishedListener.onVerificationFinished(new AdjustPurchaseVerificationResult("not_verified", 100, "SDK needs to be initialized before making purchase verification request"));
        } else {
            this.activityHandler.verifyPlayStorePurchase(adjustPlayStorePurchase, onPurchaseVerificationFinishedListener);
        }
    }

    private boolean checkActivityHandler(boolean z10, String str, String str2) {
        if (z10) {
            return checkActivityHandler(str, true);
        }
        return checkActivityHandler(str2, true);
    }

    private boolean checkActivityHandler(String str, boolean z10) {
        if (this.activityHandler != null) {
            return true;
        }
        if (str == null) {
            AdjustFactory.getLogger().error("Adjust not initialized correctly", new Object[0]);
            return false;
        }
        if (z10) {
            AdjustFactory.getLogger().warn("Adjust not initialized, but %s saved for launch", str);
        } else {
            AdjustFactory.getLogger().warn("Adjust not initialized, can't perform %s", str);
        }
        return false;
    }
}
