package com.adjust.sdk;

import android.content.Context;
import com.adjust.sdk.network.IActivityPackageSender;
import com.adjust.sdk.scheduler.SingleThreadCachedScheduler;
import com.adjust.sdk.scheduler.ThreadScheduler;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class PackageHandler implements IPackageHandler, IActivityPackageSender.ResponseDataCallbackSubscriber {
    private static final String PACKAGE_QUEUE_FILENAME = "AdjustIoPackageQueue";
    private static final String PACKAGE_QUEUE_NAME = "Package queue";
    private WeakReference<IActivityHandler> activityHandlerWeakRef;
    private IActivityPackageSender activityPackageSender;
    private Context context;
    private AtomicBoolean isSending;
    private List<ActivityPackage> packageQueue;
    private boolean paused;
    private long retryStartedAtTimeMilliSeconds;
    private ThreadScheduler scheduler = new SingleThreadCachedScheduler("PackageHandler");
    private ILogger logger = AdjustFactory.getLogger();
    private BackoffStrategy backoffStrategy = AdjustFactory.getPackageHandlerBackoffStrategy();
    private BackoffStrategy backoffStrategyForInstallSession = AdjustFactory.getInstallSessionBackoffStrategy();
    private boolean isRetrying = false;
    private double totalWaitTimeSeconds = 0.0d;

    /* loaded from: classes2.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            PackageHandler.this.initI();
        }
    }

    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ActivityPackage f4246a;

        public b(ActivityPackage activityPackage) {
            this.f4246a = activityPackage;
        }

        @Override // java.lang.Runnable
        public final void run() {
            PackageHandler.this.addI(this.f4246a);
        }
    }

    /* loaded from: classes2.dex */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            PackageHandler.this.sendFirstI();
        }
    }

    /* loaded from: classes2.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ResponseData f4249a;

        public d(ResponseData responseData) {
            this.f4249a = responseData;
        }

        @Override // java.lang.Runnable
        public final void run() {
            PackageHandler.this.sendNextI(this.f4249a.continueIn);
        }
    }

    /* loaded from: classes2.dex */
    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            PackageHandler.this.logger.verbose("Package handler can send", new Object[0]);
            PackageHandler.this.isSending.set(false);
            PackageHandler.this.sendFirstPackage();
        }
    }

    /* loaded from: classes2.dex */
    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            PackageHandler.this.flushI();
        }
    }

    /* loaded from: classes2.dex */
    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            PackageHandler.this.logger.verbose("Package handler finished waiting to continue", new Object[0]);
            PackageHandler.this.isSending.set(false);
            PackageHandler.this.sendFirstPackage();
        }
    }

    public PackageHandler(IActivityHandler iActivityHandler, Context context, boolean z10, IActivityPackageSender iActivityPackageSender) {
        init(iActivityHandler, context, z10, iActivityPackageSender);
        this.scheduler.submit(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addI(ActivityPackage activityPackage) {
        if (this.isRetrying) {
            activityPackage.setWaitBeforeSendTimeSeconds(this.totalWaitTimeSeconds - ((System.currentTimeMillis() - this.retryStartedAtTimeMilliSeconds) / 1000.0d));
        }
        PackageBuilder.addLong(activityPackage.getParameters(), "enqueue_size", this.packageQueue.size());
        this.packageQueue.add(activityPackage);
        this.logger.debug("Added package %d (%s)", Integer.valueOf(this.packageQueue.size()), activityPackage);
        this.logger.verbose("%s", activityPackage.getExtendedString());
        writePackageQueueI();
    }

    public static Boolean deletePackageQueue(Context context) {
        return Boolean.valueOf(context.deleteFile(PACKAGE_QUEUE_FILENAME));
    }

    public static void deleteState(Context context) {
        deletePackageQueue(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flushI() {
        this.packageQueue.clear();
        writePackageQueueI();
    }

    private Map<String, String> generateSendingParametersI() {
        HashMap hashMap = new HashMap();
        int size = this.packageQueue.size() - 1;
        if (size > 0) {
            PackageBuilder.addLong(hashMap, "queue_size", size);
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initI() {
        this.isSending = new AtomicBoolean();
        readPackageQueueI();
    }

    private void readPackageQueueI() {
        try {
            this.packageQueue = (List) Util.readObject(this.context, PACKAGE_QUEUE_FILENAME, PACKAGE_QUEUE_NAME, List.class);
        } catch (Exception e10) {
            this.logger.error("Failed to read %s file (%s)", PACKAGE_QUEUE_NAME, e10.getMessage());
            this.packageQueue = null;
        }
        List<ActivityPackage> list = this.packageQueue;
        if (list != null) {
            this.logger.debug("Package handler read %d packages", Integer.valueOf(list.size()));
        } else {
            this.packageQueue = new ArrayList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendFirstI() {
        if (this.packageQueue.isEmpty()) {
            return;
        }
        if (this.paused) {
            this.logger.debug("Package handler is paused", new Object[0]);
        } else if (this.isSending.getAndSet(true)) {
            this.logger.verbose("Package handler is already sending", new Object[0]);
        } else {
            Map<String, String> generateSendingParametersI = generateSendingParametersI();
            ActivityPackage activityPackage = this.packageQueue.get(0);
            PackageBuilder.addLong(generateSendingParametersI, "retry_count", activityPackage.getRetryCount());
            PackageBuilder.addLong(generateSendingParametersI, "first_error", activityPackage.getFirstErrorCode());
            PackageBuilder.addLong(generateSendingParametersI, "last_error", activityPackage.getLastErrorCode());
            PackageBuilder.addDouble(generateSendingParametersI, "wait_total", this.totalWaitTimeSeconds);
            PackageBuilder.addDouble(generateSendingParametersI, "wait_time", activityPackage.getWaitBeforeSendTimeSeconds());
            this.activityPackageSender.sendActivityPackage(activityPackage, generateSendingParametersI, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNextI(Long l10) {
        this.isRetrying = false;
        this.retryStartedAtTimeMilliSeconds = 0L;
        if (this.packageQueue.isEmpty()) {
            this.totalWaitTimeSeconds = 0.0d;
            return;
        }
        this.packageQueue.remove(0);
        writePackageQueueI();
        if (l10 != null && l10.longValue() > 0) {
            g gVar = new g();
            this.logger.verbose("Waiting for %d seconds before continuing for next package in continue_in", Double.valueOf(l10.longValue() / 1000.0d));
            this.scheduler.schedule(gVar, l10.longValue());
            return;
        }
        this.logger.verbose("Package handler can send", new Object[0]);
        this.isSending.set(false);
        sendFirstI();
    }

    private void writePackageQueueI() {
        Util.writeObject(this.packageQueue, this.context, PACKAGE_QUEUE_FILENAME, PACKAGE_QUEUE_NAME);
        this.logger.debug("Package handler wrote %d packages", Integer.valueOf(this.packageQueue.size()));
    }

    @Override // com.adjust.sdk.IPackageHandler
    public void addPackage(ActivityPackage activityPackage) {
        this.scheduler.submit(new b(activityPackage));
    }

    @Override // com.adjust.sdk.IPackageHandler
    public void flush() {
        this.scheduler.submit(new f());
    }

    @Override // com.adjust.sdk.IPackageHandler
    public void init(IActivityHandler iActivityHandler, Context context, boolean z10, IActivityPackageSender iActivityPackageSender) {
        this.activityHandlerWeakRef = new WeakReference<>(iActivityHandler);
        this.context = context;
        this.paused = !z10;
        this.activityPackageSender = iActivityPackageSender;
    }

    @Override // com.adjust.sdk.network.IActivityPackageSender.ResponseDataCallbackSubscriber
    public void onResponseDataCallback(ResponseData responseData) {
        long waitingTime;
        this.logger.debug("Got response in PackageHandler", new Object[0]);
        IActivityHandler iActivityHandler = this.activityHandlerWeakRef.get();
        if (iActivityHandler != null && responseData.trackingState == TrackingState.OPTED_OUT) {
            iActivityHandler.gotOptOutResponse();
        }
        if (!responseData.willRetry) {
            this.scheduler.submit(new d(responseData));
            if (iActivityHandler != null) {
                iActivityHandler.finishedTrackingActivity(responseData);
                return;
            }
            return;
        }
        if (!this.isRetrying) {
            this.isRetrying = true;
            this.retryStartedAtTimeMilliSeconds = System.currentTimeMillis();
        }
        writePackageQueueI();
        if (iActivityHandler != null) {
            iActivityHandler.finishedTrackingActivity(responseData);
        }
        e eVar = new e();
        Long l10 = responseData.retryIn;
        if (l10 != null) {
            this.scheduler.schedule(eVar, l10.longValue());
            return;
        }
        int increaseRetries = responseData.activityPackage.increaseRetries();
        SharedPreferencesManager defaultInstance = SharedPreferencesManager.getDefaultInstance(this.context);
        if (responseData.activityPackage.getActivityKind() == ActivityKind.SESSION && !defaultInstance.getInstallTracked()) {
            waitingTime = Util.getWaitingTime(increaseRetries, this.backoffStrategyForInstallSession);
        } else {
            waitingTime = Util.getWaitingTime(increaseRetries, this.backoffStrategy);
        }
        double d10 = waitingTime / 1000.0d;
        String format = Util.SecondsDisplayFormat.format(d10);
        this.totalWaitTimeSeconds += d10;
        this.logger.verbose("Waiting for %s seconds before retrying %s for the %d time", format, responseData.activityPackage.getActivityKind().toString(), Integer.valueOf(increaseRetries));
        this.scheduler.schedule(eVar, waitingTime);
        ActivityPackage activityPackage = responseData.activityPackage;
        activityPackage.setWaitBeforeSendTimeSeconds(activityPackage.getWaitBeforeSendTimeSeconds() + d10);
    }

    @Override // com.adjust.sdk.IPackageHandler
    public void pauseSending() {
        this.paused = true;
    }

    @Override // com.adjust.sdk.IPackageHandler
    public void resumeSending() {
        this.paused = false;
    }

    @Override // com.adjust.sdk.IPackageHandler
    public void sendFirstPackage() {
        this.scheduler.submit(new c());
    }

    @Override // com.adjust.sdk.IPackageHandler
    public void teardown() {
        this.logger.verbose("PackageHandler teardown", new Object[0]);
        ThreadScheduler threadScheduler = this.scheduler;
        if (threadScheduler != null) {
            threadScheduler.teardown();
        }
        WeakReference<IActivityHandler> weakReference = this.activityHandlerWeakRef;
        if (weakReference != null) {
            weakReference.clear();
        }
        List<ActivityPackage> list = this.packageQueue;
        if (list != null) {
            list.clear();
        }
        this.scheduler = null;
        this.activityHandlerWeakRef = null;
        this.packageQueue = null;
        this.isSending = null;
        this.context = null;
        this.logger = null;
        this.backoffStrategy = null;
    }
}
