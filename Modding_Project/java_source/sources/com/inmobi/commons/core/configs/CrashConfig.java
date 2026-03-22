package com.inmobi.commons.core.configs;

import androidx.annotation.Keep;
import com.inmobi.media.C3028k3;
import com.inmobi.media.C3125q4;
import com.inmobi.media.C3127q6;
import com.inmobi.media.D4;
import com.inmobi.media.R9;
import com.inmobi.media.S9;
import com.inmobi.media.Z4;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Keep
@Metadata
/* loaded from: classes5.dex */
public final class CrashConfig extends Config {
    @NotNull
    public static final C3028k3 Companion = new C3028k3();
    public static final long DEFAULT_ANR_WATCHDOG_INTERVAL = 4500;
    public static final long DEFAULT_APP_EXIT_REASON_WAIT_INTERVAL = 1000;
    public static final double DEFAULT_APP_EXIT_SAMPLING_PERCENT = 0.0d;
    public static final boolean DEFAULT_CATCH_ENABLED = false;
    public static final double DEFAULT_CATCH_SAMPLING_PERCENT = 0.0d;
    public static final boolean DEFAULT_CRASH_ENABLED = true;
    public static final double DEFAULT_CRASH_SAMPLING_PERCENT = 1.0d;
    public static final long DEFAULT_EVENT_TTL_SEC = 259200;
    public static final long DEFAULT_INCOMPLETE_LOG_THRESHOLD_INTERVAL = 30000;
    public static final long DEFAULT_INGESTION_LATENCY_SEC = 86400;
    public static final int DEFAULT_MAX_BATCH_SIZE = 2;
    public static final int DEFAULT_MAX_EVENTS_TO_PERSIST = 50;
    public static final int DEFAULT_MAX_NO_OF_LINES = 200;
    public static final int DEFAULT_MAX_RETRIES = 3;
    public static final int DEFAULT_MIN_BATCH_SIZE = 1;
    public static final long DEFAULT_PROCESSING_INTERVAL_SEC = 60;
    public static final long DEFAULT_RETRY_INTERVAL_SEC = 10;
    @NotNull
    public static final String DEFAULT_URL = "https://crash-metrics.sdk.inmobi.com/trace";
    public static final double DEFAULT_WATCHDOG_SAMPLING_PERCENT = 0.0d;
    @Z4
    private final String TAG;
    @NotNull
    private ANRConfig anr;
    @NotNull
    private CatchConfig catchConfig;
    private boolean catchEnabled;
    @NotNull
    private CrashIncidentConfig crashConfig;
    private boolean crashEnabled;
    private long eventTTL;
    private int maxEventsToPersist;
    private int maxRetryCount;
    @NotNull
    private S9 networkType;
    private long processingInterval;
    private long txLatency;
    @NotNull
    private String url;

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class ANRConfig {
        @NotNull
        private AppExitReasonConfig appExitReason = new AppExitReasonConfig();
        @NotNull
        private WatchDogConfig watchdog = new WatchDogConfig();

        @NotNull
        public final AppExitReasonConfig getAppExitReason() {
            return this.appExitReason;
        }

        @NotNull
        public final WatchDogConfig getWatchdog() {
            return this.watchdog;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class AppExitReasonConfig {
        private boolean enabled;
        private long incidentWaitInterval = 1000;
        private long incompleteLogThresholdTime = 30000;
        private int maxNumberOfLines = 200;
        private boolean reportToLogs;
        private double samplingPercent;
        private boolean useForReporting;

        public final boolean getEnabled() {
            return this.enabled;
        }

        public final long getIncidentWaitInterval() {
            return this.incidentWaitInterval;
        }

        public final long getIncompleteLogThresholdTime() {
            return this.incompleteLogThresholdTime;
        }

        public final int getMaxNumberOfLines() {
            return this.maxNumberOfLines;
        }

        public final boolean getReportToLogs() {
            return this.reportToLogs;
        }

        public final double getSamplingPercent() {
            return this.samplingPercent;
        }

        public final boolean getUseForReporting() {
            return this.useForReporting;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class CatchConfig {
        private boolean enabled;
        private double samplingPercent;

        public final boolean getEnabled() {
            return this.enabled;
        }

        public final double getSamplingPercent() {
            return this.samplingPercent;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class CrashIncidentConfig {
        private boolean reportOOMInfo;
        private boolean reportSessionInfo;
        private boolean enabled = true;
        private double samplingPercent = 1.0d;

        public final boolean getEnabled() {
            return this.enabled;
        }

        public final boolean getReportOOMInfo() {
            return this.reportOOMInfo;
        }

        public final boolean getReportSessionInfo() {
            return this.reportSessionInfo;
        }

        public final double getSamplingPercent() {
            return this.samplingPercent;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class WatchDogConfig {
        private boolean enabled;
        private long interval = CrashConfig.DEFAULT_ANR_WATCHDOG_INTERVAL;
        private double samplingPercent;
        private boolean useForReporting;

        public final boolean getEnabled() {
            return this.enabled;
        }

        public final long getInterval() {
            return this.interval;
        }

        public final double getSamplingPercent() {
            return this.samplingPercent;
        }

        public final boolean getUseForReporting() {
            return this.useForReporting;
        }
    }

    public CrashConfig(@Nullable String str) {
        super(str);
        this.TAG = "CrashConfig";
        this.url = DEFAULT_URL;
        this.processingInterval = 60L;
        this.maxRetryCount = 3;
        this.maxEventsToPersist = 50;
        this.eventTTL = DEFAULT_EVENT_TTL_SEC;
        this.txLatency = 86400L;
        this.crashEnabled = true;
        this.networkType = new S9();
        this.anr = new ANRConfig();
        this.crashConfig = new CrashIncidentConfig();
        this.catchConfig = new CatchConfig();
        setDefaultNetworkConfig();
    }

    private final void setDefaultNetworkConfig() {
        S9 s92 = this.networkType;
        R9 r92 = new R9();
        r92.a(10L);
        r92.c(1);
        r92.b(2);
        s92.getClass();
        Intrinsics.checkNotNullParameter(r92, "<set-?>");
        s92.wifi = r92;
        S9 s93 = this.networkType;
        R9 r93 = new R9();
        r93.a(10L);
        r93.c(1);
        r93.b(2);
        s93.getClass();
        Intrinsics.checkNotNullParameter(r93, "<set-?>");
        s93.others = r93;
    }

    @NotNull
    public final ANRConfig getANRConfig() {
        return this.anr;
    }

    @NotNull
    public final CatchConfig getCatchConfig() {
        return this.catchConfig;
    }

    @NotNull
    public final CrashIncidentConfig getCrashConfig() {
        return this.crashConfig;
    }

    @NotNull
    public final C3125q4 getEventConfig() {
        return new C3125q4(this.maxRetryCount, this.eventTTL, this.processingInterval, this.txLatency, getWifiConfig().b(), getWifiConfig().a(), getMobileConfig().b(), getMobileConfig().a(), getWifiConfig().c(), getMobileConfig().c());
    }

    public final long getEventTTL() {
        return this.eventTTL;
    }

    public final int getMaxEventsToPersist() {
        return this.maxEventsToPersist;
    }

    @NotNull
    public final R9 getMobileConfig() {
        R9 r92 = this.networkType.others;
        if (r92 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("others");
            return null;
        }
        return r92;
    }

    @Override // com.inmobi.commons.core.configs.Config
    @NotNull
    public String getType() {
        return "crashReporting";
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    @NotNull
    public final R9 getWifiConfig() {
        R9 r92 = this.networkType.wifi;
        if (r92 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("wifi");
            return null;
        }
        return r92;
    }

    @Override // com.inmobi.commons.core.configs.Config
    public boolean isValid() {
        if (D4.a(this.url)) {
            return false;
        }
        long j10 = this.txLatency;
        if (j10 < this.processingInterval || j10 > this.eventTTL) {
            return false;
        }
        S9 s92 = this.networkType;
        int i10 = this.maxEventsToPersist;
        R9 r92 = s92.wifi;
        R9 r93 = null;
        if (r92 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("wifi");
            r92 = null;
        }
        if (!r92.a(i10)) {
            return false;
        }
        R9 r94 = s92.others;
        if (r94 != null) {
            r93 = r94;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("others");
        }
        if (!r93.a(i10) || this.processingInterval <= 0 || this.maxRetryCount < 0 || this.txLatency <= 0 || this.eventTTL <= 0 || this.maxEventsToPersist <= 0) {
            return false;
        }
        return true;
    }

    @Override // com.inmobi.commons.core.configs.Config
    @NotNull
    public JSONObject toJson() {
        Companion.getClass();
        JSONObject a10 = new C3127q6().a(this);
        if (a10 == null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            return new JSONObject();
        }
        return a10;
    }
}
