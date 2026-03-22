package com.adjust.sdk;

import android.net.Uri;
import com.adjust.sdk.ActivityHandler;
import com.adjust.sdk.network.IActivityPackageSender;
import com.adjust.sdk.scheduler.SingleThreadCachedScheduler;
import com.adjust.sdk.scheduler.ThreadScheduler;
import com.adjust.sdk.scheduler.TimerOnce;
import com.unity3d.services.core.di.ServiceProvider;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AttributionHandler implements IAttributionHandler, IActivityPackageSender.ResponseDataCallbackSubscriber {
    private static final String ATTRIBUTION_TIMER_NAME = "Attribution timer";
    private WeakReference<IActivityHandler> activityHandlerWeakRef;
    private IActivityPackageSender activityPackageSender;
    private String lastInitiatedBy;
    private boolean paused;
    private ILogger logger = AdjustFactory.getLogger();
    private ThreadScheduler scheduler = new SingleThreadCachedScheduler("AttributionHandler");
    private TimerOnce timer = new TimerOnce(new a(), ATTRIBUTION_TIMER_NAME);

    /* loaded from: classes2.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AttributionHandler.this.sendAttributionRequest();
        }
    }

    /* loaded from: classes2.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AttributionHandler.this.lastInitiatedBy = ServiceProvider.NAMED_SDK;
            AttributionHandler.this.getAttributionI(0L);
        }
    }

    /* loaded from: classes2.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ SessionResponseData f4220a;

        public c(SessionResponseData sessionResponseData) {
            this.f4220a = sessionResponseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            IActivityHandler iActivityHandler = (IActivityHandler) AttributionHandler.this.activityHandlerWeakRef.get();
            if (iActivityHandler != null) {
                AttributionHandler.this.checkSessionResponseI(iActivityHandler, this.f4220a);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ SdkClickResponseData f4222a;

        public d(SdkClickResponseData sdkClickResponseData) {
            this.f4222a = sdkClickResponseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            IActivityHandler iActivityHandler = (IActivityHandler) AttributionHandler.this.activityHandlerWeakRef.get();
            if (iActivityHandler != null) {
                AttributionHandler.this.checkSdkClickResponseI(iActivityHandler, this.f4222a);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AttributionResponseData f4224a;

        public e(AttributionResponseData attributionResponseData) {
            this.f4224a = attributionResponseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            IActivityHandler iActivityHandler = (IActivityHandler) AttributionHandler.this.activityHandlerWeakRef.get();
            if (iActivityHandler != null) {
                AttributionHandler.this.checkAttributionResponseI(iActivityHandler, this.f4224a);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AttributionHandler.this.sendAttributionRequestI();
        }
    }

    /* loaded from: classes2.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ResponseData f4227a;

        public g(ResponseData responseData) {
            this.f4227a = responseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            IActivityHandler iActivityHandler = (IActivityHandler) AttributionHandler.this.activityHandlerWeakRef.get();
            if (iActivityHandler != null) {
                ResponseData responseData = this.f4227a;
                if (responseData.trackingState == TrackingState.OPTED_OUT) {
                    iActivityHandler.gotOptOutResponse();
                } else if (responseData instanceof AttributionResponseData) {
                    AttributionHandler.this.checkAttributionResponseI(iActivityHandler, (AttributionResponseData) responseData);
                }
            }
        }
    }

    public AttributionHandler(IActivityHandler iActivityHandler, boolean z10, IActivityPackageSender iActivityPackageSender) {
        init(iActivityHandler, z10, iActivityPackageSender);
    }

    private ActivityPackage buildAndGetAttributionPackage(ActivityHandler.InternalState internalState) {
        long currentTimeMillis = System.currentTimeMillis();
        IActivityHandler iActivityHandler = this.activityHandlerWeakRef.get();
        PackageBuilder packageBuilder = new PackageBuilder(iActivityHandler.getAdjustConfig(), iActivityHandler.getDeviceInfo(), iActivityHandler.getActivityState(), iActivityHandler.getGlobalParameters(), iActivityHandler.getFirstSessionDelayManager(), currentTimeMillis);
        packageBuilder.internalState = internalState;
        ActivityPackage buildAttributionPackage = packageBuilder.buildAttributionPackage(this.lastInitiatedBy);
        this.lastInitiatedBy = null;
        return buildAttributionPackage;
    }

    private void checkAttributionI(IActivityHandler iActivityHandler, ResponseData responseData) {
        if (responseData.jsonResponse == null) {
            return;
        }
        Long l10 = responseData.askIn;
        if (l10 != null && l10.longValue() >= 0) {
            iActivityHandler.setAskingAttribution(true);
            this.lastInitiatedBy = "backend";
            getAttributionI(l10.longValue());
            return;
        }
        iActivityHandler.setAskingAttribution(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAttributionResponseI(IActivityHandler iActivityHandler, AttributionResponseData attributionResponseData) {
        checkAttributionI(iActivityHandler, attributionResponseData);
        checkDeeplinkInAttributionResponseI(attributionResponseData);
        iActivityHandler.launchAttributionResponseTasks(attributionResponseData);
    }

    private void checkDeeplinkInAttributionResponseI(AttributionResponseData attributionResponseData) {
        JSONObject optJSONObject;
        String optString;
        JSONObject jSONObject = attributionResponseData.jsonResponse;
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("attribution")) == null || (optString = optJSONObject.optString(Constants.DEEPLINK, null)) == null) {
            return;
        }
        attributionResponseData.deeplink = Uri.parse(optString);
    }

    private void checkDeeplinkInSessionResponseI(SessionResponseData sessionResponseData) {
        String optString;
        JSONObject jSONObject = sessionResponseData.jsonResponse;
        if (jSONObject == null || (optString = jSONObject.optString(Constants.DEEPLINK, null)) == null) {
            return;
        }
        sessionResponseData.deeplink = Uri.parse(optString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkSdkClickResponseI(IActivityHandler iActivityHandler, SdkClickResponseData sdkClickResponseData) {
        checkAttributionI(iActivityHandler, sdkClickResponseData);
        iActivityHandler.launchSdkClickResponseTasks(sdkClickResponseData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkSessionResponseI(IActivityHandler iActivityHandler, SessionResponseData sessionResponseData) {
        checkAttributionI(iActivityHandler, sessionResponseData);
        checkDeeplinkInSessionResponseI(sessionResponseData);
        iActivityHandler.launchSessionResponseTasks(sessionResponseData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getAttributionI(long j10) {
        if (this.timer.getFireIn() > j10) {
            return;
        }
        if (j10 != 0) {
            this.logger.debug("Waiting to query attribution in %s seconds", Util.SecondsDisplayFormat.format(j10 / 1000.0d));
        }
        this.timer.startIn(j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAttributionRequest() {
        this.scheduler.submit(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAttributionRequestI() {
        if (this.activityHandlerWeakRef.get().getActivityState().isGdprForgotten) {
            return;
        }
        if (this.paused) {
            this.logger.debug("Attribution handler is paused", new Object[0]);
            return;
        }
        ActivityPackage buildAndGetAttributionPackage = buildAndGetAttributionPackage(this.activityHandlerWeakRef.get().getInternalState());
        this.logger.verbose("%s", buildAndGetAttributionPackage.getExtendedString());
        this.activityPackageSender.sendActivityPackage(buildAndGetAttributionPackage, null, this);
    }

    public void checkAttributionResponse(AttributionResponseData attributionResponseData) {
        this.scheduler.submit(new e(attributionResponseData));
    }

    @Override // com.adjust.sdk.IAttributionHandler
    public void checkSdkClickResponse(SdkClickResponseData sdkClickResponseData) {
        this.scheduler.submit(new d(sdkClickResponseData));
    }

    @Override // com.adjust.sdk.IAttributionHandler
    public void checkSessionResponse(SessionResponseData sessionResponseData) {
        this.scheduler.submit(new c(sessionResponseData));
    }

    @Override // com.adjust.sdk.IAttributionHandler
    public void getAttribution() {
        this.scheduler.submit(new b());
    }

    @Override // com.adjust.sdk.IAttributionHandler
    public void init(IActivityHandler iActivityHandler, boolean z10, IActivityPackageSender iActivityPackageSender) {
        this.activityHandlerWeakRef = new WeakReference<>(iActivityHandler);
        this.paused = !z10;
        this.activityPackageSender = iActivityPackageSender;
    }

    @Override // com.adjust.sdk.network.IActivityPackageSender.ResponseDataCallbackSubscriber
    public void onResponseDataCallback(ResponseData responseData) {
        this.scheduler.submit(new g(responseData));
    }

    @Override // com.adjust.sdk.IAttributionHandler
    public void pauseSending() {
        this.paused = true;
    }

    @Override // com.adjust.sdk.IAttributionHandler
    public void resumeSending() {
        this.paused = false;
    }

    @Override // com.adjust.sdk.IAttributionHandler
    public void teardown() {
        this.logger.verbose("AttributionHandler teardown", new Object[0]);
        TimerOnce timerOnce = this.timer;
        if (timerOnce != null) {
            timerOnce.teardown();
        }
        ThreadScheduler threadScheduler = this.scheduler;
        if (threadScheduler != null) {
            threadScheduler.teardown();
        }
        WeakReference<IActivityHandler> weakReference = this.activityHandlerWeakRef;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.timer = null;
        this.logger = null;
        this.scheduler = null;
        this.activityHandlerWeakRef = null;
    }
}
