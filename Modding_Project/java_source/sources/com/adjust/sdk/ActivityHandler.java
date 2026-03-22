package com.adjust.sdk;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Process;
import android.text.TextUtils;
import com.adjust.sdk.SystemLifecycle;
import com.adjust.sdk.network.ActivityPackageSender;
import com.adjust.sdk.network.UtilNetworking;
import com.adjust.sdk.scheduler.SingleThreadCachedScheduler;
import com.adjust.sdk.scheduler.ThreadExecutor;
import com.adjust.sdk.scheduler.TimerCycle;
import com.adjust.sdk.scheduler.TimerOnce;
import com.bytedance.vodsetting.Module;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class ActivityHandler implements IActivityHandler, SystemLifecycle.SystemLifecycleCallback {
    private static final String ACTIVITY_STATE_NAME = "Activity state";
    private static final String ATTRIBUTION_NAME = "Attribution";
    private static long BACKGROUND_TIMER_INTERVAL = 0;
    private static final String BACKGROUND_TIMER_NAME = "Background timer";
    private static final String DELAY_START_TIMER_NAME = "Delay Start timer";
    private static final String EVENT_METADATA_NAME = "Event metadata";
    private static long FOREGROUND_TIMER_INTERVAL = 0;
    private static final String FOREGROUND_TIMER_NAME = "Foreground timer";
    private static long FOREGROUND_TIMER_START = 0;
    private static final String GLOBAL_CALLBACK_PARAMETERS_NAME = "Global Callback parameters";
    private static final String GLOBAL_PARAMETERS_NAME = "Global parameters";
    private static final String GLOBAL_PARTNER_PARAMETERS_NAME = "Global Partner parameters";
    private static long SESSION_INTERVAL = 0;
    private static long SUBSESSION_INTERVAL = 0;
    private static final String TIME_TRAVEL = "Time travel!";
    private ActivityState activityState;
    private AdjustConfig adjustConfig;
    private AdjustAttribution attribution;
    private IAttributionHandler attributionHandler;
    private TimerOnce backgroundTimer;
    private String basePath;
    private List<AdjustThirdPartySharing> cachedAdjustThirdPartySharingArray;
    private OnDeeplinkResolvedListener cachedDeeplinkResolutionCallback;
    private Boolean cachedLastMeasurementConsentTrack;
    private DeviceInfo deviceInfo;
    ThreadExecutor executor;
    private i1 firstSessionDelayManager;
    private TimerCycle foregroundTimer;
    private String gdprPath;
    private GlobalParameters globalParameters;
    private InstallReferrer installReferrer;
    private InternalState internalState;
    private ILogger logger;
    private IPackageHandler packageHandler;
    private IPurchaseVerificationHandler purchaseVerificationHandler;
    private ISdkClickHandler sdkClickHandler;
    private String subscriptionPath;
    private SystemLifecycle systemLifecycle;
    private final ArrayList<OnAdidReadListener> cachedAdidReadCallbacks = new ArrayList<>();
    private final ArrayList<AdjustTimeoutCallback> cachedAdidReadTimeoutCallbacks = new ArrayList<>();
    private final ArrayList<OnAttributionReadListener> cachedAttributionReadCallbacks = new ArrayList<>();
    private final ArrayList<AdjustTimeoutCallback> cachedAttributionReadTimeoutCallbacks = new ArrayList<>();
    private EventMetadata eventMetadata = new EventMetadata();

    /* loaded from: classes2.dex */
    public class InternalState {
        boolean enabled;
        boolean firstLaunch;
        Boolean foregroundOrElseBackground;
        boolean offline;
        boolean preinstallHasBeenRead;
        boolean sessionResponseProcessed;

        public InternalState() {
        }

        public boolean hasPreinstallBeenRead() {
            return this.preinstallHasBeenRead;
        }

        public boolean hasSessionResponseNotBeenProcessed() {
            return !this.sessionResponseProcessed;
        }

        public boolean isDisabled() {
            return !this.enabled;
        }

        public boolean isEnabled() {
            return this.enabled;
        }

        public boolean isFirstLaunch() {
            return this.firstLaunch;
        }

        public boolean isInBackground() {
            Boolean bool = this.foregroundOrElseBackground;
            if (bool != null && !bool.booleanValue()) {
                return true;
            }
            return false;
        }

        public boolean isInForeground() {
            Boolean bool = this.foregroundOrElseBackground;
            if (bool != null && bool.booleanValue()) {
                return true;
            }
            return false;
        }

        public boolean isOffline() {
            return this.offline;
        }

        public boolean isOnline() {
            return !this.offline;
        }
    }

    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ SessionResponseData f4116a;

        public a(SessionResponseData sessionResponseData) {
            this.f4116a = sessionResponseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActivityHandler.this.launchSessionResponseTasksI(this.f4116a);
        }
    }

    /* loaded from: classes2.dex */
    public class a0 implements Runnable {
        public a0() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ReferrerDetails samsungReferrer = Reflection.getSamsungReferrer(ActivityHandler.this.getContext(), ActivityHandler.this.logger);
            if (samsungReferrer != null) {
                ActivityHandler.this.sendInstallReferrer(samsungReferrer, Constants.REFERRER_API_SAMSUNG);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AttributionResponseData f4119a;

        public b(AttributionResponseData attributionResponseData) {
            this.f4119a = attributionResponseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActivityHandler.this.launchAttributionResponseTasksI(this.f4119a);
        }
    }

    /* loaded from: classes2.dex */
    public class b0 implements Runnable {
        public b0() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ReferrerDetails xiaomiReferrer = Reflection.getXiaomiReferrer(ActivityHandler.this.getContext(), ActivityHandler.this.logger);
            if (xiaomiReferrer != null) {
                ActivityHandler.this.sendInstallReferrer(xiaomiReferrer, Constants.REFERRER_API_XIAOMI);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ PurchaseVerificationResponseData f4122a;

        public c(PurchaseVerificationResponseData purchaseVerificationResponseData) {
            this.f4122a = purchaseVerificationResponseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActivityHandler.this.launchPurchaseVerificationResponseTasksI(this.f4122a);
        }
    }

    /* loaded from: classes2.dex */
    public class c0 implements Runnable {
        public c0() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ReferrerDetails vivoReferrer = Reflection.getVivoReferrer(ActivityHandler.this.getContext(), ActivityHandler.this.logger);
            if (vivoReferrer != null) {
                ActivityHandler.this.sendInstallReferrer(vivoReferrer, Constants.REFERRER_API_VIVO);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActivityHandler.this.gotOptOutResponseI();
        }
    }

    /* loaded from: classes2.dex */
    public class d0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ EventResponseData f4126a;

        public d0(EventResponseData eventResponseData) {
            this.f4126a = eventResponseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (ActivityHandler.this.adjustConfig == null || ActivityHandler.this.adjustConfig.onEventTrackingSucceededListener == null) {
                return;
            }
            ActivityHandler.this.adjustConfig.onEventTrackingSucceededListener.onEventTrackingSucceeded(this.f4126a.getSuccessResponseData());
        }
    }

    /* loaded from: classes2.dex */
    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActivityHandler.this.foregroundTimerFiredI();
        }
    }

    /* loaded from: classes2.dex */
    public class e0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ EventResponseData f4129a;

        public e0(EventResponseData eventResponseData) {
            this.f4129a = eventResponseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (ActivityHandler.this.adjustConfig == null || ActivityHandler.this.adjustConfig.onEventTrackingFailedListener == null) {
                return;
            }
            ActivityHandler.this.adjustConfig.onEventTrackingFailedListener.onEventTrackingFailed(this.f4129a.getFailureResponseData());
        }
    }

    /* loaded from: classes2.dex */
    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActivityHandler.this.backgroundTimerFiredI();
        }
    }

    /* loaded from: classes2.dex */
    public class f0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ OnDeeplinkResolvedListener f4132a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ SdkClickResponseData f4133b;

        public f0(OnDeeplinkResolvedListener onDeeplinkResolvedListener, SdkClickResponseData sdkClickResponseData) {
            this.f4132a = onDeeplinkResolvedListener;
            this.f4133b = sdkClickResponseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f4132a.onDeeplinkResolved(this.f4133b.resolvedDeeplink);
        }
    }

    /* loaded from: classes2.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ OnAdidReadListener f4134a;

        public g(OnAdidReadListener onAdidReadListener) {
            this.f4134a = onAdidReadListener;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f4134a.onAdidRead(ActivityHandler.this.activityState.adid);
        }
    }

    /* loaded from: classes2.dex */
    public class g0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ArrayList f4136a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AdjustAttribution f4137b;

        public g0(ArrayList arrayList, AdjustAttribution adjustAttribution) {
            this.f4136a = arrayList;
            this.f4137b = adjustAttribution;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ArrayList arrayList = this.f4136a;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                OnAttributionReadListener onAttributionReadListener = (OnAttributionReadListener) obj;
                if (onAttributionReadListener != null) {
                    onAttributionReadListener.onAttributionRead(this.f4137b);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ OnAdidReadListener f4138a;

        public h(OnAdidReadListener onAdidReadListener) {
            this.f4138a = onAdidReadListener;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f4138a.onAdidRead(ActivityHandler.this.activityState.adid);
        }
    }

    /* loaded from: classes2.dex */
    public class h0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ SessionResponseData f4140a;

        public h0(SessionResponseData sessionResponseData) {
            this.f4140a = sessionResponseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (ActivityHandler.this.adjustConfig == null || ActivityHandler.this.adjustConfig.onSessionTrackingSucceededListener == null) {
                return;
            }
            ActivityHandler.this.adjustConfig.onSessionTrackingSucceededListener.onSessionTrackingSucceeded(this.f4140a.getSuccessResponseData());
        }
    }

    /* loaded from: classes2.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ OnAttributionReadListener f4142a;

        public i(OnAttributionReadListener onAttributionReadListener) {
            this.f4142a = onAttributionReadListener;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f4142a.onAttributionRead(ActivityHandler.this.attribution);
        }
    }

    /* loaded from: classes2.dex */
    public class i0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ SessionResponseData f4144a;

        public i0(SessionResponseData sessionResponseData) {
            this.f4144a = sessionResponseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (ActivityHandler.this.adjustConfig == null || ActivityHandler.this.adjustConfig.onSessionTrackingFailedListener == null) {
                return;
            }
            ActivityHandler.this.adjustConfig.onSessionTrackingFailedListener.onSessionTrackingFailed(this.f4144a.getFailureResponseData());
        }
    }

    /* loaded from: classes2.dex */
    public class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ OnAttributionReadListener f4146a;

        public j(OnAttributionReadListener onAttributionReadListener) {
            this.f4146a = onAttributionReadListener;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f4146a.onAttributionRead(ActivityHandler.this.attribution);
        }
    }

    /* loaded from: classes2.dex */
    public class j0 implements Runnable {
        public j0() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (ActivityHandler.this.adjustConfig == null || ActivityHandler.this.adjustConfig.onAttributionChangedListener == null) {
                return;
            }
            ActivityHandler.this.adjustConfig.onAttributionChangedListener.onAttributionChanged(ActivityHandler.this.attribution);
        }
    }

    /* loaded from: classes2.dex */
    public class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ArrayList f4149a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f4150b;

        public k(ArrayList arrayList, String str) {
            this.f4149a = arrayList;
            this.f4150b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ArrayList arrayList = this.f4149a;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                OnAdidReadListener onAdidReadListener = (OnAdidReadListener) obj;
                if (onAdidReadListener != null) {
                    onAdidReadListener.onAdidRead(this.f4150b);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public class k0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ PurchaseVerificationResponseData f4151a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AdjustPurchaseVerificationResult f4152b;

        public k0(PurchaseVerificationResponseData purchaseVerificationResponseData, AdjustPurchaseVerificationResult adjustPurchaseVerificationResult) {
            this.f4151a = purchaseVerificationResponseData;
            this.f4152b = adjustPurchaseVerificationResult;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f4151a.activityPackage.getPurchaseVerificationCallback().onVerificationFinished(this.f4152b);
        }
    }

    /* loaded from: classes2.dex */
    public class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AdjustTimeoutCallback f4153a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ ArrayList f4154b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Context f4155c;

        public l(AdjustTimeoutCallback adjustTimeoutCallback, ArrayList arrayList, Context context) {
            this.f4153a = adjustTimeoutCallback;
            this.f4154b = arrayList;
            this.f4155c = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f4153a.getOnAdidReadListener() != null) {
                synchronized (this.f4154b) {
                    this.f4154b.remove(this.f4153a);
                }
                new Handler(this.f4155c.getMainLooper()).post(new b1(this));
            }
        }
    }

    /* loaded from: classes2.dex */
    public class l0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Uri f4156a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ Intent f4157b;

        public l0(Intent intent, Uri uri) {
            this.f4156a = uri;
            this.f4157b = intent;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z10;
            if (ActivityHandler.this.adjustConfig != null) {
                if (ActivityHandler.this.adjustConfig.onDeferredDeeplinkResponseListener != null) {
                    z10 = ActivityHandler.this.adjustConfig.onDeferredDeeplinkResponseListener.launchReceivedDeeplink(this.f4156a);
                } else {
                    z10 = true;
                }
                if (z10) {
                    ActivityHandler.this.launchDeeplinkMain(this.f4157b, this.f4156a);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AdjustTimeoutCallback f4159a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ ArrayList f4160b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Context f4161c;

        public m(AdjustTimeoutCallback adjustTimeoutCallback, ArrayList arrayList, Context context) {
            this.f4159a = adjustTimeoutCallback;
            this.f4160b = arrayList;
            this.f4161c = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f4159a.getOnAttributionReadListener() != null) {
                synchronized (this.f4160b) {
                    this.f4160b.remove(this.f4159a);
                }
                new Handler(this.f4161c.getMainLooper()).post(new c1(this));
            }
        }
    }

    /* loaded from: classes2.dex */
    public class m0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ OnDeeplinkResolvedListener f4162a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f4163b;

        public m0(OnDeeplinkResolvedListener onDeeplinkResolvedListener, String str) {
            this.f4162a = onDeeplinkResolvedListener;
            this.f4163b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f4162a.onDeeplinkResolved(this.f4163b);
        }
    }

    /* loaded from: classes2.dex */
    public class n implements IRunActivityHandler {
        public n() {
        }

        @Override // com.adjust.sdk.IRunActivityHandler
        public final void run(ActivityHandler activityHandler) {
            activityHandler.lambda$setEnabled$5(ActivityHandler.this.adjustConfig.startEnabled.booleanValue());
        }
    }

    /* loaded from: classes2.dex */
    public class n0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ArrayList f4165a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AdjustAttribution f4166b;

        public n0(ArrayList arrayList, AdjustAttribution adjustAttribution) {
            this.f4165a = arrayList;
            this.f4166b = adjustAttribution;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ArrayList arrayList = this.f4165a;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                AdjustTimeoutCallback adjustTimeoutCallback = (AdjustTimeoutCallback) obj;
                if (adjustTimeoutCallback != null) {
                    TimerOnce timeoutTimer = adjustTimeoutCallback.getTimeoutTimer();
                    if (timeoutTimer != null) {
                        timeoutTimer.cancel();
                    }
                    OnAttributionReadListener onAttributionReadListener = adjustTimeoutCallback.getOnAttributionReadListener();
                    if (onAttributionReadListener != null) {
                        onAttributionReadListener.onAttributionRead(this.f4166b);
                    }
                    adjustTimeoutCallback.setOnAttributionReadListener(null);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActivityHandler.this.foregroundTimerFired();
        }
    }

    /* loaded from: classes2.dex */
    public class o0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f4168a;

        public o0(boolean z10) {
            this.f4168a = z10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActivityHandler.this.setAskingAttributionI(this.f4168a);
        }
    }

    /* loaded from: classes2.dex */
    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActivityHandler.this.backgroundTimerFired();
        }
    }

    /* loaded from: classes2.dex */
    public class p0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ReferrerDetails f4171a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f4172b;

        public p0(ReferrerDetails referrerDetails, String str) {
            this.f4171a = referrerDetails;
            this.f4172b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActivityHandler.this.sendInstallReferrerI(this.f4171a, this.f4172b);
        }
    }

    /* loaded from: classes2.dex */
    public class q implements InstallReferrerReadListener {
        public q() {
        }

        @Override // com.adjust.sdk.InstallReferrerReadListener
        public final void onFail(String str) {
            ActivityHandler.this.logger.debug(str, new Object[0]);
        }

        @Override // com.adjust.sdk.InstallReferrerReadListener
        public final void onInstallReferrerRead(ReferrerDetails referrerDetails, String str) {
            ActivityHandler.this.sendInstallReferrer(referrerDetails, str);
        }
    }

    /* loaded from: classes2.dex */
    public class q0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ LicenseData f4175a;

        public q0(LicenseData licenseData) {
            this.f4175a = licenseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActivityHandler.this.sendLicenseVerificationDataI(this.f4175a);
        }
    }

    /* loaded from: classes2.dex */
    public class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ArrayList f4177a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AdjustAttribution f4178b;

        public r(ArrayList arrayList, AdjustAttribution adjustAttribution) {
            this.f4177a = arrayList;
            this.f4178b = adjustAttribution;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ArrayList arrayList = this.f4177a;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                OnAttributionReadListener onAttributionReadListener = (OnAttributionReadListener) obj;
                if (onAttributionReadListener != null) {
                    onAttributionReadListener.onAttributionRead(this.f4178b);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public class r0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ EventResponseData f4179a;

        public r0(EventResponseData eventResponseData) {
            this.f4179a = eventResponseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActivityHandler.this.launchEventResponseTasksI(this.f4179a);
        }
    }

    /* loaded from: classes2.dex */
    public class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ArrayList f4181a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AdjustAttribution f4182b;

        public s(ArrayList arrayList, AdjustAttribution adjustAttribution) {
            this.f4181a = arrayList;
            this.f4182b = adjustAttribution;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ArrayList arrayList = this.f4181a;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                AdjustTimeoutCallback adjustTimeoutCallback = (AdjustTimeoutCallback) obj;
                if (adjustTimeoutCallback != null) {
                    TimerOnce timeoutTimer = adjustTimeoutCallback.getTimeoutTimer();
                    if (timeoutTimer != null) {
                        timeoutTimer.cancel();
                    }
                    OnAttributionReadListener onAttributionReadListener = adjustTimeoutCallback.getOnAttributionReadListener();
                    if (onAttributionReadListener != null) {
                        onAttributionReadListener.onAttributionRead(this.f4182b);
                    }
                    adjustTimeoutCallback.setOnAttributionReadListener(null);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public class s0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ SdkClickResponseData f4183a;

        public s0(SdkClickResponseData sdkClickResponseData) {
            this.f4183a = sdkClickResponseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActivityHandler.this.launchSdkClickResponseTasksI(this.f4183a);
        }
    }

    /* loaded from: classes2.dex */
    public class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ArrayList f4185a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f4186b;

        public t(ArrayList arrayList, String str) {
            this.f4185a = arrayList;
            this.f4186b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ArrayList arrayList = this.f4185a;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                OnAdidReadListener onAdidReadListener = (OnAdidReadListener) obj;
                if (onAdidReadListener != null) {
                    onAdidReadListener.onAdidRead(this.f4186b);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ArrayList f4187a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f4188b;

        public u(ArrayList arrayList, String str) {
            this.f4187a = arrayList;
            this.f4188b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ArrayList arrayList = this.f4187a;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                AdjustTimeoutCallback adjustTimeoutCallback = (AdjustTimeoutCallback) obj;
                if (adjustTimeoutCallback != null) {
                    TimerOnce timeoutTimer = adjustTimeoutCallback.getTimeoutTimer();
                    if (timeoutTimer != null) {
                        timeoutTimer.cancel();
                    }
                    OnAdidReadListener onAdidReadListener = adjustTimeoutCallback.getOnAdidReadListener();
                    if (onAdidReadListener != null) {
                        onAdidReadListener.onAdidRead(this.f4188b);
                    }
                    adjustTimeoutCallback.setOnAdidReadListener(null);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public class v implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ArrayList f4189a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f4190b;

        public v(ArrayList arrayList, String str) {
            this.f4189a = arrayList;
            this.f4190b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ArrayList arrayList = this.f4189a;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                AdjustTimeoutCallback adjustTimeoutCallback = (AdjustTimeoutCallback) obj;
                if (adjustTimeoutCallback != null) {
                    TimerOnce timeoutTimer = adjustTimeoutCallback.getTimeoutTimer();
                    if (timeoutTimer != null) {
                        timeoutTimer.cancel();
                    }
                    OnAdidReadListener onAdidReadListener = adjustTimeoutCallback.getOnAdidReadListener();
                    if (onAdidReadListener != null) {
                        onAdidReadListener.onAdidRead(this.f4190b);
                    }
                    adjustTimeoutCallback.setOnAdidReadListener(null);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public class w implements Runnable {
        public w() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ReferrerDetails metaReferrer = Reflection.getMetaReferrer(ActivityHandler.this.getContext(), ActivityHandler.this.adjustConfig.fbAppId, ActivityHandler.this.logger);
            if (metaReferrer != null) {
                ActivityHandler.this.sendInstallReferrer(metaReferrer, Constants.REFERRER_API_META);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class x implements Runnable {
        public x() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            LicenseData licenseRequiredData;
            if (!SharedPreferencesManager.getDefaultInstance(ActivityHandler.this.getContext()).getLicenseVerificationTracked() && (licenseRequiredData = Reflection.getLicenseRequiredData(ActivityHandler.this.getContext(), ActivityHandler.this.logger, ActivityHandler.this.deviceInfo.appInstallTime)) != null) {
                ActivityHandler.this.sendLicenseVerificationData(licenseRequiredData);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class y implements Runnable {
        public y() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ReferrerDetails huaweiAdsReferrer = Reflection.getHuaweiAdsReferrer(ActivityHandler.this.getContext(), ActivityHandler.this.logger);
            if (huaweiAdsReferrer != null) {
                ActivityHandler.this.sendInstallReferrer(huaweiAdsReferrer, Constants.REFERRER_API_HUAWEI_ADS);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class z implements Runnable {
        public z() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ReferrerDetails huaweiAppGalleryReferrer = Reflection.getHuaweiAppGalleryReferrer(ActivityHandler.this.getContext(), ActivityHandler.this.logger);
            if (huaweiAppGalleryReferrer != null) {
                ActivityHandler.this.sendInstallReferrer(huaweiAppGalleryReferrer, Constants.REFERRER_API_HUAWEI_APP_GALLERY);
            }
        }
    }

    private ActivityHandler(final AdjustConfig adjustConfig) {
        boolean z10;
        init(adjustConfig);
        ILogger logger = AdjustFactory.getLogger();
        this.logger = logger;
        logger.lockLogLevel();
        this.executor = new SingleThreadCachedScheduler("ActivityHandler");
        InternalState internalState = new InternalState();
        this.internalState = internalState;
        Boolean bool = adjustConfig.startEnabled;
        if (bool != null) {
            z10 = bool.booleanValue();
        } else {
            z10 = true;
        }
        internalState.enabled = z10;
        InternalState internalState2 = this.internalState;
        internalState2.offline = adjustConfig.startOffline;
        internalState2.sessionResponseProcessed = false;
        internalState2.preinstallHasBeenRead = false;
        this.cachedAdjustThirdPartySharingArray = null;
        this.cachedLastMeasurementConsentTrack = null;
        this.firstSessionDelayManager = new i1(this);
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.a1
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$new$2(adjustConfig);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void backgroundTimerFiredI() {
        if (toSendI()) {
            this.packageHandler.sendFirstPackage();
        }
    }

    private void bootstrapLifecycleI() {
        SystemLifecycle singletonInstance = SystemLifecycle.getSingletonInstance();
        this.systemLifecycle = singletonInstance;
        Iterator<String> it = singletonInstance.logMessageList.iterator();
        while (it.hasNext()) {
            this.logger.debug("Lifecycle: %s", it.next());
        }
        this.systemLifecycle.overwriteCallback(this);
        if (!AdjustFactory.isSystemLifecycleBootstrapIgnored()) {
            this.internalState.foregroundOrElseBackground = this.systemLifecycle.foregroundOrElseBackgroundCached();
            if (this.internalState.isInForeground()) {
                onResumeI();
            }
        }
    }

    private boolean canTrackMeasurementConsentI() {
        if (!checkActivityStateI(this.activityState) || !isEnabledI() || this.activityState.isGdprForgotten) {
            return false;
        }
        return true;
    }

    private boolean canTrackThirdPartySharingI() {
        if (!checkActivityStateI(this.activityState) || !isEnabledI() || this.activityState.isGdprForgotten) {
            return false;
        }
        if (this.adjustConfig.coppaComplianceEnabled) {
            this.logger.warn("Calling third party sharing API not allowed when COPPA enabled", new Object[0]);
            return false;
        }
        return true;
    }

    private boolean checkActivityStateI(ActivityState activityState) {
        if (activityState == null) {
            this.logger.error("Sdk did not yet start", new Object[0]);
            return false;
        }
        return true;
    }

    private boolean checkAdjustAdRevenue(AdjustAdRevenue adjustAdRevenue) {
        if (adjustAdRevenue == null) {
            this.logger.error("Ad revenue object missing", new Object[0]);
            return false;
        } else if (!adjustAdRevenue.isValid()) {
            this.logger.error("Ad revenue object not initialized correctly", new Object[0]);
            return false;
        } else {
            return true;
        }
    }

    private void checkAfterNewStartI() {
        checkAfterNewStartI(SharedPreferencesManager.getDefaultInstance(getContext()));
    }

    private void checkAttributionStateI() {
        if (checkActivityStateI(this.activityState)) {
            if (!this.internalState.isFirstLaunch() || !this.internalState.hasSessionResponseNotBeenProcessed()) {
                if (this.attribution != null && !this.activityState.askingAttribution) {
                    return;
                }
                this.attributionHandler.getAttribution();
            }
        }
    }

    private boolean checkEventI(AdjustEvent adjustEvent) {
        if (adjustEvent == null) {
            this.logger.error("Event missing", new Object[0]);
            return false;
        } else if (!adjustEvent.isValid()) {
            this.logger.error("Event not initialized correctly", new Object[0]);
            return false;
        } else {
            return true;
        }
    }

    private void checkForInstallReferrerInfo(SdkClickResponseData sdkClickResponseData) {
        if (!sdkClickResponseData.isInstallReferrer) {
            return;
        }
        String str = sdkClickResponseData.referrerApi;
        if (str != null && str.equalsIgnoreCase(Constants.REFERRER_API_HUAWEI_ADS)) {
            ActivityState activityState = this.activityState;
            activityState.clickTimeHuawei = sdkClickResponseData.clickTime;
            activityState.installBeginHuawei = sdkClickResponseData.installBegin;
            activityState.installReferrerHuawei = sdkClickResponseData.installReferrer;
            writeActivityStateI();
            return;
        }
        String str2 = sdkClickResponseData.referrerApi;
        if (str2 != null && str2.equalsIgnoreCase(Constants.REFERRER_API_HUAWEI_APP_GALLERY)) {
            ActivityState activityState2 = this.activityState;
            activityState2.clickTimeHuawei = sdkClickResponseData.clickTime;
            activityState2.installBeginHuawei = sdkClickResponseData.installBegin;
            activityState2.installReferrerHuaweiAppGallery = sdkClickResponseData.installReferrer;
            writeActivityStateI();
            return;
        }
        String str3 = sdkClickResponseData.referrerApi;
        if (str3 != null && str3.equalsIgnoreCase(Constants.REFERRER_API_META)) {
            ActivityState activityState3 = this.activityState;
            activityState3.clickTimeMeta = sdkClickResponseData.clickTime;
            activityState3.installReferrerMeta = sdkClickResponseData.installReferrer;
            activityState3.isClickMeta = sdkClickResponseData.isClick;
            writeActivityStateI();
            return;
        }
        String str4 = sdkClickResponseData.referrerApi;
        if (str4 != null && str4.equalsIgnoreCase(Constants.REFERRER_API_SAMSUNG)) {
            ActivityState activityState4 = this.activityState;
            activityState4.clickTimeSamsung = sdkClickResponseData.clickTime;
            activityState4.installBeginSamsung = sdkClickResponseData.installBegin;
            activityState4.installReferrerSamsung = sdkClickResponseData.installReferrer;
            writeActivityStateI();
            return;
        }
        String str5 = sdkClickResponseData.referrerApi;
        if (str5 != null && str5.equalsIgnoreCase(Constants.REFERRER_API_XIAOMI)) {
            ActivityState activityState5 = this.activityState;
            activityState5.clickTimeXiaomi = sdkClickResponseData.clickTime;
            activityState5.installBeginXiaomi = sdkClickResponseData.installBegin;
            activityState5.installReferrerXiaomi = sdkClickResponseData.installReferrer;
            activityState5.clickTimeServerXiaomi = sdkClickResponseData.clickTimeServer;
            activityState5.installBeginServerXiaomi = sdkClickResponseData.installBeginServer;
            activityState5.installVersionXiaomi = sdkClickResponseData.installVersion;
            writeActivityStateI();
            return;
        }
        String str6 = sdkClickResponseData.referrerApi;
        if (str6 != null && str6.equalsIgnoreCase(Constants.REFERRER_API_VIVO)) {
            ActivityState activityState6 = this.activityState;
            activityState6.clickTimeVivo = sdkClickResponseData.clickTime;
            activityState6.installBeginVivo = sdkClickResponseData.installBegin;
            activityState6.installReferrerVivo = sdkClickResponseData.installReferrer;
            activityState6.installVersionVivo = sdkClickResponseData.installVersion;
            writeActivityStateI();
            return;
        }
        ActivityState activityState7 = this.activityState;
        activityState7.clickTime = sdkClickResponseData.clickTime;
        activityState7.installBegin = sdkClickResponseData.installBegin;
        activityState7.installReferrer = sdkClickResponseData.installReferrer;
        activityState7.clickTimeServer = sdkClickResponseData.clickTimeServer;
        activityState7.installBeginServer = sdkClickResponseData.installBeginServer;
        activityState7.installVersion = sdkClickResponseData.installVersion;
        activityState7.googlePlayInstant = sdkClickResponseData.googlePlayInstant;
        writeActivityStateI();
    }

    private void checkForPreinstallI() {
        ActivityState activityState = this.activityState;
        if (activityState != null && activityState.enabled && !activityState.isGdprForgotten) {
            lambda$sendPreinstallReferrer$18();
            if (!this.adjustConfig.isPreinstallTrackingEnabled || this.internalState.hasPreinstallBeenRead()) {
                return;
            }
            String str = this.deviceInfo.packageName;
            if (str != null && !str.isEmpty()) {
                SharedPreferencesManager defaultInstance = SharedPreferencesManager.getDefaultInstance(getContext());
                long preinstallPayloadReadStatus = defaultInstance.getPreinstallPayloadReadStatus();
                if (PreinstallUtil.hasAllLocationsBeenRead(preinstallPayloadReadStatus)) {
                    this.internalState.preinstallHasBeenRead = true;
                    return;
                }
                if (PreinstallUtil.hasNotBeenRead(Constants.SYSTEM_PROPERTIES, preinstallPayloadReadStatus)) {
                    String payloadFromSystemProperty = PreinstallUtil.getPayloadFromSystemProperty(this.deviceInfo.packageName, this.logger);
                    if (payloadFromSystemProperty != null && !payloadFromSystemProperty.isEmpty()) {
                        this.sdkClickHandler.sendPreinstallPayload(payloadFromSystemProperty, Constants.SYSTEM_PROPERTIES);
                    } else {
                        preinstallPayloadReadStatus = PreinstallUtil.markAsRead(Constants.SYSTEM_PROPERTIES, preinstallPayloadReadStatus);
                    }
                }
                if (PreinstallUtil.hasNotBeenRead(Constants.SYSTEM_PROPERTIES_REFLECTION, preinstallPayloadReadStatus)) {
                    String payloadFromSystemPropertyReflection = PreinstallUtil.getPayloadFromSystemPropertyReflection(this.deviceInfo.packageName, this.logger);
                    if (payloadFromSystemPropertyReflection != null && !payloadFromSystemPropertyReflection.isEmpty()) {
                        this.sdkClickHandler.sendPreinstallPayload(payloadFromSystemPropertyReflection, Constants.SYSTEM_PROPERTIES_REFLECTION);
                    } else {
                        preinstallPayloadReadStatus = PreinstallUtil.markAsRead(Constants.SYSTEM_PROPERTIES_REFLECTION, preinstallPayloadReadStatus);
                    }
                }
                if (PreinstallUtil.hasNotBeenRead(Constants.SYSTEM_PROPERTIES_PATH, preinstallPayloadReadStatus)) {
                    String payloadFromSystemPropertyFilePath = PreinstallUtil.getPayloadFromSystemPropertyFilePath(this.deviceInfo.packageName, this.logger);
                    if (payloadFromSystemPropertyFilePath != null && !payloadFromSystemPropertyFilePath.isEmpty()) {
                        this.sdkClickHandler.sendPreinstallPayload(payloadFromSystemPropertyFilePath, Constants.SYSTEM_PROPERTIES_PATH);
                    } else {
                        preinstallPayloadReadStatus = PreinstallUtil.markAsRead(Constants.SYSTEM_PROPERTIES_PATH, preinstallPayloadReadStatus);
                    }
                }
                if (PreinstallUtil.hasNotBeenRead(Constants.SYSTEM_PROPERTIES_PATH_REFLECTION, preinstallPayloadReadStatus)) {
                    String payloadFromSystemPropertyFilePathReflection = PreinstallUtil.getPayloadFromSystemPropertyFilePathReflection(this.deviceInfo.packageName, this.logger);
                    if (payloadFromSystemPropertyFilePathReflection != null && !payloadFromSystemPropertyFilePathReflection.isEmpty()) {
                        this.sdkClickHandler.sendPreinstallPayload(payloadFromSystemPropertyFilePathReflection, Constants.SYSTEM_PROPERTIES_PATH_REFLECTION);
                    } else {
                        preinstallPayloadReadStatus = PreinstallUtil.markAsRead(Constants.SYSTEM_PROPERTIES_PATH_REFLECTION, preinstallPayloadReadStatus);
                    }
                }
                if (PreinstallUtil.hasNotBeenRead(Constants.CONTENT_PROVIDER, preinstallPayloadReadStatus)) {
                    String payloadFromContentProviderDefault = PreinstallUtil.getPayloadFromContentProviderDefault(this.adjustConfig.context, this.deviceInfo.packageName, this.logger);
                    if (payloadFromContentProviderDefault != null && !payloadFromContentProviderDefault.isEmpty()) {
                        this.sdkClickHandler.sendPreinstallPayload(payloadFromContentProviderDefault, Constants.CONTENT_PROVIDER);
                    } else {
                        preinstallPayloadReadStatus = PreinstallUtil.markAsRead(Constants.CONTENT_PROVIDER, preinstallPayloadReadStatus);
                    }
                }
                if (PreinstallUtil.hasNotBeenRead(Constants.CONTENT_PROVIDER_INTENT_ACTION, preinstallPayloadReadStatus)) {
                    List<String> payloadsFromContentProviderIntentAction = PreinstallUtil.getPayloadsFromContentProviderIntentAction(this.adjustConfig.context, this.deviceInfo.packageName, this.logger);
                    if (payloadsFromContentProviderIntentAction != null && !payloadsFromContentProviderIntentAction.isEmpty()) {
                        for (String str2 : payloadsFromContentProviderIntentAction) {
                            this.sdkClickHandler.sendPreinstallPayload(str2, Constants.CONTENT_PROVIDER_INTENT_ACTION);
                        }
                    } else {
                        preinstallPayloadReadStatus = PreinstallUtil.markAsRead(Constants.CONTENT_PROVIDER_INTENT_ACTION, preinstallPayloadReadStatus);
                    }
                }
                if (PreinstallUtil.hasNotBeenRead(Constants.CONTENT_PROVIDER_NO_PERMISSION, preinstallPayloadReadStatus)) {
                    List<String> payloadsFromContentProviderNoPermission = PreinstallUtil.getPayloadsFromContentProviderNoPermission(this.adjustConfig.context, this.deviceInfo.packageName, this.logger);
                    if (payloadsFromContentProviderNoPermission != null && !payloadsFromContentProviderNoPermission.isEmpty()) {
                        for (String str3 : payloadsFromContentProviderNoPermission) {
                            this.sdkClickHandler.sendPreinstallPayload(str3, Constants.CONTENT_PROVIDER_NO_PERMISSION);
                        }
                    } else {
                        preinstallPayloadReadStatus = PreinstallUtil.markAsRead(Constants.CONTENT_PROVIDER_NO_PERMISSION, preinstallPayloadReadStatus);
                    }
                }
                if (PreinstallUtil.hasNotBeenRead(Constants.FILE_SYSTEM, preinstallPayloadReadStatus)) {
                    String payloadFromFileSystem = PreinstallUtil.getPayloadFromFileSystem(this.deviceInfo.packageName, this.adjustConfig.preinstallFilePath, this.logger);
                    if (payloadFromFileSystem != null && !payloadFromFileSystem.isEmpty()) {
                        this.sdkClickHandler.sendPreinstallPayload(payloadFromFileSystem, Constants.FILE_SYSTEM);
                    } else {
                        preinstallPayloadReadStatus = PreinstallUtil.markAsRead(Constants.FILE_SYSTEM, preinstallPayloadReadStatus);
                    }
                }
                defaultInstance.setPreinstallPayloadReadStatus(preinstallPayloadReadStatus);
                this.internalState.preinstallHasBeenRead = true;
                return;
            }
            this.logger.debug("Can't read preinstall payload, invalid package name", new Object[0]);
        }
    }

    private Intent createDeeplinkIntentI(Uri uri) {
        Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, uri);
        intent.setFlags(268435456);
        intent.setPackage(this.adjustConfig.context.getPackageName());
        return intent;
    }

    public static boolean deleteActivityState(Context context) {
        return context.deleteFile(Constants.ACTIVITY_STATE_FILENAME);
    }

    public static boolean deleteAttribution(Context context) {
        return context.deleteFile(Constants.ATTRIBUTION_FILENAME);
    }

    public static boolean deleteEventMetadata(Context context) {
        return context.deleteFile(Constants.EVENT_METADATA_FILENAME);
    }

    public static boolean deleteGlobalCallbackParameters(Context context) {
        return context.deleteFile(Constants.GLOBAL_CALLBACK_PARAMETERS_FILENAME);
    }

    public static boolean deleteGlobalPartnerParameters(Context context) {
        return context.deleteFile(Constants.GLOBAL_PARTNER_PARAMETERS_FILENAME);
    }

    public static void deleteState(Context context) {
        deleteActivityState(context);
        deleteAttribution(context);
        deleteGlobalCallbackParameters(context);
        deleteGlobalPartnerParameters(context);
        deleteEventMetadata(context);
        SharedPreferencesManager.getDefaultInstance(context).clear();
    }

    private void disableThirdPartySharingForCoppaEnabledI() {
        if (!shouldDisableThirdPartySharingWhenCoppaEnabled()) {
            return;
        }
        this.activityState.isThirdPartySharingDisabledForCoppa = true;
        writeActivityStateI();
        this.packageHandler.addPackage(new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, this.globalParameters, this.firstSessionDelayManager, System.currentTimeMillis()).buildThirdPartySharingPackage(new AdjustThirdPartySharing(Boolean.FALSE)));
        this.packageHandler.sendFirstPackage();
    }

    private void endI() {
        if (!toSendI()) {
            pauseSendingI();
        }
        if (updateActivityStateI(System.currentTimeMillis())) {
            writeActivityStateI();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void foregroundTimerFiredI() {
        if (!isEnabledI()) {
            stopForegroundTimerI();
            return;
        }
        if (toSendI()) {
            this.packageHandler.sendFirstPackage();
        }
        if (updateActivityStateI(System.currentTimeMillis())) {
            writeActivityStateI();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: gdprForgetMeI */
    public void lambda$gdprForgetMe$34() {
        if (checkActivityStateI(this.activityState) && isEnabledI()) {
            ActivityState activityState = this.activityState;
            if (activityState.isGdprForgotten) {
                return;
            }
            activityState.isGdprForgotten = true;
            writeActivityStateI();
            PackageBuilder packageBuilder = new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, this.globalParameters, this.firstSessionDelayManager, System.currentTimeMillis());
            packageBuilder.internalState = this.internalState;
            this.packageHandler.addPackage(packageBuilder.buildGdprPackage());
            SharedPreferencesManager.getDefaultInstance(getContext()).removeGdprForgetMe();
            this.packageHandler.sendFirstPackage();
        }
    }

    public static ActivityHandler getInstance(AdjustConfig adjustConfig) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (adjustConfig == null) {
            AdjustFactory.getLogger().error("AdjustConfig missing", new Object[0]);
            return null;
        } else if (!adjustConfig.isValid()) {
            AdjustFactory.getLogger().error("AdjustConfig not initialized correctly", new Object[0]);
            return null;
        } else {
            if (adjustConfig.processName != null) {
                int myPid = Process.myPid();
                ActivityManager activityManager = (ActivityManager) adjustConfig.context.getSystemService("activity");
                if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                    return null;
                }
                Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ActivityManager.RunningAppProcessInfo next = it.next();
                    if (next.pid == myPid) {
                        if (!next.processName.equalsIgnoreCase(adjustConfig.processName)) {
                            AdjustFactory.getLogger().info("Skipping initialization in background process (%s)", next.processName);
                            return null;
                        }
                    }
                }
            }
            return new ActivityHandler(adjustConfig);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotOptOutResponseI() {
        this.activityState.isGdprForgotten = true;
        writeActivityStateI();
        this.packageHandler.flush();
        lambda$setEnabled$5(false);
    }

    private void handleAdidCallbackI() {
        ArrayList arrayList;
        ArrayList arrayList2;
        synchronized (this.cachedAdidReadCallbacks) {
            this.cachedAdidReadCallbacks.addAll(this.adjustConfig.cachedAdidReadCallbacks);
            this.adjustConfig.cachedAdidReadCallbacks.clear();
        }
        synchronized (this.cachedAdidReadTimeoutCallbacks) {
            this.cachedAdidReadTimeoutCallbacks.addAll(this.adjustConfig.cachedAdidReadTimeoutCallbacks);
            this.adjustConfig.cachedAdidReadTimeoutCallbacks.clear();
        }
        ActivityState activityState = this.activityState;
        if (activityState != null && activityState.adid != null) {
            synchronized (this.cachedAdidReadCallbacks) {
                try {
                    arrayList = null;
                    if (!this.cachedAdidReadCallbacks.isEmpty()) {
                        arrayList2 = new ArrayList(this.cachedAdidReadCallbacks);
                        this.cachedAdidReadCallbacks.clear();
                    } else {
                        arrayList2 = null;
                    }
                } finally {
                }
            }
            if (arrayList2 != null) {
                new Handler(this.adjustConfig.context.getMainLooper()).post(new t(arrayList2, this.activityState.adid));
            }
            synchronized (this.cachedAdidReadTimeoutCallbacks) {
                try {
                    if (!this.cachedAdidReadTimeoutCallbacks.isEmpty()) {
                        arrayList = new ArrayList(this.cachedAdidReadTimeoutCallbacks);
                        this.cachedAdidReadTimeoutCallbacks.clear();
                    }
                } finally {
                }
            }
            if (arrayList != null) {
                new Handler(this.adjustConfig.context.getMainLooper()).post(new u(arrayList, this.activityState.adid));
            }
        }
    }

    private void handleAttributionCallbackI() {
        ArrayList arrayList;
        ArrayList arrayList2;
        synchronized (this.cachedAttributionReadCallbacks) {
            this.cachedAttributionReadCallbacks.addAll(this.adjustConfig.cachedAttributionReadCallbacks);
            this.adjustConfig.cachedAttributionReadCallbacks.clear();
        }
        synchronized (this.cachedAttributionReadTimeoutCallbacks) {
            this.cachedAttributionReadTimeoutCallbacks.addAll(this.adjustConfig.cachedAttributionReadTimeoutCallbacks);
            this.adjustConfig.cachedAttributionReadTimeoutCallbacks.clear();
        }
        if (this.attribution != null) {
            synchronized (this.cachedAttributionReadCallbacks) {
                try {
                    arrayList = null;
                    if (!this.cachedAttributionReadCallbacks.isEmpty()) {
                        arrayList2 = new ArrayList(this.cachedAttributionReadCallbacks);
                        this.cachedAttributionReadCallbacks.clear();
                    } else {
                        arrayList2 = null;
                    }
                } finally {
                }
            }
            if (arrayList2 != null) {
                new Handler(this.adjustConfig.context.getMainLooper()).post(new r(arrayList2, this.attribution));
            }
            synchronized (this.cachedAttributionReadTimeoutCallbacks) {
                try {
                    if (!this.cachedAttributionReadTimeoutCallbacks.isEmpty()) {
                        arrayList = new ArrayList(this.cachedAttributionReadTimeoutCallbacks);
                        this.cachedAttributionReadTimeoutCallbacks.clear();
                    }
                } finally {
                }
            }
            if (arrayList != null) {
                new Handler(this.adjustConfig.context.getMainLooper()).post(new s(arrayList, this.attribution));
            }
        }
    }

    private boolean hasChangedStateI(boolean z10, boolean z11, String str, String str2) {
        if (z10 != z11) {
            return true;
        }
        if (z10) {
            this.logger.debug(str, new Object[0]);
        } else {
            this.logger.debug(str2, new Object[0]);
        }
        return false;
    }

    private boolean isEnabledI() {
        ActivityState activityState = this.activityState;
        if (activityState != null) {
            return activityState.enabled;
        }
        return this.internalState.isEnabled();
    }

    private boolean isValidReferrerDetails(ReferrerDetails referrerDetails) {
        String str;
        if (referrerDetails == null || (str = referrerDetails.installReferrer) == null || str.length() == 0) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addGlobalCallbackParameter$21(final String str, final String str2) {
        this.firstSessionDelayManager.b("add global callback parameter", new IRunActivityHandler() { // from class: com.adjust.sdk.b0
            @Override // com.adjust.sdk.IRunActivityHandler
            public final void run(ActivityHandler activityHandler) {
                activityHandler.addGlobalCallbackParameterI(str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addGlobalPartnerParameter$23(final String str, final String str2) {
        this.firstSessionDelayManager.b("add global partner parameter", new IRunActivityHandler() { // from class: com.adjust.sdk.t
            @Override // com.adjust.sdk.IRunActivityHandler
            public final void run(ActivityHandler activityHandler) {
                activityHandler.addGlobalPartnerParameterI(str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$endFirstSessionDelay$48() {
        i1 i1Var = this.firstSessionDelayManager;
        if (i1Var.f4324c == 3) {
            i1Var.f4324c = 4;
            i1Var.f4322a.initI();
            ArrayList arrayList = i1Var.f4323b;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                ((Runnable) obj).run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$gdprForgetMe$35() {
        this.firstSessionDelayManager.a(new Runnable() { // from class: com.adjust.sdk.k0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$gdprForgetMe$34();
            }
        }, "GDPR forget device");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$isEnabled$10(final OnIsEnabledListener onIsEnabledListener) {
        new Handler(this.adjustConfig.context.getMainLooper()).post(new Runnable() { // from class: com.adjust.sdk.j
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$isEnabled$9(onIsEnabledListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$isEnabled$11(final OnIsEnabledListener onIsEnabledListener) {
        this.firstSessionDelayManager.a(new Runnable() { // from class: com.adjust.sdk.r0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$isEnabled$10(onIsEnabledListener);
            }
        }, "is SDK enabled");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$isEnabled$9(OnIsEnabledListener onIsEnabledListener) {
        onIsEnabledListener.onIsEnabledRead(isEnabledI());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$new$2(AdjustConfig adjustConfig) {
        readAttributionI(adjustConfig.context);
        readActivityStateI(adjustConfig.context);
        readEventMetadataI(adjustConfig.context);
        i1 i1Var = this.firstSessionDelayManager;
        if (i1Var.f4322a.getActivityState() == null && i1Var.f4322a.getAdjustConfig().isFirstSessionDelayEnabled) {
            i1Var.f4324c = 3;
            return;
        }
        i1Var.f4324c = 2;
        i1Var.f4322a.initI();
        ArrayList arrayList = i1Var.f4323b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((Runnable) obj).run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityLifecycle$0(boolean z10) {
        Boolean bool = this.internalState.foregroundOrElseBackground;
        if (bool != null && bool.booleanValue() == z10) {
            return;
        }
        this.internalState.foregroundOrElseBackground = Boolean.valueOf(z10);
        if (z10) {
            onResumeI();
        } else {
            onPauseI();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityLifecycle$1(final boolean z10) {
        this.firstSessionDelayManager.a(new Runnable() { // from class: com.adjust.sdk.b
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$onActivityLifecycle$0(z10);
            }
        }, "activity state");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processAndResolveDeeplink$15(final AdjustDeeplink adjustDeeplink, final long j10) {
        this.firstSessionDelayManager.a(new Runnable() { // from class: com.adjust.sdk.n0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$processAndResolveDeeplink$14(adjustDeeplink, j10);
            }
        }, "process and resolve deep link");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDeeplink$13(final AdjustDeeplink adjustDeeplink, final long j10) {
        this.firstSessionDelayManager.a(new Runnable() { // from class: com.adjust.sdk.l0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$processDeeplink$12(adjustDeeplink, j10);
            }
        }, "process deep link");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeGlobalCallbackParameter$25(final String str) {
        this.firstSessionDelayManager.b("remove global callback parameter", new IRunActivityHandler() { // from class: com.adjust.sdk.q0
            @Override // com.adjust.sdk.IRunActivityHandler
            public final void run(ActivityHandler activityHandler) {
                activityHandler.removeGlobalCallbackParameterI(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeGlobalCallbackParameters$29() {
        this.firstSessionDelayManager.b("remove global callback parameters", new IRunActivityHandler() { // from class: com.adjust.sdk.c
            @Override // com.adjust.sdk.IRunActivityHandler
            public final void run(ActivityHandler activityHandler) {
                activityHandler.removeGlobalCallbackParametersI();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeGlobalPartnerParameter$27(final String str) {
        this.firstSessionDelayManager.b("remove global partner parameter", new IRunActivityHandler() { // from class: com.adjust.sdk.g
            @Override // com.adjust.sdk.IRunActivityHandler
            public final void run(ActivityHandler activityHandler) {
                activityHandler.removeGlobalPartnerParameterI(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeGlobalPartnerParameters$31() {
        this.firstSessionDelayManager.b("remove global partner parameters", new IRunActivityHandler() { // from class: com.adjust.sdk.k
            @Override // com.adjust.sdk.IRunActivityHandler
            public final void run(ActivityHandler activityHandler) {
                activityHandler.removeGlobalPartnerParametersI();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendPreinstallReferrer$19() {
        this.firstSessionDelayManager.a(new Runnable() { // from class: com.adjust.sdk.v
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$sendPreinstallReferrer$18();
            }
        }, "send preinstall referrer");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendReftagReferrer$17() {
        this.firstSessionDelayManager.a(new Runnable() { // from class: com.adjust.sdk.w0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$sendReftagReferrer$16();
            }
        }, "send referrer");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$setCoppaComplianceInDelay$49(boolean z10) {
        i1 i1Var = this.firstSessionDelayManager;
        if (i1Var.f4324c != 3) {
            return;
        }
        i1Var.f4322a.getAdjustConfig().coppaComplianceEnabled = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setEnabled$6(final boolean z10) {
        String str;
        i1 i1Var = this.firstSessionDelayManager;
        if (z10) {
            str = "enable";
        } else {
            str = "disable";
        }
        i1Var.a(new Runnable() { // from class: com.adjust.sdk.f0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$setEnabled$5(z10);
            }
        }, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$setExternalDeviceIdInDelay$51(String str) {
        i1 i1Var = this.firstSessionDelayManager;
        if (i1Var.f4324c != 3) {
            return;
        }
        i1Var.f4322a.getAdjustConfig().externalDeviceId = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOfflineMode$8(final boolean z10) {
        String str;
        i1 i1Var = this.firstSessionDelayManager;
        if (z10) {
            str = "put SDK in offline mode";
        } else {
            str = "put SDK back to online mode";
        }
        i1Var.a(new Runnable() { // from class: com.adjust.sdk.p
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$setOfflineMode$7(z10);
            }
        }, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$setPlayStoreKidsComplianceInDelay$50(boolean z10) {
        i1 i1Var = this.firstSessionDelayManager;
        if (i1Var.f4324c != 3) {
            return;
        }
        i1Var.f4322a.getAdjustConfig().playStoreKidsComplianceEnabled = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setPushToken$32(boolean z10, String str) {
        if (!z10) {
            SharedPreferencesManager.getDefaultInstance(getContext()).savePushToken(str);
        }
        if (this.activityState == null) {
            return;
        }
        setPushTokenI(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setPushToken$33(final boolean z10, final String str) {
        this.firstSessionDelayManager.a(new Runnable() { // from class: com.adjust.sdk.z0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$setPushToken$32(z10, str);
            }
        }, "set push token");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$trackAdRevenue$41(final AdjustAdRevenue adjustAdRevenue) {
        this.firstSessionDelayManager.a(new Runnable() { // from class: com.adjust.sdk.u0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$trackAdRevenue$40(adjustAdRevenue);
            }
        }, "track ad revenue");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$trackEvent$3(AdjustEvent adjustEvent) {
        if (this.activityState == null) {
            this.logger.warn("Event tracked before first activity resumed.\nIf it was triggered in the Application class, it might timestamp or even send an install long before the user opens the app.\nPlease check https://github.com/adjust/android_sdk#can-i-trigger-an-event-at-application-launch for more information.", new Object[0]);
            startI();
        }
        trackEventI(adjustEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$trackEvent$4(final AdjustEvent adjustEvent) {
        this.firstSessionDelayManager.a(new Runnable() { // from class: com.adjust.sdk.f
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$trackEvent$3(adjustEvent);
            }
        }, "track event");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$trackMeasurementConsent$39(final boolean z10) {
        this.firstSessionDelayManager.b("track measurement consent", new IRunActivityHandler() { // from class: com.adjust.sdk.d0
            @Override // com.adjust.sdk.IRunActivityHandler
            public final void run(ActivityHandler activityHandler) {
                activityHandler.tryTrackMeasurementConsentI(z10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$trackPlayStoreSubscription$43(final AdjustPlayStoreSubscription adjustPlayStoreSubscription) {
        this.firstSessionDelayManager.a(new Runnable() { // from class: com.adjust.sdk.i
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$trackPlayStoreSubscription$42(adjustPlayStoreSubscription);
            }
        }, "track play store subscription");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$trackThirdPartySharing$37(final AdjustThirdPartySharing adjustThirdPartySharing) {
        this.firstSessionDelayManager.b("track third party sharing", new IRunActivityHandler() { // from class: com.adjust.sdk.w
            @Override // com.adjust.sdk.IRunActivityHandler
            public final void run(ActivityHandler activityHandler) {
                activityHandler.tryTrackThirdPartySharingI(AdjustThirdPartySharing.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$verifyAndTrackPlayStorePurchase$47(final AdjustEvent adjustEvent, final OnPurchaseVerificationFinishedListener onPurchaseVerificationFinishedListener) {
        this.firstSessionDelayManager.a(new Runnable() { // from class: com.adjust.sdk.i0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$verifyAndTrackPlayStorePurchase$46(adjustEvent, onPurchaseVerificationFinishedListener);
            }
        }, "verify and track play store purchase");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$verifyPlayStorePurchase$45(final AdjustPlayStorePurchase adjustPlayStorePurchase, final OnPurchaseVerificationFinishedListener onPurchaseVerificationFinishedListener) {
        this.firstSessionDelayManager.a(new Runnable() { // from class: com.adjust.sdk.s
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$verifyPlayStorePurchase$44(adjustPlayStorePurchase, onPurchaseVerificationFinishedListener);
            }
        }, "verify play store purchase");
    }

    private void launchAttributionListenerI(Handler handler) {
        if (this.adjustConfig.onAttributionChangedListener == null) {
            return;
        }
        handler.post(new j0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchAttributionResponseTasksI(AttributionResponseData attributionResponseData) {
        updateAdidI(attributionResponseData.adid);
        Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
        if (updateAttributionI(attributionResponseData.attribution)) {
            launchAttributionListenerI(handler);
        }
        prepareDeeplinkI(attributionResponseData.deeplink, handler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchDeeplinkMain(Intent intent, Uri uri) {
        if (this.adjustConfig.context.getPackageManager().queryIntentActivities(intent, 0).size() > 0) {
            this.logger.info("Open deferred deeplink (%s)", uri);
            this.adjustConfig.context.startActivity(intent);
            return;
        }
        this.logger.error("Unable to open deferred deeplink (%s)", uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchEventResponseTasksI(EventResponseData eventResponseData) {
        updateAdidI(eventResponseData.adid);
        Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
        boolean z10 = eventResponseData.success;
        if (z10 && this.adjustConfig.onEventTrackingSucceededListener != null) {
            this.logger.debug("Launching success event tracking listener", new Object[0]);
            handler.post(new d0(eventResponseData));
        } else if (!z10 && this.adjustConfig.onEventTrackingFailedListener != null) {
            this.logger.debug("Launching failed event tracking listener", new Object[0]);
            handler.post(new e0(eventResponseData));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchPurchaseVerificationResponseTasksI(PurchaseVerificationResponseData purchaseVerificationResponseData) {
        AdjustPurchaseVerificationResult adjustPurchaseVerificationResult;
        AdjustEvent adjustEvent;
        Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
        JSONObject jSONObject = purchaseVerificationResponseData.jsonResponse;
        if (jSONObject == null) {
            adjustPurchaseVerificationResult = new AdjustPurchaseVerificationResult("not_verified", 101, purchaseVerificationResponseData.message);
        } else {
            adjustPurchaseVerificationResult = new AdjustPurchaseVerificationResult(UtilNetworking.extractJsonString(jSONObject, "verification_status"), UtilNetworking.extractJsonInt(jSONObject, Module.ResponseKey.Code), UtilNetworking.extractJsonString(jSONObject, "message"));
        }
        handler.post(new k0(purchaseVerificationResponseData, adjustPurchaseVerificationResult));
        ActivityPackage activityPackage = purchaseVerificationResponseData.activityPackage;
        if (activityPackage != null && (adjustEvent = activityPackage.event) != null) {
            trackEventI(adjustEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchSdkClickResponseTasksI(SdkClickResponseData sdkClickResponseData) {
        updateAdidI(sdkClickResponseData.adid);
        Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
        if (updateAttributionI(sdkClickResponseData.attribution)) {
            launchAttributionListenerI(handler);
        }
        if (!TextUtils.isEmpty(sdkClickResponseData.resolvedDeeplink)) {
            OnDeeplinkResolvedListener onDeeplinkResolvedListener = this.cachedDeeplinkResolutionCallback;
            this.cachedDeeplinkResolutionCallback = null;
            if (onDeeplinkResolvedListener != null) {
                handler.post(new f0(onDeeplinkResolvedListener, sdkClickResponseData));
            }
        }
    }

    private void launchSessionResponseListenerI(SessionResponseData sessionResponseData, Handler handler) {
        boolean z10 = sessionResponseData.success;
        if (z10 && this.adjustConfig.onSessionTrackingSucceededListener != null) {
            this.logger.debug("Launching success session tracking listener", new Object[0]);
            handler.post(new h0(sessionResponseData));
        } else if (!z10 && this.adjustConfig.onSessionTrackingFailedListener != null) {
            this.logger.debug("Launching failed session tracking listener", new Object[0]);
            handler.post(new i0(sessionResponseData));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchSessionResponseTasksI(SessionResponseData sessionResponseData) {
        this.logger.debug("Launching SessionResponse tasks", new Object[0]);
        updateAdidI(sessionResponseData.adid);
        Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
        if (updateAttributionI(sessionResponseData.attribution)) {
            launchAttributionListenerI(handler);
        }
        if (this.attribution == null && !this.activityState.askingAttribution) {
            this.attributionHandler.getAttribution();
        }
        if (sessionResponseData.success) {
            SharedPreferencesManager.getDefaultInstance(getContext()).setInstallTracked();
        }
        launchSessionResponseListenerI(sessionResponseData, handler);
        prepareDeeplinkI(sessionResponseData.deeplink, handler);
        this.internalState.sessionResponseProcessed = true;
    }

    private void pauseSendingI() {
        this.attributionHandler.pauseSending();
        this.packageHandler.pauseSending();
        if (!toSendI(true)) {
            this.sdkClickHandler.pauseSending();
            this.purchaseVerificationHandler.pauseSending();
            return;
        }
        this.sdkClickHandler.resumeSending();
        this.purchaseVerificationHandler.resumeSending();
    }

    private boolean pausedI() {
        return pausedI(false);
    }

    private void preLaunchActionsI(List<IRunActivityHandler> list) {
        if (list != null) {
            for (IRunActivityHandler iRunActivityHandler : list) {
                iRunActivityHandler.run(this);
            }
        }
    }

    private void prepareDeeplinkI(Uri uri, Handler handler) {
        if (uri == null) {
            return;
        }
        this.logger.info("Deferred deeplink received (%s)", uri);
        handler.post(new l0(createDeeplinkIntentI(uri), uri));
    }

    private void processCachedDeeplinkI() {
        if (checkActivityStateI(this.activityState)) {
            SharedPreferencesManager defaultInstance = SharedPreferencesManager.getDefaultInstance(getContext());
            String deeplinkUrl = defaultInstance.getDeeplinkUrl();
            String deeplinkReferrer = defaultInstance.getDeeplinkReferrer();
            long deeplinkClickTime = defaultInstance.getDeeplinkClickTime();
            if (deeplinkUrl == null || deeplinkClickTime == -1) {
                return;
            }
            AdjustDeeplink adjustDeeplink = new AdjustDeeplink(Uri.parse(deeplinkUrl));
            if (deeplinkReferrer != null) {
                adjustDeeplink.setReferrer(Uri.parse(deeplinkReferrer));
            }
            processDeeplink(adjustDeeplink, deeplinkClickTime);
            defaultInstance.removeDeeplink();
        }
    }

    private void processCoppaComplianceI() {
        if (!this.adjustConfig.coppaComplianceEnabled) {
            resetThirdPartySharingCoppaActivityStateI();
        } else {
            disableThirdPartySharingForCoppaEnabledI();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processDeeplinkI */
    public void lambda$processDeeplink$12(AdjustDeeplink adjustDeeplink, long j10) {
        if (isEnabledI() && adjustDeeplink != null) {
            if (Util.isUrlFilteredOut(adjustDeeplink.getUrl())) {
                if (adjustDeeplink.getUrl() != null) {
                    ILogger iLogger = this.logger;
                    iLogger.debug("Deeplink (" + adjustDeeplink.getUrl().toString() + ") processing skipped", new Object[0]);
                    return;
                }
                return;
            }
            if (Util.isUrlWithTrackerQueryParam(adjustDeeplink.getUrl())) {
                String uri = adjustDeeplink.getUrl().toString();
                Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
                OnDeeplinkResolvedListener onDeeplinkResolvedListener = this.cachedDeeplinkResolutionCallback;
                this.cachedDeeplinkResolutionCallback = null;
                if (onDeeplinkResolvedListener != null) {
                    handler.post(new m0(onDeeplinkResolvedListener, uri));
                }
            }
            ActivityPackage buildDeeplinkSdkClickPackage = PackageFactory.buildDeeplinkSdkClickPackage(adjustDeeplink.getUrl(), adjustDeeplink.getReferrer(), j10, this.activityState, this.adjustConfig, this.deviceInfo, this.globalParameters, this.firstSessionDelayManager, this.internalState);
            if (buildDeeplinkSdkClickPackage == null) {
                return;
            }
            this.sdkClickHandler.sendSdkClick(buildDeeplinkSdkClickPackage);
        }
    }

    private void processPreLaunchArraysI() {
        if (this.cachedAdjustThirdPartySharingArray != null && canTrackThirdPartySharingI()) {
            for (AdjustThirdPartySharing adjustThirdPartySharing : this.cachedAdjustThirdPartySharingArray) {
                trackThirdPartySharingI(adjustThirdPartySharing);
            }
        }
        this.cachedAdjustThirdPartySharingArray = null;
        if (this.cachedLastMeasurementConsentTrack != null && canTrackMeasurementConsentI()) {
            trackMeasurementConsentI(this.cachedLastMeasurementConsentTrack.booleanValue());
        }
        this.cachedLastMeasurementConsentTrack = null;
    }

    private void processSessionI() {
        if (this.activityState.isGdprForgotten) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        ActivityState activityState = this.activityState;
        long j10 = currentTimeMillis - activityState.lastActivity;
        if (j10 < 0) {
            this.logger.error(TIME_TRAVEL, new Object[0]);
            this.activityState.lastActivity = currentTimeMillis;
            writeActivityStateI();
        } else if (j10 > SESSION_INTERVAL) {
            trackNewSessionI(currentTimeMillis);
            checkAfterNewStartI();
        } else if (j10 > SUBSESSION_INTERVAL) {
            int i10 = activityState.subsessionCount + 1;
            activityState.subsessionCount = i10;
            activityState.sessionLength += j10;
            activityState.lastActivity = currentTimeMillis;
            this.logger.verbose("Started subsession %d of session %d", Integer.valueOf(i10), Integer.valueOf(this.activityState.sessionCount));
            writeActivityStateI();
            checkForPreinstallI();
            this.installReferrer.startConnection();
            readInstallReferrerMeta();
            readInstallReferrerHuaweiAds();
            readInstallReferrerHuaweiAppGallery();
            readInstallReferrerSamsung();
            readInstallReferrerXiaomi();
            readInstallReferrerVivo();
            readLicenseVerificationData();
        } else {
            this.logger.verbose("Time span since last activity too short for a new subsession", new Object[0]);
        }
    }

    public static void queueGetAdidWithTimeout(long j10, OnAdidReadListener onAdidReadListener, ArrayList<AdjustTimeoutCallback> arrayList, Context context) {
        AdjustTimeoutCallback adjustTimeoutCallback = new AdjustTimeoutCallback(onAdidReadListener);
        synchronized (arrayList) {
            arrayList.add(adjustTimeoutCallback);
        }
        TimerOnce timerOnce = new TimerOnce(new l(adjustTimeoutCallback, arrayList, context), Constants.ADID_TIMEOUT_TIMER_NAME);
        adjustTimeoutCallback.setTimer(timerOnce);
        timerOnce.startIn(j10);
    }

    public static void queueGetAttributionWithTimeout(long j10, OnAttributionReadListener onAttributionReadListener, ArrayList<AdjustTimeoutCallback> arrayList, Context context) {
        AdjustTimeoutCallback adjustTimeoutCallback = new AdjustTimeoutCallback(onAttributionReadListener);
        synchronized (arrayList) {
            arrayList.add(adjustTimeoutCallback);
        }
        TimerOnce timerOnce = new TimerOnce(new m(adjustTimeoutCallback, arrayList, context), Constants.ATTRIBUTION_TIMEOUT_TIMER_NAME);
        adjustTimeoutCallback.setTimer(timerOnce);
        timerOnce.startIn(j10);
    }

    private void readActivityStateI(Context context) {
        try {
            this.activityState = (ActivityState) Util.readObject(context, Constants.ACTIVITY_STATE_FILENAME, ACTIVITY_STATE_NAME, ActivityState.class);
        } catch (Exception e10) {
            this.logger.error("Failed to read %s file (%s)", ACTIVITY_STATE_NAME, e10.getMessage());
            this.activityState = null;
        }
    }

    private void readAttributionI(Context context) {
        try {
            this.attribution = (AdjustAttribution) Util.readObject(context, Constants.ATTRIBUTION_FILENAME, ATTRIBUTION_NAME, AdjustAttribution.class);
        } catch (Exception e10) {
            this.logger.error("Failed to read %s file (%s)", ATTRIBUTION_NAME, e10.getMessage());
            this.attribution = null;
        }
    }

    private void readConfigFile(Context context) {
        try {
            InputStream open = context.getAssets().open("adjust_config.properties");
            Properties properties = new Properties();
            properties.load(open);
            this.logger.verbose("adjust_config.properties file read and loaded", new Object[0]);
            String property = properties.getProperty("defaultTracker");
            if (property != null) {
                this.adjustConfig.defaultTracker = property;
            }
        } catch (Exception e10) {
            this.logger.debug("%s file not found in this app", e10.getMessage());
        }
    }

    private void readEventMetadataI(Context context) {
        try {
            this.eventMetadata = (EventMetadata) Util.readObject(context, Constants.EVENT_METADATA_FILENAME, EVENT_METADATA_NAME, EventMetadata.class);
        } catch (Exception e10) {
            this.logger.error("Failed to read %s file (%s)", EVENT_METADATA_NAME, e10.getMessage());
        }
        if (this.eventMetadata == null) {
            this.eventMetadata = new EventMetadata();
        }
    }

    private void readGlobalCallbackParametersI(Context context) {
        try {
            this.globalParameters.callbackParameters = (Map) Util.readObject(context, Constants.GLOBAL_CALLBACK_PARAMETERS_FILENAME, GLOBAL_CALLBACK_PARAMETERS_NAME, Map.class);
        } catch (Exception e10) {
            this.logger.error("Failed to read %s file (%s)", GLOBAL_CALLBACK_PARAMETERS_NAME, e10.getMessage());
            this.globalParameters.callbackParameters = null;
        }
    }

    private void readGlobalPartnerParametersI(Context context) {
        try {
            this.globalParameters.partnerParameters = (Map) Util.readObject(context, Constants.GLOBAL_PARTNER_PARAMETERS_FILENAME, GLOBAL_PARTNER_PARAMETERS_NAME, Map.class);
        } catch (Exception e10) {
            this.logger.error("Failed to read %s file (%s)", GLOBAL_PARTNER_PARAMETERS_NAME, e10.getMessage());
            this.globalParameters.partnerParameters = null;
        }
    }

    private void readInstallReferrerHuaweiAds() {
        this.executor.submit(new y());
    }

    private void readInstallReferrerHuaweiAppGallery() {
        this.executor.submit(new z());
    }

    private void readInstallReferrerMeta() {
        this.executor.submit(new w());
    }

    private void readInstallReferrerSamsung() {
        this.executor.submit(new a0());
    }

    private void readInstallReferrerVivo() {
        this.executor.submit(new c0());
    }

    private void readInstallReferrerXiaomi() {
        this.executor.submit(new b0());
    }

    private void readLicenseVerificationData() {
        this.executor.submit(new x());
    }

    private void resetThirdPartySharingCoppaActivityStateI() {
        ActivityState activityState = this.activityState;
        if (activityState != null && activityState.isThirdPartySharingDisabledForCoppa) {
            activityState.isThirdPartySharingDisabledForCoppa = false;
            writeActivityStateI();
        }
    }

    private void resumeSendingI() {
        this.attributionHandler.resumeSending();
        this.packageHandler.resumeSending();
        this.sdkClickHandler.resumeSending();
        this.purchaseVerificationHandler.resumeSending();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendInstallReferrerI(ReferrerDetails referrerDetails, String str) {
        if (!isEnabledI() || !isValidReferrerDetails(referrerDetails) || Util.isEqualReferrerDetails(referrerDetails, str, this.activityState)) {
            return;
        }
        this.sdkClickHandler.sendSdkClick(PackageFactory.buildInstallReferrerSdkClickPackage(referrerDetails, str, this.activityState, this.adjustConfig, this.deviceInfo, this.globalParameters, this.firstSessionDelayManager, this.internalState));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLicenseVerificationDataI(LicenseData licenseData) {
        if (isEnabledI() && licenseData != null && licenseData.isValid()) {
            this.sdkClickHandler.sendSdkClick(PackageFactory.buildLicenseVerificationSdkClickPackage(licenseData, this.activityState, this.adjustConfig, this.deviceInfo, this.globalParameters, this.firstSessionDelayManager, this.internalState));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendPreinstallReferrerI */
    public void lambda$sendPreinstallReferrer$18() {
        String preinstallReferrer;
        if (isEnabledI() && this.activityState != null && (preinstallReferrer = SharedPreferencesManager.getDefaultInstance(getContext()).getPreinstallReferrer()) != null && !preinstallReferrer.isEmpty()) {
            this.sdkClickHandler.sendPreinstallPayload(preinstallReferrer, Constants.SYSTEM_INSTALLER_REFERRER);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendReftagReferrerI */
    public void lambda$sendReftagReferrer$16() {
        if (!isEnabledI() || this.activityState == null) {
            return;
        }
        this.sdkClickHandler.sendReftagReferrers();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAskingAttributionI(boolean z10) {
        this.activityState.askingAttribution = z10;
        writeActivityStateI();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setEnabledI */
    public void lambda$setEnabled$5(boolean z10) {
        ActivityState activityState;
        if (!hasChangedStateI(isEnabledI(), z10, "Adjust already enabled", "Adjust already disabled")) {
            return;
        }
        if (z10 && (activityState = this.activityState) != null && activityState.isGdprForgotten) {
            this.logger.error("Re-enabling SDK not possible for forgotten user", new Object[0]);
            return;
        }
        this.internalState.enabled = z10;
        ActivityState activityState2 = this.activityState;
        if (activityState2 == null) {
            updateStatusI(!z10, "Handlers will start as paused due to the SDK being disabled", "Handlers will still start as paused", "Handlers will start as active due to the SDK being enabled");
            return;
        }
        activityState2.enabled = z10;
        writeActivityStateI();
        if (z10) {
            SharedPreferencesManager defaultInstance = SharedPreferencesManager.getDefaultInstance(getContext());
            if (defaultInstance.getGdprForgetMe()) {
                lambda$gdprForgetMe$34();
            } else {
                processCoppaComplianceI();
                processPreLaunchArraysI();
            }
            if (!defaultInstance.getInstallTracked()) {
                this.logger.debug("Detected that install was not tracked at enable time", new Object[0]);
                trackNewSessionI(System.currentTimeMillis());
            }
            checkAfterNewStartI(defaultInstance);
        }
        updateStatusI(!z10, "Pausing handlers due to SDK being disabled", "Handlers remain paused", "Resuming handlers due to SDK being enabled");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setOfflineModeI */
    public void lambda$setOfflineMode$7(boolean z10) {
        if (!hasChangedStateI(this.internalState.isOffline(), z10, "Adjust already in offline mode", "Adjust already in online mode")) {
            return;
        }
        this.internalState.offline = z10;
        if (this.activityState == null) {
            updateStatusI(z10, "Handlers will start paused due to SDK being offline", "Handlers will still start as paused", "Handlers will start as active due to SDK being online");
        } else {
            updateStatusI(z10, "Pausing handlers to put SDK offline mode", "Handlers remain paused", "Resuming handlers to put SDK in online mode");
        }
    }

    private void setPushTokenI(String str) {
        if (checkActivityStateI(this.activityState) && isEnabledI()) {
            ActivityState activityState = this.activityState;
            if (activityState.isGdprForgotten || str == null || str.equals(activityState.pushToken)) {
                return;
            }
            this.activityState.pushToken = str;
            writeActivityStateI();
            PackageBuilder packageBuilder = new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, this.globalParameters, this.firstSessionDelayManager, System.currentTimeMillis());
            packageBuilder.internalState = this.internalState;
            this.packageHandler.addPackage(packageBuilder.buildInfoPackage(Constants.PUSH));
            SharedPreferencesManager.getDefaultInstance(getContext()).removePushToken();
            this.packageHandler.sendFirstPackage();
        }
    }

    private boolean shouldDisableThirdPartySharingWhenCoppaEnabled() {
        if (this.activityState == null || !isEnabledI()) {
            return false;
        }
        ActivityState activityState = this.activityState;
        if (activityState.isGdprForgotten) {
            return false;
        }
        return !activityState.isThirdPartySharingDisabledForCoppa;
    }

    private boolean shouldProcessEventI(String str) {
        if (str != null && !str.isEmpty()) {
            if (this.activityState.eventDeduplicationIdExists(str)) {
                this.logger.info("Skipping duplicate event with deduplication ID '%s'", str);
                return false;
            }
            this.activityState.addDeduplicationId(str);
            this.logger.verbose("Added deduplication ID '%s'", str);
        }
        return true;
    }

    private void startBackgroundTimerI() {
        if (this.backgroundTimer == null || !toSendI() || this.backgroundTimer.getFireIn() > 0) {
            return;
        }
        this.backgroundTimer.startIn(BACKGROUND_TIMER_INTERVAL);
    }

    private void startFirstSessionI() {
        ActivityState activityState = new ActivityState();
        this.activityState = activityState;
        activityState.setEventDeduplicationIdsMaxSize(this.adjustConfig.getEventDeduplicationIdsMaxSize());
        updateHandlersStatusAndSendI();
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferencesManager defaultInstance = SharedPreferencesManager.getDefaultInstance(getContext());
        this.activityState.pushToken = defaultInstance.getPushToken();
        if (this.internalState.isEnabled()) {
            if (defaultInstance.getGdprForgetMe()) {
                lambda$gdprForgetMe$34();
            } else {
                processCoppaComplianceI();
                processPreLaunchArraysI();
                this.activityState.sessionCount = 1;
                transferSessionPackageI(currentTimeMillis);
                checkAfterNewStartI(defaultInstance);
            }
        }
        this.activityState.resetSessionAttributes(currentTimeMillis);
        this.activityState.enabled = this.internalState.isEnabled();
        writeActivityStateI();
        defaultInstance.removePushToken();
        defaultInstance.removeGdprForgetMe();
        processCachedDeeplinkI();
    }

    private void startForegroundTimerI() {
        if (!isEnabledI()) {
            return;
        }
        this.foregroundTimer.start();
    }

    private void startI() {
        if (this.activityState == null) {
            AdjustSigner.onResume(this.adjustConfig.logger);
            startFirstSessionI();
            return;
        }
        processPreLaunchArraysI();
        if (!this.activityState.enabled) {
            return;
        }
        AdjustSigner.onResume(this.adjustConfig.logger);
        updateHandlersStatusAndSendI();
        processCoppaComplianceI();
        processSessionI();
        checkAttributionStateI();
        processCachedDeeplinkI();
    }

    private void stopBackgroundTimerI() {
        TimerOnce timerOnce = this.backgroundTimer;
        if (timerOnce == null) {
            return;
        }
        timerOnce.cancel();
    }

    private void stopForegroundTimerI() {
        this.foregroundTimer.suspend();
    }

    private void teardownActivityStateS() {
        synchronized (ActivityState.class) {
            try {
                if (this.activityState == null) {
                    return;
                }
                this.activityState = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void teardownAllGlobalParametersS() {
        synchronized (GlobalParameters.class) {
            try {
                if (this.globalParameters == null) {
                    return;
                }
                this.globalParameters = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void teardownAttributionS() {
        synchronized (AdjustAttribution.class) {
            try {
                if (this.attribution == null) {
                    return;
                }
                this.attribution = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void teardownEventMetadataS() {
        synchronized (EventMetadata.class) {
            try {
                if (this.eventMetadata == null) {
                    return;
                }
                this.eventMetadata = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private boolean toSendI() {
        return toSendI(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: trackAdRevenueI */
    public void lambda$trackAdRevenue$40(AdjustAdRevenue adjustAdRevenue) {
        if (!checkActivityStateI(this.activityState) || !isEnabledI() || !checkAdjustAdRevenue(adjustAdRevenue) || this.activityState.isGdprForgotten) {
            return;
        }
        PackageBuilder packageBuilder = new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, this.globalParameters, this.firstSessionDelayManager, System.currentTimeMillis());
        packageBuilder.internalState = this.internalState;
        this.packageHandler.addPackage(packageBuilder.buildAdRevenuePackage(adjustAdRevenue));
        this.packageHandler.sendFirstPackage();
    }

    private void trackEventI(AdjustEvent adjustEvent) {
        if (!checkActivityStateI(this.activityState) || !isEnabledI() || !checkEventI(adjustEvent) || this.activityState.isGdprForgotten || !shouldProcessEventI(adjustEvent.deduplicationId)) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        int incrementSequenceForEvent = this.eventMetadata.incrementSequenceForEvent(adjustEvent.eventToken);
        this.activityState.eventCount++;
        updateActivityStateI(currentTimeMillis);
        PackageBuilder packageBuilder = new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, this.globalParameters, this.firstSessionDelayManager, currentTimeMillis);
        packageBuilder.internalState = this.internalState;
        this.packageHandler.addPackage(packageBuilder.buildEventPackage(adjustEvent, incrementSequenceForEvent));
        this.packageHandler.sendFirstPackage();
        if (this.adjustConfig.isSendingInBackgroundEnabled && this.internalState.isInBackground()) {
            startBackgroundTimerI();
        }
        writeActivityStateI();
        writeEventMetadataI();
    }

    private void trackMeasurementConsentI(boolean z10) {
        PackageBuilder packageBuilder = new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, this.globalParameters, this.firstSessionDelayManager, System.currentTimeMillis());
        packageBuilder.internalState = this.internalState;
        this.packageHandler.addPackage(packageBuilder.buildMeasurementConsentPackage(z10));
        this.packageHandler.sendFirstPackage();
    }

    private void trackNewSessionI(long j10) {
        ActivityState activityState = this.activityState;
        activityState.sessionCount++;
        activityState.lastInterval = j10 - activityState.lastActivity;
        transferSessionPackageI(j10);
        this.activityState.resetSessionAttributes(j10);
        writeActivityStateI();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: trackPlayStoreSubscriptionI */
    public void lambda$trackPlayStoreSubscription$42(AdjustPlayStoreSubscription adjustPlayStoreSubscription) {
        if (!checkActivityStateI(this.activityState) || !isEnabledI() || this.activityState.isGdprForgotten) {
            return;
        }
        PackageBuilder packageBuilder = new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, this.globalParameters, this.firstSessionDelayManager, System.currentTimeMillis());
        packageBuilder.internalState = this.internalState;
        this.packageHandler.addPackage(packageBuilder.buildSubscriptionPackage(adjustPlayStoreSubscription));
        this.packageHandler.sendFirstPackage();
    }

    private void trackThirdPartySharingI(AdjustThirdPartySharing adjustThirdPartySharing) {
        PackageBuilder packageBuilder = new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, this.globalParameters, this.firstSessionDelayManager, System.currentTimeMillis());
        packageBuilder.internalState = this.internalState;
        this.packageHandler.addPackage(packageBuilder.buildThirdPartySharingPackage(adjustThirdPartySharing));
        this.packageHandler.sendFirstPackage();
    }

    private void transferSessionPackageI(long j10) {
        PackageBuilder packageBuilder = new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, this.globalParameters, this.firstSessionDelayManager, j10);
        packageBuilder.internalState = this.internalState;
        this.packageHandler.addPackage(packageBuilder.buildSessionPackage());
        this.packageHandler.sendFirstPackage();
    }

    private boolean updateActivityStateI(long j10) {
        if (!checkActivityStateI(this.activityState)) {
            return false;
        }
        ActivityState activityState = this.activityState;
        long j11 = j10 - activityState.lastActivity;
        if (j11 > SESSION_INTERVAL) {
            return false;
        }
        activityState.lastActivity = j10;
        if (j11 < 0) {
            this.logger.error(TIME_TRAVEL, new Object[0]);
            return true;
        }
        activityState.sessionLength += j11;
        activityState.timeSpent += j11;
        return true;
    }

    private void updateAdidI(String str) {
        ArrayList arrayList;
        ArrayList arrayList2;
        if (str != null) {
            if (!str.equals(this.activityState.adid)) {
                this.activityState.adid = str;
                writeActivityStateI();
            }
            synchronized (this.cachedAdidReadCallbacks) {
                try {
                    arrayList = null;
                    if (!this.cachedAdidReadCallbacks.isEmpty()) {
                        arrayList2 = new ArrayList(this.cachedAdidReadCallbacks);
                        this.cachedAdidReadCallbacks.clear();
                    } else {
                        arrayList2 = null;
                    }
                } finally {
                }
            }
            if (arrayList2 != null) {
                new Handler(this.adjustConfig.context.getMainLooper()).post(new k(arrayList2, str));
            }
            synchronized (this.cachedAdidReadTimeoutCallbacks) {
                try {
                    if (!this.cachedAdidReadTimeoutCallbacks.isEmpty()) {
                        arrayList = new ArrayList(this.cachedAdidReadTimeoutCallbacks);
                        this.cachedAdidReadTimeoutCallbacks.clear();
                    }
                } finally {
                }
            }
            if (arrayList != null) {
                new Handler(this.adjustConfig.context.getMainLooper()).post(new v(arrayList, str));
            }
        }
    }

    private void updateHandlersStatusAndSendI() {
        if (!toSendI()) {
            pauseSendingI();
            return;
        }
        resumeSendingI();
        this.packageHandler.sendFirstPackage();
    }

    private void updateStatusI(boolean z10, String str, String str2, String str3) {
        if (z10) {
            this.logger.info(str, new Object[0]);
        } else if (pausedI(false)) {
            if (pausedI(true)) {
                this.logger.info(str2, new Object[0]);
            } else {
                ILogger iLogger = this.logger;
                iLogger.info(str2 + ", except the Sdk Click Handler", new Object[0]);
            }
        } else {
            this.logger.info(str3, new Object[0]);
        }
        updateHandlersStatusAndSendI();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: verifyAndTrackPlayStorePurchaseI */
    public void lambda$verifyAndTrackPlayStorePurchase$46(AdjustEvent adjustEvent, OnPurchaseVerificationFinishedListener onPurchaseVerificationFinishedListener) {
        if (onPurchaseVerificationFinishedListener == null) {
            this.logger.warn("Purchase verification aborted because verification callback is null", new Object[0]);
        } else if (this.adjustConfig.isDataResidency) {
            this.logger.warn("Purchase verification not available for data residency users right now", new Object[0]);
            onPurchaseVerificationFinishedListener.onVerificationFinished(new AdjustPurchaseVerificationResult("not_verified", 109, "Purchase verification not available for data residency users right now"));
        } else if (!checkActivityStateI(this.activityState)) {
            onPurchaseVerificationFinishedListener.onVerificationFinished(new AdjustPurchaseVerificationResult("not_verified", 102, "Purchase verification aborted because SDK is still not initialized"));
            this.logger.warn("Purchase verification aborted because SDK is still not initialized", new Object[0]);
        } else if (!isEnabledI()) {
            onPurchaseVerificationFinishedListener.onVerificationFinished(new AdjustPurchaseVerificationResult("not_verified", 103, "Purchase verification aborted because SDK is disabled"));
            this.logger.warn("Purchase verification aborted because SDK is disabled", new Object[0]);
        } else if (this.activityState.isGdprForgotten) {
            onPurchaseVerificationFinishedListener.onVerificationFinished(new AdjustPurchaseVerificationResult("not_verified", 104, "Purchase verification aborted because user is GDPR forgotten"));
            this.logger.warn("Purchase verification aborted because user is GDPR forgotten", new Object[0]);
        } else if (adjustEvent == null) {
            this.logger.warn("Purchase verification aborted because event instance is null", new Object[0]);
            onPurchaseVerificationFinishedListener.onVerificationFinished(new AdjustPurchaseVerificationResult("not_verified", 106, "Purchase verification aborted because event instance is null"));
        } else {
            ActivityPackage buildVerificationPackage = new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, this.globalParameters, this.firstSessionDelayManager, System.currentTimeMillis()).buildVerificationPackage(adjustEvent, onPurchaseVerificationFinishedListener);
            if (buildVerificationPackage == null) {
                this.logger.warn("Purchase verification aborted because verification package is null", new Object[0]);
                onPurchaseVerificationFinishedListener.onVerificationFinished(new AdjustPurchaseVerificationResult("not_verified", 107, "Purchase verification aborted because verification package is null"));
                return;
            }
            buildVerificationPackage.event = adjustEvent;
            this.purchaseVerificationHandler.sendPurchaseVerificationPackage(buildVerificationPackage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: verifyPlayStorePurchaseI */
    public void lambda$verifyPlayStorePurchase$44(AdjustPlayStorePurchase adjustPlayStorePurchase, OnPurchaseVerificationFinishedListener onPurchaseVerificationFinishedListener) {
        if (onPurchaseVerificationFinishedListener == null) {
            this.logger.warn("Purchase verification aborted because verification callback is null", new Object[0]);
        } else if (this.adjustConfig.isDataResidency) {
            this.logger.warn("Purchase verification not available for data residency users right now", new Object[0]);
            onPurchaseVerificationFinishedListener.onVerificationFinished(new AdjustPurchaseVerificationResult("not_verified", 109, "Purchase verification not available for data residency users right now"));
        } else if (!checkActivityStateI(this.activityState)) {
            onPurchaseVerificationFinishedListener.onVerificationFinished(new AdjustPurchaseVerificationResult("not_verified", 102, "Purchase verification aborted because SDK is still not initialized"));
            this.logger.warn("Purchase verification aborted because SDK is still not initialized", new Object[0]);
        } else if (!isEnabledI()) {
            onPurchaseVerificationFinishedListener.onVerificationFinished(new AdjustPurchaseVerificationResult("not_verified", 103, "Purchase verification aborted because SDK is disabled"));
            this.logger.warn("Purchase verification aborted because SDK is disabled", new Object[0]);
        } else if (this.activityState.isGdprForgotten) {
            onPurchaseVerificationFinishedListener.onVerificationFinished(new AdjustPurchaseVerificationResult("not_verified", 104, "Purchase verification aborted because user is GDPR forgotten"));
            this.logger.warn("Purchase verification aborted because user is GDPR forgotten", new Object[0]);
        } else if (adjustPlayStorePurchase == null) {
            this.logger.warn("Purchase verification aborted because purchase instance is null", new Object[0]);
            onPurchaseVerificationFinishedListener.onVerificationFinished(new AdjustPurchaseVerificationResult("not_verified", 105, "Purchase verification aborted because purchase instance is null"));
        } else {
            PackageBuilder packageBuilder = new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, this.globalParameters, this.firstSessionDelayManager, System.currentTimeMillis());
            packageBuilder.internalState = this.internalState;
            ActivityPackage buildVerificationPackage = packageBuilder.buildVerificationPackage(adjustPlayStorePurchase, onPurchaseVerificationFinishedListener);
            if (buildVerificationPackage == null) {
                this.logger.warn("Purchase verification aborted because verification package is null", new Object[0]);
                onPurchaseVerificationFinishedListener.onVerificationFinished(new AdjustPurchaseVerificationResult("not_verified", 106, "Purchase verification aborted because verification package is null"));
                return;
            }
            this.purchaseVerificationHandler.sendPurchaseVerificationPackage(buildVerificationPackage);
        }
    }

    private void writeActivityStateI() {
        synchronized (ActivityState.class) {
            try {
                ActivityState activityState = this.activityState;
                if (activityState == null) {
                    return;
                }
                Util.writeObject(activityState, this.adjustConfig.context, Constants.ACTIVITY_STATE_FILENAME, ACTIVITY_STATE_NAME);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void writeAttributionI() {
        synchronized (AdjustAttribution.class) {
            try {
                AdjustAttribution adjustAttribution = this.attribution;
                if (adjustAttribution == null) {
                    return;
                }
                Util.writeObject(adjustAttribution, this.adjustConfig.context, Constants.ATTRIBUTION_FILENAME, ATTRIBUTION_NAME);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void writeEventMetadataI() {
        synchronized (EventMetadata.class) {
            try {
                EventMetadata eventMetadata = this.eventMetadata;
                if (eventMetadata == null) {
                    return;
                }
                Util.writeObject(eventMetadata, this.adjustConfig.context, Constants.EVENT_METADATA_FILENAME, EVENT_METADATA_NAME);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void writeGlobalCallbackParametersI() {
        synchronized (GlobalParameters.class) {
            try {
                GlobalParameters globalParameters = this.globalParameters;
                if (globalParameters == null) {
                    return;
                }
                Util.writeObject(globalParameters.callbackParameters, this.adjustConfig.context, Constants.GLOBAL_CALLBACK_PARAMETERS_FILENAME, GLOBAL_CALLBACK_PARAMETERS_NAME);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void writeGlobalPartnerParametersI() {
        synchronized (GlobalParameters.class) {
            try {
                GlobalParameters globalParameters = this.globalParameters;
                if (globalParameters == null) {
                    return;
                }
                Util.writeObject(globalParameters.partnerParameters, this.adjustConfig.context, Constants.GLOBAL_PARTNER_PARAMETERS_FILENAME, GLOBAL_PARTNER_PARAMETERS_NAME);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void addGlobalCallbackParameter(final String str, final String str2) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.x0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$addGlobalCallbackParameter$21(str, str2);
            }
        });
    }

    public void addGlobalCallbackParameterI(String str, String str2) {
        if (!Util.isValidParameter(str, "key", "Global Callback") || !Util.isValidParameter(str2, AppMeasurementSdk.ConditionalUserProperty.VALUE, "Global Callback")) {
            return;
        }
        GlobalParameters globalParameters = this.globalParameters;
        if (globalParameters.callbackParameters == null) {
            globalParameters.callbackParameters = new LinkedHashMap();
        }
        String str3 = this.globalParameters.callbackParameters.get(str);
        if (str2.equals(str3)) {
            this.logger.verbose("Key %s already present with the same value", str);
            return;
        }
        if (str3 != null) {
            this.logger.warn("Key %s will be overwritten", str);
        }
        this.globalParameters.callbackParameters.put(str, str2);
        writeGlobalCallbackParametersI();
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void addGlobalPartnerParameter(final String str, final String str2) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.e0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$addGlobalPartnerParameter$23(str, str2);
            }
        });
    }

    public void addGlobalPartnerParameterI(String str, String str2) {
        if (!Util.isValidParameter(str, "key", "Global Partner") || !Util.isValidParameter(str2, AppMeasurementSdk.ConditionalUserProperty.VALUE, "Global Partner")) {
            return;
        }
        GlobalParameters globalParameters = this.globalParameters;
        if (globalParameters.partnerParameters == null) {
            globalParameters.partnerParameters = new LinkedHashMap();
        }
        String str3 = this.globalParameters.partnerParameters.get(str);
        if (str2.equals(str3)) {
            this.logger.verbose("Key %s already present with the same value", str);
            return;
        }
        if (str3 != null) {
            this.logger.warn("Key %s will be overwritten", str);
        }
        this.globalParameters.partnerParameters.put(str, str2);
        writeGlobalPartnerParametersI();
    }

    public void backgroundTimerFired() {
        this.executor.submit(new f());
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void endFirstSessionDelay() {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.n
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$endFirstSessionDelay$48();
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void finishedTrackingActivity(ResponseData responseData) {
        if (responseData instanceof SessionResponseData) {
            this.logger.debug("Finished tracking session", new Object[0]);
            this.attributionHandler.checkSessionResponse((SessionResponseData) responseData);
        } else if (responseData instanceof SdkClickResponseData) {
            SdkClickResponseData sdkClickResponseData = (SdkClickResponseData) responseData;
            checkForInstallReferrerInfo(sdkClickResponseData);
            this.attributionHandler.checkSdkClickResponse(sdkClickResponseData);
        } else if (responseData instanceof EventResponseData) {
            launchEventResponseTasks((EventResponseData) responseData);
        } else if (responseData instanceof PurchaseVerificationResponseData) {
            launchPurchaseVerificationResponseTasks((PurchaseVerificationResponseData) responseData);
        }
    }

    public void foregroundTimerFired() {
        this.executor.submit(new e());
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void gdprForgetMe() {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.m0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$gdprForgetMe$35();
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public ActivityState getActivityState() {
        return this.activityState;
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void getAdid(OnAdidReadListener onAdidReadListener) {
        ActivityState activityState = this.activityState;
        if (activityState != null && activityState.adid != null) {
            new Handler(this.adjustConfig.context.getMainLooper()).post(new g(onAdidReadListener));
            return;
        }
        if (activityState == null) {
            this.logger.warn("SDK needs to be initialized before getting adid", new Object[0]);
        }
        synchronized (this.cachedAdidReadCallbacks) {
            this.cachedAdidReadCallbacks.add(onAdidReadListener);
        }
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void getAdidWithTimeout(long j10, OnAdidReadListener onAdidReadListener) {
        ActivityState activityState = this.activityState;
        if (activityState != null && activityState.adid != null) {
            new Handler(this.adjustConfig.context.getMainLooper()).post(new h(onAdidReadListener));
            return;
        }
        if (activityState == null) {
            this.logger.warn("SDK needs to be initialized before getting adid", new Object[0]);
        }
        queueGetAdidWithTimeout(j10, onAdidReadListener, this.cachedAdidReadTimeoutCallbacks, getContext());
    }

    @Override // com.adjust.sdk.IActivityHandler
    public AdjustConfig getAdjustConfig() {
        return this.adjustConfig;
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void getAttribution(OnAttributionReadListener onAttributionReadListener) {
        if (this.attribution != null) {
            new Handler(this.adjustConfig.context.getMainLooper()).post(new i(onAttributionReadListener));
            return;
        }
        synchronized (this.cachedAttributionReadCallbacks) {
            this.cachedAttributionReadCallbacks.add(onAttributionReadListener);
        }
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void getAttributionWithTimeout(long j10, OnAttributionReadListener onAttributionReadListener) {
        if (this.attribution != null) {
            new Handler(this.adjustConfig.context.getMainLooper()).post(new j(onAttributionReadListener));
        } else {
            queueGetAttributionWithTimeout(j10, onAttributionReadListener, this.cachedAttributionReadTimeoutCallbacks, getContext());
        }
    }

    @Override // com.adjust.sdk.IActivityHandler
    public Context getContext() {
        return this.adjustConfig.context;
    }

    @Override // com.adjust.sdk.IActivityHandler
    public DeviceInfo getDeviceInfo() {
        return this.deviceInfo;
    }

    @Override // com.adjust.sdk.IActivityHandler
    public i1 getFirstSessionDelayManager() {
        return this.firstSessionDelayManager;
    }

    @Override // com.adjust.sdk.IActivityHandler
    public GlobalParameters getGlobalParameters() {
        return this.globalParameters;
    }

    @Override // com.adjust.sdk.IActivityHandler
    public InternalState getInternalState() {
        return this.internalState;
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void gotOptOutResponse() {
        this.executor.submit(new d());
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void init(AdjustConfig adjustConfig) {
        this.adjustConfig = adjustConfig;
    }

    public void initI() {
        String pushToken;
        SESSION_INTERVAL = AdjustFactory.getSessionInterval();
        SUBSESSION_INTERVAL = AdjustFactory.getSubsessionInterval();
        FOREGROUND_TIMER_INTERVAL = AdjustFactory.getTimerInterval();
        FOREGROUND_TIMER_START = AdjustFactory.getTimerStart();
        BACKGROUND_TIMER_INTERVAL = AdjustFactory.getTimerInterval();
        this.globalParameters = new GlobalParameters();
        readGlobalCallbackParametersI(this.adjustConfig.context);
        readGlobalPartnerParametersI(this.adjustConfig.context);
        ActivityState activityState = this.activityState;
        if (activityState != null) {
            activityState.setEventDeduplicationIdsMaxSize(this.adjustConfig.getEventDeduplicationIdsMaxSize());
        }
        AdjustConfig adjustConfig = this.adjustConfig;
        if (adjustConfig.startEnabled != null) {
            adjustConfig.preLaunchActions.preLaunchActionsArray.add(new n());
        }
        ActivityState activityState2 = this.activityState;
        if (activityState2 != null) {
            InternalState internalState = this.internalState;
            internalState.enabled = activityState2.enabled;
            internalState.firstLaunch = false;
        } else {
            this.internalState.firstLaunch = true;
        }
        readConfigFile(this.adjustConfig.context);
        DeviceInfo deviceInfo = new DeviceInfo(this.adjustConfig);
        this.deviceInfo = deviceInfo;
        deviceInfo.reloadPlayIds(this.adjustConfig);
        if (this.deviceInfo.playAdId == null) {
            if (!Util.canReadPlayIds(this.adjustConfig)) {
                this.logger.info("Cannot read Google Play Services Advertising ID with COPPA or play store kids app enabled", new Object[0]);
            } else {
                this.logger.warn("Unable to get Google Play Services Advertising ID at start time", new Object[0]);
            }
            if (this.deviceInfo.androidId == null) {
                if (!Util.canReadNonPlayIds(this.adjustConfig)) {
                    this.logger.info("Cannot read non Play IDs with COPPA or play store kids app enabled", new Object[0]);
                } else {
                    this.logger.error("Unable to get any Device IDs. Please check if Proguard is correctly set with Adjust SDK", new Object[0]);
                }
            }
        } else {
            this.logger.info("Google Play Services Advertising ID read correctly at start time", new Object[0]);
        }
        String str = this.adjustConfig.defaultTracker;
        if (str != null) {
            this.logger.info("Default tracker: '%s'", str);
        }
        String str2 = this.adjustConfig.pushToken;
        if (str2 != null) {
            this.logger.info("Push token: '%s'", str2);
            if (this.activityState != null) {
                setPushToken(this.adjustConfig.pushToken, false);
            } else {
                SharedPreferencesManager.getDefaultInstance(getContext()).savePushToken(this.adjustConfig.pushToken);
            }
        } else if (this.activityState != null && (pushToken = SharedPreferencesManager.getDefaultInstance(getContext()).getPushToken()) != null) {
            setPushToken(pushToken, true);
        }
        if (this.cachedDeeplinkResolutionCallback == null) {
            this.cachedDeeplinkResolutionCallback = this.adjustConfig.cachedDeeplinkResolutionCallback;
        }
        handleAdidCallbackI();
        handleAttributionCallbackI();
        if (this.activityState != null && SharedPreferencesManager.getDefaultInstance(getContext()).getGdprForgetMe()) {
            gdprForgetMe();
        }
        this.foregroundTimer = new TimerCycle(new o(), FOREGROUND_TIMER_START, FOREGROUND_TIMER_INTERVAL, FOREGROUND_TIMER_NAME);
        if (this.adjustConfig.isSendingInBackgroundEnabled) {
            this.logger.info("Send in background configured", new Object[0]);
            this.backgroundTimer = new TimerOnce(new p(), BACKGROUND_TIMER_NAME);
        }
        AdjustConfig adjustConfig2 = this.adjustConfig;
        this.packageHandler = AdjustFactory.getPackageHandler(this, this.adjustConfig.context, toSendI(false), new ActivityPackageSender(adjustConfig2.urlStrategyDomains, adjustConfig2.useSubdomains, adjustConfig2.basePath, adjustConfig2.gdprPath, adjustConfig2.subscriptionPath, adjustConfig2.purchaseVerificationPath, this.deviceInfo.clientSdk, 60000, adjustConfig2.context));
        AdjustConfig adjustConfig3 = this.adjustConfig;
        this.attributionHandler = AdjustFactory.getAttributionHandler(this, toSendI(false), new ActivityPackageSender(adjustConfig3.urlStrategyDomains, adjustConfig3.useSubdomains, adjustConfig3.basePath, adjustConfig3.gdprPath, adjustConfig3.subscriptionPath, adjustConfig3.purchaseVerificationPath, this.deviceInfo.clientSdk, 60000, adjustConfig3.context));
        AdjustConfig adjustConfig4 = this.adjustConfig;
        this.sdkClickHandler = AdjustFactory.getSdkClickHandler(this, toSendI(true), new ActivityPackageSender(adjustConfig4.urlStrategyDomains, adjustConfig4.useSubdomains, adjustConfig4.basePath, adjustConfig4.gdprPath, adjustConfig4.subscriptionPath, adjustConfig4.purchaseVerificationPath, this.deviceInfo.clientSdk, 60000, adjustConfig4.context));
        AdjustConfig adjustConfig5 = this.adjustConfig;
        this.purchaseVerificationHandler = AdjustFactory.getPurchaseVerificationHandler(this, toSendI(true), new ActivityPackageSender(adjustConfig5.urlStrategyDomains, adjustConfig5.useSubdomains, adjustConfig5.basePath, adjustConfig5.gdprPath, adjustConfig5.subscriptionPath, adjustConfig5.purchaseVerificationPath, this.deviceInfo.clientSdk, 30000, adjustConfig5.context));
        this.installReferrer = new InstallReferrer(this.adjustConfig.context, new q());
        preLaunchActionsI(this.adjustConfig.preLaunchActions.preLaunchActionsArray);
        lambda$sendReftagReferrer$16();
        bootstrapLifecycleI();
    }

    @Override // com.adjust.sdk.IActivityHandler
    public boolean isEnabled() {
        return isEnabledI();
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void launchAttributionResponseTasks(AttributionResponseData attributionResponseData) {
        this.executor.submit(new b(attributionResponseData));
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void launchEventResponseTasks(EventResponseData eventResponseData) {
        this.executor.submit(new r0(eventResponseData));
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void launchPurchaseVerificationResponseTasks(PurchaseVerificationResponseData purchaseVerificationResponseData) {
        this.executor.submit(new c(purchaseVerificationResponseData));
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void launchSdkClickResponseTasks(SdkClickResponseData sdkClickResponseData) {
        this.executor.submit(new s0(sdkClickResponseData));
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void launchSessionResponseTasks(SessionResponseData sessionResponseData) {
        this.executor.submit(new a(sessionResponseData));
    }

    @Override // com.adjust.sdk.SystemLifecycle.SystemLifecycleCallback
    public void onActivityLifecycle(final boolean z10) {
        try {
            this.executor.submit(new Runnable() { // from class: com.adjust.sdk.o0
                @Override // java.lang.Runnable
                public final void run() {
                    ActivityHandler.this.lambda$onActivityLifecycle$1(z10);
                }
            });
        } catch (Exception unused) {
            ILogger iLogger = this.logger;
            if (iLogger != null) {
                iLogger.error("Exception while executing onActivityLifecycle task", new Object[0]);
            }
        }
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void onPause() {
        onActivityLifecycle(false);
    }

    public void onPauseI() {
        stopForegroundTimerI();
        startBackgroundTimerI();
        this.logger.verbose("Subsession end", new Object[0]);
        endI();
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void onResume() {
        onActivityLifecycle(true);
    }

    public void onResumeI() {
        stopBackgroundTimerI();
        startForegroundTimerI();
        this.logger.verbose("Subsession start", new Object[0]);
        startI();
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void processAndResolveDeeplink(final AdjustDeeplink adjustDeeplink, final long j10, OnDeeplinkResolvedListener onDeeplinkResolvedListener) {
        this.cachedDeeplinkResolutionCallback = onDeeplinkResolvedListener;
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.y0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$processAndResolveDeeplink$15(adjustDeeplink, j10);
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void processDeeplink(final AdjustDeeplink adjustDeeplink, final long j10) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.z
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$processDeeplink$13(adjustDeeplink, j10);
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void removeGlobalCallbackParameter(final String str) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.v0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$removeGlobalCallbackParameter$25(str);
            }
        });
    }

    public void removeGlobalCallbackParameterI(String str) {
        if (!Util.isValidParameter(str, "key", "Session Callback")) {
            return;
        }
        Map<String, String> map = this.globalParameters.callbackParameters;
        if (map == null) {
            this.logger.warn("Session Callback parameters are not set", new Object[0]);
        } else if (map.remove(str) == null) {
            this.logger.warn("Key %s does not exist", str);
        } else {
            this.logger.debug("Key %s will be removed", str);
            writeGlobalCallbackParametersI();
        }
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void removeGlobalCallbackParameters() {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.h0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$removeGlobalCallbackParameters$29();
            }
        });
    }

    public void removeGlobalCallbackParametersI() {
        if (this.globalParameters.callbackParameters == null) {
            this.logger.warn("Session Callback parameters are not set", new Object[0]);
        }
        this.globalParameters.callbackParameters = null;
        writeGlobalCallbackParametersI();
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void removeGlobalPartnerParameter(final String str) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.s0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$removeGlobalPartnerParameter$27(str);
            }
        });
    }

    public void removeGlobalPartnerParameterI(String str) {
        if (!Util.isValidParameter(str, "key", "Session Partner")) {
            return;
        }
        Map<String, String> map = this.globalParameters.partnerParameters;
        if (map == null) {
            this.logger.warn("Session Partner parameters are not set", new Object[0]);
        } else if (map.remove(str) == null) {
            this.logger.warn("Key %s does not exist", str);
        } else {
            this.logger.debug("Key %s will be removed", str);
            writeGlobalPartnerParametersI();
        }
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void removeGlobalPartnerParameters() {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.l
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$removeGlobalPartnerParameters$31();
            }
        });
    }

    public void removeGlobalPartnerParametersI() {
        if (this.globalParameters.partnerParameters == null) {
            this.logger.warn("Session Partner parameters are not set", new Object[0]);
        }
        this.globalParameters.partnerParameters = null;
        writeGlobalPartnerParametersI();
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void sendInstallReferrer(ReferrerDetails referrerDetails, String str) {
        this.executor.submit(new p0(referrerDetails, str));
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void sendLicenseVerificationData(LicenseData licenseData) {
        this.executor.submit(new q0(licenseData));
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void sendPreinstallReferrer() {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.a
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$sendPreinstallReferrer$19();
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void sendReftagReferrer() {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.y
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$sendReftagReferrer$17();
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void setAskingAttribution(boolean z10) {
        this.executor.submit(new o0(z10));
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void setCoppaComplianceInDelay(final boolean z10) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.m
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$setCoppaComplianceInDelay$49(z10);
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void setEnabled(final boolean z10) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.x
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$setEnabled$6(z10);
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void setExternalDeviceIdInDelay(final String str) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.h
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$setExternalDeviceIdInDelay$51(str);
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void setOfflineMode(final boolean z10) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.u
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$setOfflineMode$8(z10);
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void setPlayStoreKidsComplianceInDelay(final boolean z10) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.c0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$setPlayStoreKidsComplianceInDelay$50(z10);
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void setPushToken(final String str, final boolean z10) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.g0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$setPushToken$33(z10, str);
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void teardown() {
        TimerOnce timerOnce = this.backgroundTimer;
        if (timerOnce != null) {
            timerOnce.teardown();
        }
        TimerCycle timerCycle = this.foregroundTimer;
        if (timerCycle != null) {
            timerCycle.teardown();
        }
        ThreadExecutor threadExecutor = this.executor;
        if (threadExecutor != null) {
            threadExecutor.teardown();
        }
        IPackageHandler iPackageHandler = this.packageHandler;
        if (iPackageHandler != null) {
            iPackageHandler.teardown();
        }
        IAttributionHandler iAttributionHandler = this.attributionHandler;
        if (iAttributionHandler != null) {
            iAttributionHandler.teardown();
        }
        ISdkClickHandler iSdkClickHandler = this.sdkClickHandler;
        if (iSdkClickHandler != null) {
            iSdkClickHandler.teardown();
        }
        IPurchaseVerificationHandler iPurchaseVerificationHandler = this.purchaseVerificationHandler;
        if (iPurchaseVerificationHandler != null) {
            iPurchaseVerificationHandler.teardown();
        }
        GlobalParameters globalParameters = this.globalParameters;
        if (globalParameters != null) {
            Map<String, String> map = globalParameters.callbackParameters;
            if (map != null) {
                map.clear();
            }
            Map<String, String> map2 = this.globalParameters.partnerParameters;
            if (map2 != null) {
                map2.clear();
            }
        }
        teardownActivityStateS();
        teardownAttributionS();
        teardownAllGlobalParametersS();
        teardownEventMetadataS();
        this.packageHandler = null;
        this.logger = null;
        this.foregroundTimer = null;
        this.executor = null;
        this.backgroundTimer = null;
        this.internalState = null;
        this.deviceInfo = null;
        this.adjustConfig = null;
        this.attributionHandler = null;
        this.sdkClickHandler = null;
        this.purchaseVerificationHandler = null;
        this.globalParameters = null;
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void trackAdRevenue(final AdjustAdRevenue adjustAdRevenue) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.e
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$trackAdRevenue$41(adjustAdRevenue);
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void trackEvent(final AdjustEvent adjustEvent) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.j0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$trackEvent$4(adjustEvent);
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void trackMeasurementConsent(final boolean z10) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.d
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$trackMeasurementConsent$39(z10);
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void trackPlayStoreSubscription(final AdjustPlayStoreSubscription adjustPlayStoreSubscription) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.o
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$trackPlayStoreSubscription$43(adjustPlayStoreSubscription);
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void trackThirdPartySharing(final AdjustThirdPartySharing adjustThirdPartySharing) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.a0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$trackThirdPartySharing$37(adjustThirdPartySharing);
            }
        });
    }

    public void tryTrackMeasurementConsentI(boolean z10) {
        if (canTrackMeasurementConsentI()) {
            trackMeasurementConsentI(z10);
        } else {
            this.cachedLastMeasurementConsentTrack = Boolean.valueOf(z10);
        }
    }

    public void tryTrackThirdPartySharingI(AdjustThirdPartySharing adjustThirdPartySharing) {
        if (canTrackThirdPartySharingI()) {
            trackThirdPartySharingI(adjustThirdPartySharing);
            return;
        }
        if (this.cachedAdjustThirdPartySharingArray == null) {
            this.cachedAdjustThirdPartySharingArray = new ArrayList();
        }
        this.cachedAdjustThirdPartySharingArray.add(adjustThirdPartySharing);
    }

    @Override // com.adjust.sdk.IActivityHandler
    public boolean updateAttributionI(AdjustAttribution adjustAttribution) {
        ArrayList arrayList;
        ArrayList arrayList2;
        if (adjustAttribution == null || this.activityState.askingAttribution) {
            return false;
        }
        synchronized (this.cachedAttributionReadCallbacks) {
            try {
                arrayList = null;
                if (!this.cachedAttributionReadCallbacks.isEmpty()) {
                    arrayList2 = new ArrayList(this.cachedAttributionReadCallbacks);
                    this.cachedAttributionReadCallbacks.clear();
                } else {
                    arrayList2 = null;
                }
            } finally {
            }
        }
        if (arrayList2 != null) {
            new Handler(this.adjustConfig.context.getMainLooper()).post(new g0(arrayList2, adjustAttribution));
        }
        synchronized (this.cachedAttributionReadTimeoutCallbacks) {
            try {
                if (!this.cachedAttributionReadTimeoutCallbacks.isEmpty()) {
                    arrayList = new ArrayList(this.cachedAttributionReadTimeoutCallbacks);
                    this.cachedAttributionReadTimeoutCallbacks.clear();
                }
            } finally {
            }
        }
        if (arrayList != null) {
            new Handler(this.adjustConfig.context.getMainLooper()).post(new n0(arrayList, adjustAttribution));
        }
        if (adjustAttribution.equals(this.attribution)) {
            return false;
        }
        this.attribution = adjustAttribution;
        writeAttributionI();
        return true;
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void verifyAndTrackPlayStorePurchase(final AdjustEvent adjustEvent, final OnPurchaseVerificationFinishedListener onPurchaseVerificationFinishedListener) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.p0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$verifyAndTrackPlayStorePurchase$47(adjustEvent, onPurchaseVerificationFinishedListener);
            }
        });
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void verifyPlayStorePurchase(final AdjustPlayStorePurchase adjustPlayStorePurchase, final OnPurchaseVerificationFinishedListener onPurchaseVerificationFinishedListener) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.t0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$verifyPlayStorePurchase$45(adjustPlayStorePurchase, onPurchaseVerificationFinishedListener);
            }
        });
    }

    private void checkAfterNewStartI(SharedPreferencesManager sharedPreferencesManager) {
        String pushToken = sharedPreferencesManager.getPushToken();
        if (pushToken != null && !pushToken.equals(this.activityState.pushToken)) {
            setPushToken(pushToken, true);
        }
        if (sharedPreferencesManager.getRawReferrerArray() != null) {
            sendReftagReferrer();
        }
        checkForPreinstallI();
        this.installReferrer.startConnection();
        readInstallReferrerMeta();
        readInstallReferrerHuaweiAds();
        readInstallReferrerHuaweiAppGallery();
        readInstallReferrerSamsung();
        readInstallReferrerXiaomi();
        readInstallReferrerVivo();
        readLicenseVerificationData();
    }

    private boolean pausedI(boolean z10) {
        return z10 ? this.internalState.isOffline() || !isEnabledI() : this.internalState.isOffline() || !isEnabledI();
    }

    private boolean toSendI(boolean z10) {
        if (pausedI(z10)) {
            return false;
        }
        if (this.adjustConfig.isSendingInBackgroundEnabled) {
            return true;
        }
        return this.internalState.isInForeground();
    }

    @Override // com.adjust.sdk.IActivityHandler
    public void isEnabled(final OnIsEnabledListener onIsEnabledListener) {
        this.executor.submit(new Runnable() { // from class: com.adjust.sdk.q
            @Override // java.lang.Runnable
            public final void run() {
                ActivityHandler.this.lambda$isEnabled$11(onIsEnabledListener);
            }
        });
    }
}
