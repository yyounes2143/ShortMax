package com.vungle.ads.internal.downloader;

import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.TimeIntervalMetric;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.model.AdAsset;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.LogEntry;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadRequest.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DownloadRequest {
    @NotNull
    private final AdAsset asset;
    @NotNull
    private final AtomicBoolean cancelled;
    @Nullable
    private TimeIntervalMetric downloadDuration;
    @Nullable
    private final LogEntry logEntry;
    @NotNull
    private final Priority priority;

    /* compiled from: DownloadRequest.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public enum Priority {
        CRITICAL(-2147483647),
        HIGHEST(0),
        HIGH(1),
        LOWEST(Integer.MAX_VALUE);
        
        private final int priority;

        Priority(int i10) {
            this.priority = i10;
        }

        public final int getPriority() {
            return this.priority;
        }
    }

    public DownloadRequest(@NotNull Priority priority, @NotNull AdAsset asset, @Nullable LogEntry logEntry) {
        Intrinsics.checkNotNullParameter(priority, "priority");
        Intrinsics.checkNotNullParameter(asset, "asset");
        this.priority = priority;
        this.asset = asset;
        this.logEntry = logEntry;
        this.cancelled = new AtomicBoolean(false);
    }

    public final void cancel() {
        this.cancelled.set(true);
    }

    @NotNull
    public final AdAsset getAsset() {
        return this.asset;
    }

    @Nullable
    public final LogEntry getLogEntry$vungle_ads_release() {
        return this.logEntry;
    }

    @NotNull
    /* renamed from: getPriority  reason: collision with other method in class */
    public final Priority m4796getPriority() {
        return this.priority;
    }

    public final boolean isCancelled() {
        return this.cancelled.get();
    }

    public final boolean isHtmlTemplate() {
        return Intrinsics.areEqual(this.asset.getAdIdentifier(), AdPayload.KEY_VM);
    }

    public final boolean isMainVideo() {
        return Intrinsics.areEqual(this.asset.getAdIdentifier(), Constants.KEY_MAIN_VIDEO);
    }

    public final boolean isTemplate() {
        if (this.asset.getFileType() != AdAsset.FileType.ZIP && !isHtmlTemplate()) {
            return false;
        }
        return true;
    }

    public final void startRecord() {
        TimeIntervalMetric timeIntervalMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.TEMPLATE_DOWNLOAD_DURATION_MS);
        this.downloadDuration = timeIntervalMetric;
        timeIntervalMetric.markStart();
    }

    public final void stopRecord() {
        TimeIntervalMetric timeIntervalMetric = this.downloadDuration;
        if (timeIntervalMetric != null) {
            timeIntervalMetric.markEnd();
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(timeIntervalMetric, this.logEntry, this.asset.getServerPath());
        }
    }

    @NotNull
    public String toString() {
        return "DownloadRequest{, priority=" + this.priority + ", url='" + this.asset.getServerPath() + "', path='" + this.asset.getLocalPath() + "', cancelled=" + this.cancelled + ", logEntry=" + this.logEntry + '}';
    }

    public final int getPriority() {
        return this.priority.getPriority();
    }

    public /* synthetic */ DownloadRequest(Priority priority, AdAsset adAsset, LogEntry logEntry, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(priority, adAsset, (i10 & 4) != 0 ? null : logEntry);
    }
}
