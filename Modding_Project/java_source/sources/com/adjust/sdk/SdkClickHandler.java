package com.adjust.sdk;

import com.adjust.sdk.network.IActivityPackageSender;
import com.adjust.sdk.scheduler.SingleThreadCachedScheduler;
import com.adjust.sdk.scheduler.ThreadScheduler;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes2.dex */
public class SdkClickHandler implements ISdkClickHandler {
    private static final double MILLISECONDS_TO_SECONDS_DIVISOR = 1000.0d;
    private static final String SCHEDULED_EXECUTOR_SOURCE = "SdkClickHandler";
    private static final String SOURCE_INSTALL_REFERRER = "install_referrer";
    private static final String SOURCE_REFTAG = "reftag";
    private WeakReference<IActivityHandler> activityHandlerWeakRef;
    private IActivityPackageSender activityPackageSender;
    private BackoffStrategy backoffStrategy;
    private long lastPackageRetryInMilli = 0;
    private ILogger logger;
    private List<ActivityPackage> packageQueue;
    private boolean paused;
    private ThreadScheduler scheduler;

    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ActivityPackage f4259a;

        public a(ActivityPackage activityPackage) {
            this.f4259a = activityPackage;
        }

        @Override // java.lang.Runnable
        public final void run() {
            SdkClickHandler.this.packageQueue.add(this.f4259a);
            SdkClickHandler.this.logger.debug("Added sdk_click %d", Integer.valueOf(SdkClickHandler.this.packageQueue.size()));
            SdkClickHandler.this.logger.verbose("%s", this.f4259a.getExtendedString());
            SdkClickHandler.this.sendNextSdkClick();
        }
    }

    /* loaded from: classes2.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            IActivityHandler iActivityHandler = (IActivityHandler) SdkClickHandler.this.activityHandlerWeakRef.get();
            SharedPreferencesManager defaultInstance = SharedPreferencesManager.getDefaultInstance(iActivityHandler.getContext());
            try {
                JSONArray rawReferrerArray = defaultInstance.getRawReferrerArray();
                boolean z10 = false;
                for (int i10 = 0; i10 < rawReferrerArray.length(); i10++) {
                    JSONArray jSONArray = rawReferrerArray.getJSONArray(i10);
                    if (jSONArray.optInt(2, -1) == 0) {
                        String optString = jSONArray.optString(0, null);
                        z10 = true;
                        long optLong = jSONArray.optLong(1, -1L);
                        jSONArray.put(2, 1);
                        SdkClickHandler.this.sendSdkClick(PackageFactory.buildReftagSdkClickPackage(optString, optLong, iActivityHandler.getActivityState(), iActivityHandler.getAdjustConfig(), iActivityHandler.getDeviceInfo(), iActivityHandler.getGlobalParameters(), iActivityHandler.getFirstSessionDelayManager(), iActivityHandler.getInternalState()));
                    }
                }
                if (z10) {
                    defaultInstance.saveRawReferrerArray(rawReferrerArray);
                }
            } catch (JSONException e10) {
                SdkClickHandler.this.logger.error("Send saved raw referrers error (%s)", e10.getMessage());
            }
        }
    }

    /* loaded from: classes2.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f4262a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f4263b;

        public c(String str, String str2) {
            this.f4262a = str;
            this.f4263b = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            IActivityHandler iActivityHandler = (IActivityHandler) SdkClickHandler.this.activityHandlerWeakRef.get();
            if (iActivityHandler == null) {
                return;
            }
            SdkClickHandler.this.sendSdkClick(PackageFactory.buildPreinstallSdkClickPackage(this.f4262a, this.f4263b, iActivityHandler.getActivityState(), iActivityHandler.getAdjustConfig(), iActivityHandler.getDeviceInfo(), iActivityHandler.getGlobalParameters(), iActivityHandler.getFirstSessionDelayManager()));
        }
    }

    /* loaded from: classes2.dex */
    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SdkClickHandler.this.sendNextSdkClickI();
        }
    }

    /* loaded from: classes2.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ActivityPackage f4266a;

        public e(ActivityPackage activityPackage) {
            this.f4266a = activityPackage;
        }

        @Override // java.lang.Runnable
        public final void run() {
            SdkClickHandler.this.sendSdkClickI(this.f4266a);
            SdkClickHandler.this.sendNextSdkClick();
        }
    }

    public SdkClickHandler(IActivityHandler iActivityHandler, boolean z10, IActivityPackageSender iActivityPackageSender) {
        init(iActivityHandler, z10, iActivityPackageSender);
        this.logger = AdjustFactory.getLogger();
        this.backoffStrategy = AdjustFactory.getSdkClickBackoffStrategy();
        this.scheduler = new SingleThreadCachedScheduler(SCHEDULED_EXECUTOR_SOURCE);
    }

    private Map<String, String> generateSendingParametersI() {
        HashMap hashMap = new HashMap();
        int size = this.packageQueue.size() - 1;
        if (size > 0) {
            PackageBuilder.addLong(hashMap, "queue_size", size);
        }
        return hashMap;
    }

    private void logErrorMessageI(ActivityPackage activityPackage, String str, Throwable th2) {
        this.logger.error(Util.formatString("%s. (%s)", activityPackage.getFailureMessage(), Util.getReasonString(str, th2)), new Object[0]);
    }

    private void retrySendingI(ActivityPackage activityPackage, Long l10) {
        if (l10 != null && l10.longValue() > 0) {
            this.lastPackageRetryInMilli = l10.longValue();
        } else {
            this.logger.error("Retrying sdk_click package for the %d time", Integer.valueOf(activityPackage.increaseRetries()));
        }
        sendSdkClick(activityPackage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNextSdkClick() {
        this.scheduler.submit(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNextSdkClickI() {
        IActivityHandler iActivityHandler = this.activityHandlerWeakRef.get();
        if (iActivityHandler.getActivityState() == null || iActivityHandler.getActivityState().isGdprForgotten || this.paused || this.packageQueue.isEmpty()) {
            return;
        }
        ActivityPackage remove = this.packageQueue.remove(0);
        int retries = remove.getRetries();
        e eVar = new e(remove);
        long waitTime = waitTime(retries);
        if (waitTime > 0) {
            this.scheduler.schedule(eVar, waitTime);
        } else {
            eVar.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSdkClickI(ActivityPackage activityPackage) {
        boolean z10;
        boolean z11;
        long j10;
        String str;
        long j11;
        long j12;
        long j13;
        String str2;
        String str3;
        Boolean bool;
        Boolean bool2;
        boolean z12;
        boolean z13;
        String str4;
        IActivityHandler iActivityHandler = this.activityHandlerWeakRef.get();
        String str5 = activityPackage.getParameters().get("source");
        if (str5 != null && str5.equals("reftag")) {
            z10 = true;
        } else {
            z10 = false;
        }
        String str6 = activityPackage.getParameters().get("raw_referrer");
        if (!z10 || SharedPreferencesManager.getDefaultInstance(iActivityHandler.getContext()).getRawReferrer(str6, activityPackage.getClickTimeInMilliseconds()) != null) {
            if (str5 != null && str5.equals("install_referrer")) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z11) {
                j10 = activityPackage.getClickTimeInSeconds();
                j12 = activityPackage.getInstallBeginTimeInSeconds();
                str = activityPackage.getParameters().get(Constants.REFERRER);
                j13 = activityPackage.getClickTimeServerInSeconds();
                long installBeginTimeServerInSeconds = activityPackage.getInstallBeginTimeServerInSeconds();
                str3 = activityPackage.getInstallVersion();
                bool = activityPackage.getGooglePlayInstant();
                bool2 = activityPackage.getIsClick();
                str2 = activityPackage.getParameters().get("referrer_api");
                j11 = installBeginTimeServerInSeconds;
            } else {
                j10 = -1;
                str = null;
                j11 = -1;
                j12 = -1;
                j13 = -1;
                str2 = null;
                str3 = null;
                bool = null;
                bool2 = null;
            }
            long j14 = j11;
            if (str5 != null && str5.equals(Constants.PREINSTALL)) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (str5 != null && str5.equals(Constants.LICENSE_VERIFICATION)) {
                z13 = true;
            } else {
                z13 = false;
            }
            ResponseData sendActivityPackageSync = this.activityPackageSender.sendActivityPackageSync(activityPackage, generateSendingParametersI());
            if (sendActivityPackageSync instanceof SdkClickResponseData) {
                SdkClickResponseData sdkClickResponseData = (SdkClickResponseData) sendActivityPackageSync;
                if (sdkClickResponseData.willRetry) {
                    retrySendingI(activityPackage, sdkClickResponseData.retryIn);
                    return;
                }
                boolean z14 = z12;
                this.lastPackageRetryInMilli = 0L;
                if (iActivityHandler == null) {
                    return;
                }
                if (sdkClickResponseData.trackingState == TrackingState.OPTED_OUT) {
                    iActivityHandler.gotOptOutResponse();
                    return;
                }
                if (z10) {
                    SharedPreferencesManager.getDefaultInstance(iActivityHandler.getContext()).removeRawReferrer(str6, activityPackage.getClickTimeInMilliseconds());
                }
                if (z11) {
                    sdkClickResponseData.clickTime = j10;
                    sdkClickResponseData.installBegin = j12;
                    sdkClickResponseData.installReferrer = str;
                    sdkClickResponseData.clickTimeServer = j13;
                    sdkClickResponseData.installBeginServer = j14;
                    sdkClickResponseData.installVersion = str3;
                    sdkClickResponseData.googlePlayInstant = bool;
                    sdkClickResponseData.isClick = bool2;
                    sdkClickResponseData.referrerApi = str2;
                    sdkClickResponseData.isInstallReferrer = true;
                }
                if (z14 && (str4 = activityPackage.getParameters().get("found_location")) != null && !str4.isEmpty()) {
                    SharedPreferencesManager defaultInstance = SharedPreferencesManager.getDefaultInstance(iActivityHandler.getContext());
                    if (Constants.SYSTEM_INSTALLER_REFERRER.equalsIgnoreCase(str4)) {
                        defaultInstance.removePreinstallReferrer();
                    } else {
                        defaultInstance.setPreinstallPayloadReadStatus(PreinstallUtil.markAsRead(str4, defaultInstance.getPreinstallPayloadReadStatus()));
                    }
                }
                if (z13) {
                    SharedPreferencesManager.getDefaultInstance(iActivityHandler.getContext()).setLicenseVerificationTracked();
                }
                iActivityHandler.finishedTrackingActivity(sdkClickResponseData);
            }
        }
    }

    private long waitTime(int i10) {
        long j10 = this.lastPackageRetryInMilli;
        if (j10 > 0) {
            return j10;
        }
        if (i10 <= 0) {
            return 0L;
        }
        long waitingTime = Util.getWaitingTime(i10, this.backoffStrategy);
        this.logger.verbose("Waiting for %s seconds before retrying sdk_click for the %d time", Util.SecondsDisplayFormat.format(waitingTime / MILLISECONDS_TO_SECONDS_DIVISOR), Integer.valueOf(i10));
        return waitingTime;
    }

    @Override // com.adjust.sdk.ISdkClickHandler
    public void init(IActivityHandler iActivityHandler, boolean z10, IActivityPackageSender iActivityPackageSender) {
        this.paused = !z10;
        this.packageQueue = new ArrayList();
        this.activityHandlerWeakRef = new WeakReference<>(iActivityHandler);
        this.activityPackageSender = iActivityPackageSender;
    }

    @Override // com.adjust.sdk.ISdkClickHandler
    public void pauseSending() {
        this.paused = true;
    }

    @Override // com.adjust.sdk.ISdkClickHandler
    public void resumeSending() {
        this.paused = false;
        sendNextSdkClick();
    }

    @Override // com.adjust.sdk.ISdkClickHandler
    public void sendPreinstallPayload(String str, String str2) {
        this.scheduler.submit(new c(str, str2));
    }

    @Override // com.adjust.sdk.ISdkClickHandler
    public void sendReftagReferrers() {
        this.scheduler.submit(new b());
    }

    @Override // com.adjust.sdk.ISdkClickHandler
    public void sendSdkClick(ActivityPackage activityPackage) {
        this.scheduler.submit(new a(activityPackage));
    }

    @Override // com.adjust.sdk.ISdkClickHandler
    public void teardown() {
        this.logger.verbose("SdkClickHandler teardown", new Object[0]);
        ThreadScheduler threadScheduler = this.scheduler;
        if (threadScheduler != null) {
            threadScheduler.teardown();
        }
        List<ActivityPackage> list = this.packageQueue;
        if (list != null) {
            list.clear();
        }
        WeakReference<IActivityHandler> weakReference = this.activityHandlerWeakRef;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.logger = null;
        this.packageQueue = null;
        this.backoffStrategy = null;
        this.scheduler = null;
    }
}
