package com.vungle.ads;

import android.os.Build;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.network.VungleHeader;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.ActivityManager;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnalyticsClient.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AnalyticsClient {
    private static final int MAX_BATCH_SIZE = 20;
    private static final long REFRESH_TIME_MILLIS = 5000;
    @NotNull
    private static final String TAG = "AnalyticsClient";
    @Nullable
    private static VungleThreadPoolExecutor executor;
    private static boolean metricsEnabled;
    @Nullable
    private static VungleApiClient vungleApiClient;
    @NotNull
    public static final AnalyticsClient INSTANCE = new AnalyticsClient();
    @NotNull
    private static final BlockingQueue<Sdk.SDKError.Builder> errors = new LinkedBlockingQueue();
    @NotNull
    private static final BlockingQueue<Sdk.SDKMetric.Builder> metrics = new LinkedBlockingQueue();
    @NotNull
    private static final BlockingQueue<Sdk.SDKError.Builder> pendingErrors = new LinkedBlockingQueue();
    @NotNull
    private static final BlockingQueue<Sdk.SDKMetric.Builder> pendingMetrics = new LinkedBlockingQueue();
    @NotNull
    private static LogLevel logLevel = LogLevel.ERROR_LOG_LEVEL_ERROR;
    private static boolean refreshEnabled = true;
    @NotNull
    private static final AtomicBoolean isInitialized = new AtomicBoolean(false);

    /* compiled from: AnalyticsClient.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public enum LogLevel {
        ERROR_LOG_LEVEL_OFF(0),
        ERROR_LOG_LEVEL_ERROR(1),
        ERROR_LOG_LEVEL_DEBUG(2);
        
        @NotNull
        public static final Companion Companion = new Companion(null);
        private final int level;

        /* compiled from: AnalyticsClient.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final LogLevel fromValue(int i10) {
                LogLevel logLevel = LogLevel.ERROR_LOG_LEVEL_DEBUG;
                if (i10 == logLevel.getLevel()) {
                    return logLevel;
                }
                LogLevel logLevel2 = LogLevel.ERROR_LOG_LEVEL_ERROR;
                if (i10 == logLevel2.getLevel()) {
                    return logLevel2;
                }
                LogLevel logLevel3 = LogLevel.ERROR_LOG_LEVEL_OFF;
                if (i10 == logLevel3.getLevel()) {
                    return logLevel3;
                }
                return logLevel2;
            }

            private Companion() {
            }
        }

        LogLevel(int i10) {
            this.level = i10;
        }

        public final int getLevel() {
            return this.level;
        }
    }

    /* compiled from: AnalyticsClient.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface RequestListener {
        void onFailure();

        void onSuccess();
    }

    private AnalyticsClient() {
    }

    @WorkerThread
    private final void flushErrors() {
        VungleApiClient vungleApiClient2;
        Logger.Companion companion = Logger.Companion;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Sending ");
        BlockingQueue<Sdk.SDKError.Builder> blockingQueue = errors;
        sb2.append(blockingQueue.size());
        sb2.append(" errors");
        companion.d(TAG, sb2.toString());
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        blockingQueue.drainTo(linkedBlockingQueue);
        if (!linkedBlockingQueue.isEmpty() && (vungleApiClient2 = vungleApiClient) != null) {
            vungleApiClient2.reportErrors(linkedBlockingQueue, new RequestListener() { // from class: com.vungle.ads.AnalyticsClient$flushErrors$1
                @Override // com.vungle.ads.AnalyticsClient.RequestListener
                public void onFailure() {
                    Logger.Companion companion2 = Logger.Companion;
                    companion2.d("AnalyticsClient", "Failed to send " + linkedBlockingQueue.size() + " errors");
                    AnalyticsClient.INSTANCE.getErrors$vungle_ads_release().addAll(linkedBlockingQueue);
                }

                @Override // com.vungle.ads.AnalyticsClient.RequestListener
                public void onSuccess() {
                    Logger.Companion companion2 = Logger.Companion;
                    companion2.d("AnalyticsClient", "Sent " + linkedBlockingQueue.size() + " errors");
                }
            });
        }
    }

    @WorkerThread
    private final void flushMetrics() {
        VungleApiClient vungleApiClient2;
        Logger.Companion companion = Logger.Companion;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Sending ");
        BlockingQueue<Sdk.SDKMetric.Builder> blockingQueue = metrics;
        sb2.append(blockingQueue.size());
        sb2.append(" metrics");
        companion.d(TAG, sb2.toString());
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        blockingQueue.drainTo(linkedBlockingQueue);
        if (!linkedBlockingQueue.isEmpty() && (vungleApiClient2 = vungleApiClient) != null) {
            vungleApiClient2.reportMetrics(linkedBlockingQueue, new RequestListener() { // from class: com.vungle.ads.AnalyticsClient$flushMetrics$1
                @Override // com.vungle.ads.AnalyticsClient.RequestListener
                public void onFailure() {
                    Logger.Companion companion2 = Logger.Companion;
                    companion2.d("AnalyticsClient", "Failed to send " + linkedBlockingQueue.size() + " metrics");
                    AnalyticsClient.INSTANCE.getMetrics$vungle_ads_release().addAll(linkedBlockingQueue);
                }

                @Override // com.vungle.ads.AnalyticsClient.RequestListener
                public void onSuccess() {
                    Logger.Companion companion2 = Logger.Companion;
                    companion2.d("AnalyticsClient", "Sent " + linkedBlockingQueue.size() + " metrics");
                }
            });
        }
    }

    private final Sdk.SDKMetric.Builder genMetric(Sdk.SDKMetric.SDKMetricType sDKMetricType, long j10, LogEntry logEntry, String str) {
        String str2;
        String headerUa;
        long j11;
        String vmVersion$vungle_ads_release;
        Sdk.SDKMetric.Builder value = Sdk.SDKMetric.newBuilder().setType(sDKMetricType).setValue(j10);
        String str3 = Build.MANUFACTURER;
        Sdk.SDKMetric.Builder model = value.setMake(str3).setModel(Build.MODEL);
        if (Intrinsics.areEqual("Amazon", str3)) {
            str2 = "amazon";
        } else {
            str2 = "android";
        }
        Sdk.SDKMetric.Builder osVersion = model.setOs(str2).setOsVersion(String.valueOf(Build.VERSION.SDK_INT));
        String str4 = "";
        Sdk.SDKMetric.Builder eventId = osVersion.setPlacementReferenceId((logEntry == null || (r4 = logEntry.getPlacementRefId$vungle_ads_release()) == null) ? "" : "").setCreativeId((logEntry == null || (r4 = logEntry.getCreativeId$vungle_ads_release()) == null) ? "" : "").setEventId((logEntry == null || (r4 = logEntry.getEventId$vungle_ads_release()) == null) ? "" : "");
        if (str == null) {
            str = "";
        }
        Sdk.SDKMetric.Builder meta = eventId.setMeta(str);
        if (logEntry == null || (headerUa = logEntry.getMediationName$vungle_ads_release()) == null) {
            headerUa = VungleHeader.INSTANCE.getHeaderUa();
        }
        Sdk.SDKMetric.Builder adSource = meta.setMediationName(headerUa).setAdSource((logEntry == null || (r4 = logEntry.getAdSource$vungle_ads_release()) == null) ? "" : "");
        if (logEntry != null && (vmVersion$vungle_ads_release = logEntry.getVmVersion$vungle_ads_release()) != null) {
            str4 = vmVersion$vungle_ads_release;
        }
        Sdk.SDKMetric.Builder vmVersion = adSource.setVmVersion(str4);
        if (ActivityManager.Companion.isForeground()) {
            j11 = 0;
        } else {
            j11 = 2;
        }
        Sdk.SDKMetric.Builder appState = vmVersion.setAppState(j11);
        Intrinsics.checkNotNullExpressionValue(appState, "newBuilder()\n           …isForeground()) 0 else 2)");
        return appState;
    }

    static /* synthetic */ Sdk.SDKMetric.Builder genMetric$default(AnalyticsClient analyticsClient, Sdk.SDKMetric.SDKMetricType sDKMetricType, long j10, LogEntry logEntry, String str, int i10, Object obj) {
        LogEntry logEntry2;
        String str2;
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        long j11 = j10;
        if ((i10 & 4) != 0) {
            logEntry2 = null;
        } else {
            logEntry2 = logEntry;
        }
        if ((i10 & 8) != 0) {
            str2 = null;
        } else {
            str2 = str;
        }
        return analyticsClient.genMetric(sDKMetricType, j11, logEntry2, str2);
    }

    private final Sdk.SDKError.Builder genSDKError(Sdk.SDKError.Reason reason, String str, LogEntry logEntry) {
        String str2;
        String headerUa;
        long j10;
        String vmVersion$vungle_ads_release;
        Sdk.SDKError.Builder newBuilder = Sdk.SDKError.newBuilder();
        String str3 = Build.MANUFACTURER;
        if (Intrinsics.areEqual("Amazon", str3)) {
            str2 = "amazon";
        } else {
            str2 = "android";
        }
        Sdk.SDKError.Builder at2 = newBuilder.setOs(str2).setOsVersion(String.valueOf(Build.VERSION.SDK_INT)).setMake(str3).setModel(Build.MODEL).setReason(reason).setMessage(str).setAt(System.currentTimeMillis());
        String str4 = "";
        Sdk.SDKError.Builder adSource = at2.setPlacementReferenceId((logEntry == null || (r0 = logEntry.getPlacementRefId$vungle_ads_release()) == null) ? "" : "").setCreativeId((logEntry == null || (r0 = logEntry.getCreativeId$vungle_ads_release()) == null) ? "" : "").setEventId((logEntry == null || (r0 = logEntry.getEventId$vungle_ads_release()) == null) ? "" : "").setAdSource((logEntry == null || (r0 = logEntry.getAdSource$vungle_ads_release()) == null) ? "" : "");
        if (logEntry != null && (vmVersion$vungle_ads_release = logEntry.getVmVersion$vungle_ads_release()) != null) {
            str4 = vmVersion$vungle_ads_release;
        }
        Sdk.SDKError.Builder vmVersion = adSource.setVmVersion(str4);
        if (logEntry == null || (headerUa = logEntry.getMediationName$vungle_ads_release()) == null) {
            headerUa = VungleHeader.INSTANCE.getHeaderUa();
        }
        Sdk.SDKError.Builder mediationName = vmVersion.setMediationName(headerUa);
        if (ActivityManager.Companion.isForeground()) {
            j10 = 0;
        } else {
            j10 = 2;
        }
        Sdk.SDKError.Builder appState = mediationName.setAppState(j10);
        Intrinsics.checkNotNullExpressionValue(appState, "newBuilder()\n           …isForeground()) 0 else 2)");
        return appState;
    }

    static /* synthetic */ Sdk.SDKError.Builder genSDKError$default(AnalyticsClient analyticsClient, Sdk.SDKError.Reason reason, String str, LogEntry logEntry, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            logEntry = null;
        }
        return analyticsClient.genSDKError(reason, str, logEntry);
    }

    /* renamed from: initOrUpdate$lambda-1 */
    public static final void m4751initOrUpdate$lambda1(VungleThreadPoolExecutor executor2) {
        Intrinsics.checkNotNullParameter(executor2, "$executor");
        executor2.execute(new Runnable() { // from class: com.vungle.ads.b
            @Override // java.lang.Runnable
            public final void run() {
                AnalyticsClient.m4752initOrUpdate$lambda1$lambda0();
            }
        });
    }

    /* renamed from: initOrUpdate$lambda-1$lambda-0 */
    public static final void m4752initOrUpdate$lambda1$lambda0() {
        INSTANCE.report();
    }

    /* renamed from: logError$lambda-2 */
    public static final void m4753logError$lambda2(Sdk.SDKError.Reason reason, String message, LogEntry logEntry) {
        Intrinsics.checkNotNullParameter(reason, "$reason");
        Intrinsics.checkNotNullParameter(message, "$message");
        INSTANCE.logErrorInSameThread(reason, message, logEntry);
    }

    public static /* synthetic */ void logError$vungle_ads_release$default(AnalyticsClient analyticsClient, Sdk.SDKError.Reason reason, String str, LogEntry logEntry, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            logEntry = null;
        }
        analyticsClient.logError$vungle_ads_release(reason, str, logEntry);
    }

    private final synchronized void logErrorInSameThread(Sdk.SDKError.Reason reason, String str, LogEntry logEntry) {
        if (logLevel == LogLevel.ERROR_LOG_LEVEL_OFF) {
            return;
        }
        try {
            Sdk.SDKError.Builder genSDKError = genSDKError(reason, str, logEntry);
            BlockingQueue<Sdk.SDKError.Builder> blockingQueue = errors;
            blockingQueue.put(genSDKError);
            Logger.Companion companion = Logger.Companion;
            companion.w(TAG, "Logging error: " + reason + " with message: " + str + ", mediation: " + genSDKError.getMediationName());
            if (blockingQueue.size() >= 20) {
                report();
            }
        } catch (Exception e10) {
            Logger.Companion.e(TAG, "Cannot logError", e10);
        }
    }

    static /* synthetic */ void logErrorInSameThread$default(AnalyticsClient analyticsClient, Sdk.SDKError.Reason reason, String str, LogEntry logEntry, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            logEntry = null;
        }
        analyticsClient.logErrorInSameThread(reason, str, logEntry);
    }

    /* renamed from: logMetric$lambda-3 */
    public static final void m4754logMetric$lambda3(Sdk.SDKMetric.SDKMetricType metricType, long j10, LogEntry logEntry, String str) {
        Intrinsics.checkNotNullParameter(metricType, "$metricType");
        INSTANCE.logMetricInSameThread(metricType, j10, logEntry, str);
    }

    public static /* synthetic */ void logMetric$vungle_ads_release$default(AnalyticsClient analyticsClient, Sdk.SDKMetric.SDKMetricType sDKMetricType, long j10, LogEntry logEntry, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        analyticsClient.logMetric$vungle_ads_release(sDKMetricType, j10, (i10 & 4) != 0 ? null : logEntry, (i10 & 8) != 0 ? null : str);
    }

    private final synchronized void logMetricInSameThread(Sdk.SDKMetric.SDKMetricType sDKMetricType, long j10, LogEntry logEntry, String str) {
        String str2;
        try {
            if (!metricsEnabled) {
                return;
            }
            try {
                Sdk.SDKMetric.Builder genMetric = genMetric(sDKMetricType, j10, logEntry, str);
                BlockingQueue<Sdk.SDKMetric.Builder> blockingQueue = metrics;
                blockingQueue.put(genMetric);
                Logger.Companion companion = Logger.Companion;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Logging Metric ");
                sb2.append(sDKMetricType);
                sb2.append(" with value ");
                sb2.append(j10);
                sb2.append(" for placement ");
                if (logEntry != null) {
                    str2 = logEntry.getPlacementRefId$vungle_ads_release();
                } else {
                    str2 = null;
                }
                sb2.append(str2);
                sb2.append(" mediation:");
                sb2.append(genMetric.getMediationName());
                companion.w(TAG, sb2.toString());
                if (blockingQueue.size() >= 20) {
                    report();
                }
            } catch (Exception e10) {
                Logger.Companion.e(TAG, "Cannot logMetrics", e10);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    static /* synthetic */ void logMetricInSameThread$default(AnalyticsClient analyticsClient, Sdk.SDKMetric.SDKMetricType sDKMetricType, long j10, LogEntry logEntry, String str, int i10, Object obj) {
        LogEntry logEntry2;
        String str2;
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        long j11 = j10;
        if ((i10 & 4) != 0) {
            logEntry2 = null;
        } else {
            logEntry2 = logEntry;
        }
        if ((i10 & 8) != 0) {
            str2 = null;
        } else {
            str2 = str;
        }
        analyticsClient.logMetricInSameThread(sDKMetricType, j11, logEntry2, str2);
    }

    private final synchronized void report() {
        try {
            if (logLevel != LogLevel.ERROR_LOG_LEVEL_OFF && errors.size() > 0) {
                flushErrors();
            }
            if (metricsEnabled && metrics.size() > 0) {
                flushMetrics();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @NotNull
    public final BlockingQueue<Sdk.SDKError.Builder> getErrors$vungle_ads_release() {
        return errors;
    }

    @Nullable
    public final VungleThreadPoolExecutor getExecutor$vungle_ads_release() {
        return executor;
    }

    @NotNull
    public final BlockingQueue<Sdk.SDKMetric.Builder> getMetrics$vungle_ads_release() {
        return metrics;
    }

    public final boolean getMetricsEnabled$vungle_ads_release() {
        return metricsEnabled;
    }

    @NotNull
    public final BlockingQueue<Sdk.SDKError.Builder> getPendingErrors$vungle_ads_release() {
        return pendingErrors;
    }

    @NotNull
    public final BlockingQueue<Sdk.SDKMetric.Builder> getPendingMetrics$vungle_ads_release() {
        return pendingMetrics;
    }

    public final boolean getRefreshEnabled$vungle_ads_release() {
        return refreshEnabled;
    }

    @Nullable
    public final VungleApiClient getVungleApiClient$vungle_ads_release() {
        return vungleApiClient;
    }

    public final synchronized void initOrUpdate$vungle_ads_release(@NotNull VungleApiClient vungleApiClient2, @NotNull final VungleThreadPoolExecutor executor2, int i10, boolean z10) {
        try {
            Intrinsics.checkNotNullParameter(vungleApiClient2, "vungleApiClient");
            Intrinsics.checkNotNullParameter(executor2, "executor");
            logLevel = LogLevel.Companion.fromValue(i10);
            metricsEnabled = z10;
            if (i10 == LogLevel.ERROR_LOG_LEVEL_DEBUG.getLevel()) {
                Logger.Companion.enable(true);
            } else if (i10 == LogLevel.ERROR_LOG_LEVEL_ERROR.getLevel()) {
                Logger.Companion.enable(false);
            } else if (i10 == LogLevel.ERROR_LOG_LEVEL_OFF.getLevel()) {
                Logger.Companion.enable(false);
            }
            if (isInitialized.getAndSet(true)) {
                Logger.Companion.d(TAG, "AnalyticsClient already initialized");
                return;
            }
            executor = executor2;
            vungleApiClient = vungleApiClient2;
            try {
                BlockingQueue<Sdk.SDKError.Builder> blockingQueue = pendingErrors;
                if (!blockingQueue.isEmpty()) {
                    blockingQueue.drainTo(errors);
                }
            } catch (Exception e10) {
                Logger.Companion.e(TAG, "Failed to add pendingErrors to errors queue.", e10);
            }
            try {
                BlockingQueue<Sdk.SDKMetric.Builder> blockingQueue2 = pendingMetrics;
                if (!blockingQueue2.isEmpty()) {
                    blockingQueue2.drainTo(metrics);
                }
            } catch (Exception e11) {
                Logger.Companion.e(TAG, "Failed to add pendingMetrics to metrics queue.", e11);
            }
            if (refreshEnabled) {
                Executors.newSingleThreadScheduledExecutor().scheduleWithFixedDelay(new Runnable() { // from class: com.vungle.ads.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnalyticsClient.m4751initOrUpdate$lambda1(VungleThreadPoolExecutor.this);
                    }
                }, 5000L, 5000L, TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @NotNull
    public final AtomicBoolean isInitialized$vungle_ads_release() {
        return isInitialized;
    }

    public final synchronized void logError$vungle_ads_release(@NotNull final Sdk.SDKError.Reason reason, @NotNull final String message, @Nullable final LogEntry logEntry) {
        VungleThreadPoolExecutor vungleThreadPoolExecutor;
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(message, "message");
        try {
            vungleThreadPoolExecutor = executor;
        } catch (Exception e10) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Cannot logError " + reason + ", " + message + ", " + logEntry, e10);
        }
        if (vungleThreadPoolExecutor == null) {
            pendingErrors.put(genSDKError(reason, message, logEntry));
            return;
        }
        if (vungleThreadPoolExecutor != null) {
            vungleThreadPoolExecutor.execute(new Runnable() { // from class: com.vungle.ads.c
                @Override // java.lang.Runnable
                public final void run() {
                    AnalyticsClient.m4753logError$lambda2(Sdk.SDKError.Reason.this, message, logEntry);
                }
            });
        }
    }

    public final synchronized void logMetric$vungle_ads_release(@NotNull final Sdk.SDKMetric.SDKMetricType metricType, final long j10, @Nullable final LogEntry logEntry, @Nullable final String str) {
        VungleThreadPoolExecutor vungleThreadPoolExecutor;
        Intrinsics.checkNotNullParameter(metricType, "metricType");
        try {
            vungleThreadPoolExecutor = executor;
        } catch (Exception e10) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Cannot logMetric " + metricType + ", " + j10 + ", " + logEntry + ", " + str, e10);
        }
        if (vungleThreadPoolExecutor == null) {
            pendingMetrics.put(genMetric(metricType, j10, logEntry, str));
            return;
        }
        if (vungleThreadPoolExecutor != null) {
            vungleThreadPoolExecutor.execute(new Runnable() { // from class: com.vungle.ads.a
                @Override // java.lang.Runnable
                public final void run() {
                    AnalyticsClient.m4754logMetric$lambda3(Sdk.SDKMetric.SDKMetricType.this, j10, logEntry, str);
                }
            });
        }
    }

    public final void setExecutor$vungle_ads_release(@Nullable VungleThreadPoolExecutor vungleThreadPoolExecutor) {
        executor = vungleThreadPoolExecutor;
    }

    public final void setMetricsEnabled$vungle_ads_release(boolean z10) {
        metricsEnabled = z10;
    }

    public final void setRefreshEnabled$vungle_ads_release(boolean z10) {
        refreshEnabled = z10;
    }

    public final void setVungleApiClient$vungle_ads_release(@Nullable VungleApiClient vungleApiClient2) {
        vungleApiClient = vungleApiClient2;
    }

    public static /* synthetic */ void logMetric$vungle_ads_release$default(AnalyticsClient analyticsClient, SingleValueMetric singleValueMetric, LogEntry logEntry, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            logEntry = null;
        }
        if ((i10 & 4) != 0) {
            str = singleValueMetric.getMeta();
        }
        analyticsClient.logMetric$vungle_ads_release(singleValueMetric, logEntry, str);
    }

    public static /* synthetic */ void logMetric$vungle_ads_release$default(AnalyticsClient analyticsClient, TimeIntervalMetric timeIntervalMetric, LogEntry logEntry, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            logEntry = null;
        }
        if ((i10 & 4) != 0) {
            str = timeIntervalMetric.getMeta();
        }
        analyticsClient.logMetric$vungle_ads_release(timeIntervalMetric, logEntry, str);
    }

    public static /* synthetic */ void logMetric$vungle_ads_release$default(AnalyticsClient analyticsClient, OneShotTimeIntervalMetric oneShotTimeIntervalMetric, LogEntry logEntry, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            logEntry = null;
        }
        if ((i10 & 4) != 0) {
            str = oneShotTimeIntervalMetric.getMeta();
        }
        analyticsClient.logMetric$vungle_ads_release(oneShotTimeIntervalMetric, logEntry, str);
    }

    public final synchronized void logMetric$vungle_ads_release(@NotNull SingleValueMetric singleValueMetric, @Nullable LogEntry logEntry, @Nullable String str) {
        Intrinsics.checkNotNullParameter(singleValueMetric, "singleValueMetric");
        logMetric$vungle_ads_release(singleValueMetric.getMetricType(), singleValueMetric.getValue(), logEntry, str);
    }

    public final synchronized void logMetric$vungle_ads_release(@NotNull TimeIntervalMetric timeIntervalMetric, @Nullable LogEntry logEntry, @Nullable String str) {
        Intrinsics.checkNotNullParameter(timeIntervalMetric, "timeIntervalMetric");
        logMetric$vungle_ads_release(timeIntervalMetric.getMetricType(), timeIntervalMetric.getValue(), logEntry, str);
    }

    @VisibleForTesting
    public static /* synthetic */ void getErrors$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getExecutor$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getMetrics$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getMetricsEnabled$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getPendingErrors$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getPendingMetrics$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getRefreshEnabled$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getVungleApiClient$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isInitialized$vungle_ads_release$annotations() {
    }

    public final synchronized void logMetric$vungle_ads_release(@NotNull OneShotTimeIntervalMetric oneShotTimeIntervalMetric, @Nullable LogEntry logEntry, @Nullable String str) {
        Intrinsics.checkNotNullParameter(oneShotTimeIntervalMetric, "oneShotTimeIntervalMetric");
        if (!oneShotTimeIntervalMetric.isLogged()) {
            logMetric$vungle_ads_release((TimeIntervalMetric) oneShotTimeIntervalMetric, logEntry, str);
            oneShotTimeIntervalMetric.markLogged();
        }
    }
}
