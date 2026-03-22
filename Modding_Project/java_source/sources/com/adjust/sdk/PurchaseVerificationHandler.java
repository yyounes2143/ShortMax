package com.adjust.sdk;

import com.adjust.sdk.network.IActivityPackageSender;
import com.adjust.sdk.scheduler.SingleThreadCachedScheduler;
import com.adjust.sdk.scheduler.ThreadScheduler;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class PurchaseVerificationHandler implements IPurchaseVerificationHandler {
    private static final double MILLISECONDS_TO_SECONDS_DIVISOR = 1000.0d;
    private static final String SCHEDULED_EXECUTOR_SOURCE = "PurchaseVerificationHandler";
    private WeakReference<IActivityHandler> activityHandlerWeakRef;
    private IActivityPackageSender activityPackageSender;
    private boolean isSendingPurchaseVerificationPackage;
    private long lastPackageRetryInMilli = 0;
    private ILogger logger;
    private List<ActivityPackage> packageQueue;
    private boolean paused;
    private ThreadScheduler scheduler;

    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ActivityPackage f4254a;

        public a(ActivityPackage activityPackage) {
            this.f4254a = activityPackage;
        }

        @Override // java.lang.Runnable
        public final void run() {
            PurchaseVerificationHandler.this.sendPurchaseVerificationPackageI(this.f4254a);
        }
    }

    /* loaded from: classes2.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            PurchaseVerificationHandler.this.sendNextPurchaseVerificationPackageI();
        }
    }

    /* loaded from: classes2.dex */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            PurchaseVerificationHandler.this.lastPackageRetryInMilli = 0L;
            PurchaseVerificationHandler.this.sendNextPurchaseVerificationPackage();
        }
    }

    public PurchaseVerificationHandler(IActivityHandler iActivityHandler, boolean z10, IActivityPackageSender iActivityPackageSender) {
        init(iActivityHandler, z10, iActivityPackageSender);
        this.logger = AdjustFactory.getLogger();
        this.scheduler = new SingleThreadCachedScheduler(SCHEDULED_EXECUTOR_SOURCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNextPurchaseVerificationPackage() {
        this.scheduler.submit(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNextPurchaseVerificationPackageI() {
        IActivityHandler iActivityHandler = this.activityHandlerWeakRef.get();
        if (iActivityHandler.getActivityState() == null || this.packageQueue.isEmpty()) {
            return;
        }
        if (iActivityHandler.getActivityState().isGdprForgotten) {
            this.logger.debug("purchase_verification request won't be sent for GDPR forgotten user", new Object[0]);
        } else if (this.paused) {
            this.logger.debug("PurchaseVerificationHandler is paused", new Object[0]);
        } else if (this.isSendingPurchaseVerificationPackage) {
            this.logger.debug("PurchaseVerificationHandler is is already sending a package", new Object[0]);
        } else {
            long waitTime = waitTime();
            if (waitTime > 0) {
                this.scheduler.schedule(new c(), waitTime);
                return;
            }
            this.isSendingPurchaseVerificationPackage = true;
            sendPurchaseVerificationPackageSync(this.packageQueue.get(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPurchaseVerificationPackageI(ActivityPackage activityPackage) {
        this.packageQueue.add(activityPackage);
        this.logger.debug("Added purchase_verification %d", Integer.valueOf(this.packageQueue.size()));
        this.logger.verbose("%s", activityPackage.getExtendedString());
        sendNextPurchaseVerificationPackage();
    }

    private void sendPurchaseVerificationPackageSync(ActivityPackage activityPackage) {
        IActivityHandler iActivityHandler = this.activityHandlerWeakRef.get();
        ResponseData sendActivityPackageSync = this.activityPackageSender.sendActivityPackageSync(activityPackage, null);
        if (sendActivityPackageSync instanceof PurchaseVerificationResponseData) {
            this.isSendingPurchaseVerificationPackage = false;
            PurchaseVerificationResponseData purchaseVerificationResponseData = (PurchaseVerificationResponseData) sendActivityPackageSync;
            if (purchaseVerificationResponseData.jsonResponse == null) {
                this.logger.error("Could not get purchase_verification JSON response with message: %s", purchaseVerificationResponseData.message);
            } else if (iActivityHandler == null) {
                return;
            } else {
                if (purchaseVerificationResponseData.trackingState == TrackingState.OPTED_OUT) {
                    iActivityHandler.gotOptOutResponse();
                    return;
                } else if (purchaseVerificationResponseData.willRetry) {
                    Long l10 = sendActivityPackageSync.retryIn;
                    if (l10 != null && l10.longValue() > 0) {
                        Long l11 = sendActivityPackageSync.retryIn;
                        this.lastPackageRetryInMilli = l11.longValue();
                        this.logger.error("Retrying purchase_verification package with retry in %d ms", l11);
                    }
                    sendNextPurchaseVerificationPackage();
                    return;
                } else {
                    this.lastPackageRetryInMilli = 0L;
                }
            }
            if (!this.packageQueue.isEmpty()) {
                this.packageQueue.remove(0);
            }
            iActivityHandler.finishedTrackingActivity(purchaseVerificationResponseData);
            sendNextPurchaseVerificationPackage();
        }
    }

    private long waitTime() {
        long j10 = this.lastPackageRetryInMilli;
        if (j10 <= 0) {
            return 0L;
        }
        this.logger.verbose("Waiting for %d ms before retrying purchase_verification with retry_in", Long.valueOf(j10));
        return this.lastPackageRetryInMilli;
    }

    @Override // com.adjust.sdk.IPurchaseVerificationHandler
    public void init(IActivityHandler iActivityHandler, boolean z10, IActivityPackageSender iActivityPackageSender) {
        this.paused = !z10;
        this.packageQueue = new ArrayList();
        this.activityHandlerWeakRef = new WeakReference<>(iActivityHandler);
        this.activityPackageSender = iActivityPackageSender;
        this.isSendingPurchaseVerificationPackage = false;
        this.lastPackageRetryInMilli = 0L;
    }

    @Override // com.adjust.sdk.IPurchaseVerificationHandler
    public void pauseSending() {
        this.paused = true;
        this.isSendingPurchaseVerificationPackage = false;
        this.lastPackageRetryInMilli = 0L;
    }

    @Override // com.adjust.sdk.IPurchaseVerificationHandler
    public void resumeSending() {
        this.paused = false;
        sendNextPurchaseVerificationPackage();
    }

    @Override // com.adjust.sdk.IPurchaseVerificationHandler
    public void sendPurchaseVerificationPackage(ActivityPackage activityPackage) {
        this.scheduler.submit(new a(activityPackage));
    }

    @Override // com.adjust.sdk.IPurchaseVerificationHandler
    public void teardown() {
        this.logger.verbose("PurchaseVerificationHandler teardown", new Object[0]);
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
        this.scheduler = null;
        this.isSendingPurchaseVerificationPackage = false;
        this.lastPackageRetryInMilli = 0L;
    }
}
