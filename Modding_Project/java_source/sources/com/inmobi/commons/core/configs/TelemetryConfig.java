package com.inmobi.commons.core.configs;

import androidx.annotation.Keep;
import androidx.annotation.VisibleForTesting;
import com.inmobi.media.C3125q4;
import com.inmobi.media.C3127q6;
import com.inmobi.media.D4;
import com.inmobi.media.Dc;
import com.inmobi.media.Ec;
import com.inmobi.media.Qd;
import com.inmobi.media.R9;
import com.inmobi.media.Rd;
import com.inmobi.media.S9;
import com.inmobi.media.U6;
import com.inmobi.media.Z4;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Keep
@Metadata
@SourceDebugExtension({"SMAP\nTelemetryConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelemetryConfig.kt\ncom/inmobi/commons/core/configs/TelemetryConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,365:1\n1855#2,2:366\n*S KotlinDebug\n*F\n+ 1 TelemetryConfig.kt\ncom/inmobi/commons/core/configs/TelemetryConfig\n*L\n168#1:366,2\n*E\n"})
/* loaded from: classes5.dex */
public final class TelemetryConfig extends Config {
    @NotNull
    public static final Rd Companion = new Rd();
    public static final long DEFAULT_DEEPLINK_FALLBACK_INTERVAL = 1000;
    public static final boolean DEFAULT_DISABLE_GENERAL_EVENTS = false;
    public static final long DEFAULT_EVENT_TTL_SEC = 604800;
    public static final long DEFAULT_INGESTION_LATENCY_SEC = 86400;
    public static final boolean DEFAULT_IS_ENABLED = true;
    public static final boolean DEFAULT_LOG_ENABLED = false;
    public static final long DEFAULT_LOG_EXPIRY = 86400;
    @NotNull
    private static final String DEFAULT_LOG_LEVEL = "ERROR";
    public static final int DEFAULT_LOG_MAX_RETRIES = 3;
    public static final long DEFAULT_LOG_RETRY_INTERVAL = 5000;
    public static final double DEFAULT_LOG_SAMPLING_FACTOR = 0.0d;
    @NotNull
    public static final String DEFAULT_LOG_URL = "https://log-activity.templates.inmobi.com/api/v1/ingest";
    public static final int DEFAULT_MAX_BATCH_SIZE = 20;
    public static final int DEFAULT_MAX_ENTRIES = 20;
    public static final int DEFAULT_MAX_EVENTS_TO_PERSIST = 1000;
    public static final int DEFAULT_MAX_RETRIES = 1;
    public static final int DEFAULT_MAX_TEMPLATE_EVENTS = 50;
    public static final int DEFAULT_MIN_BATCH_SIZE = 5;
    public static final long DEFAULT_PROCESSING_INTERVAL_SEC = 30;
    public static final long DEFAULT_REDIRECTION_INTERVAL = 1000;
    public static final long DEFAULT_RETRY_INTERVAL_SEC = 60;
    public static final double DEFAULT_SAMPLING_FACTOR = 0.0d;
    @NotNull
    public static final String DEFAULT_URL = "https://telemetry.sdk.inmobi.com/metrics";
    @Z4
    private final String TAG;
    @NotNull
    private AssetReportingConfig assetReporting;
    @NotNull
    private Base base;
    private boolean disableAllGeneralEvents;
    private long eventTTL;
    @NotNull
    private LoggingConfig loggingConfig;
    @NotNull
    private LandingPageConfig lpConfig;
    private int maxEventsToPersist;
    private int maxRetryCount;
    private int maxTemplateEvents;
    @NotNull
    private S9 networkType;
    private double pingSamplingFactor;
    @NotNull
    private List<String> priorityEvents;
    private long processingInterval;
    private double samplingFactor;
    private boolean sendCrashEvents;
    @NotNull
    private String telemetryUrl;
    private long txLatency;

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class AdTypeLoggingConfig {
        @NotNull

        /* renamed from: ab  reason: collision with root package name */
        private PlacementTypeLoggingConfig f23443ab = new PlacementTypeLoggingConfig();
        @NotNull
        private PlacementTypeLoggingConfig nonAb = new PlacementTypeLoggingConfig();

        @NotNull
        public final PlacementTypeLoggingConfig getAb() {
            return this.f23443ab;
        }

        @NotNull
        public final PlacementTypeLoggingConfig getNonAb() {
            return this.nonAb;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class AssetReportingConfig {
        private boolean gif;
        private boolean image;
        private boolean video;

        public final boolean getGif() {
            return this.gif;
        }

        public final boolean getImage() {
            return this.image;
        }

        public final boolean getVideo() {
            return this.video;
        }

        public final boolean isGifEnabled() {
            return this.gif;
        }

        public final boolean isImageEnabled() {
            return this.image;
        }

        public final boolean isVideoEnabled() {
            return this.video;
        }

        public final void setGif(boolean z10) {
            this.gif = z10;
        }

        public final void setImage(boolean z10) {
            this.image = z10;
        }

        public final void setVideo(boolean z10) {
            this.video = z10;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class Base {
        private boolean enabled = true;

        public final boolean getEnabled() {
            return this.enabled;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class LandingPageConfig {
        private boolean enableOnLpLifeCycleEvent;
        private boolean nativeEnabled;
        private int maxFunnelsToTrackPerAd = 10;
        private boolean universalLinkEnabled = true;

        public final boolean getEnableOnLpLifeCycleEvent() {
            return this.enableOnLpLifeCycleEvent;
        }

        public final int getMaxFunnelsToTrackPerAd() {
            return this.maxFunnelsToTrackPerAd;
        }

        public final boolean getNativeEnabled() {
            return this.nativeEnabled;
        }

        public final boolean getUniversalLinkEnabled() {
            return this.universalLinkEnabled;
        }

        public final void setEnableOnLpLifeCycleEvent(boolean z10) {
            this.enableOnLpLifeCycleEvent = z10;
        }

        public final void setMaxFunnelsToTrackPerAd(int i10) {
            this.maxFunnelsToTrackPerAd = i10;
        }

        public final void setNativeEnabled(boolean z10) {
            this.nativeEnabled = z10;
        }

        public final void setUniversalLinkEnabled(boolean z10) {
            this.universalLinkEnabled = z10;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class LoggingConfig {
        private boolean enabled;
        @NotNull
        private String loggingUrl = TelemetryConfig.DEFAULT_LOG_URL;
        private int maxNoOfEntries = 20;
        private long expiry = 86400;
        private int maxRetries = 3;
        private long retryInterval = 5000;
        @NotNull
        private AdTypeLoggingConfig banner = new AdTypeLoggingConfig();
        @NotNull
        private AdTypeLoggingConfig audio = new AdTypeLoggingConfig();
        @NotNull
        private AdTypeLoggingConfig int_html = new AdTypeLoggingConfig();
        @NotNull
        private AdTypeLoggingConfig int_native = new AdTypeLoggingConfig();
        @NotNull

        /* renamed from: native  reason: not valid java name */
        private AdTypeLoggingConfig f23native = new AdTypeLoggingConfig();
        @NotNull
        private PlacementTypeLoggingConfig getToken = new PlacementTypeLoggingConfig();

        @NotNull
        public final AdTypeLoggingConfig getAudio() {
            return this.audio;
        }

        @NotNull
        public final AdTypeLoggingConfig getBanner() {
            return this.banner;
        }

        public final boolean getEnabled() {
            return this.enabled;
        }

        public final long getExpiry() {
            return this.expiry;
        }

        @NotNull
        public final PlacementTypeLoggingConfig getGetToken() {
            return this.getToken;
        }

        @NotNull
        public final AdTypeLoggingConfig getInt_html() {
            return this.int_html;
        }

        @NotNull
        public final AdTypeLoggingConfig getInt_native() {
            return this.int_native;
        }

        @NotNull
        public final String getLoggingUrl() {
            return this.loggingUrl;
        }

        public final int getMaxNoOfEntries() {
            return this.maxNoOfEntries;
        }

        public final int getMaxRetries() {
            return this.maxRetries;
        }

        @NotNull
        public final AdTypeLoggingConfig getNative() {
            return this.f23native;
        }

        public final long getRetryInterval() {
            return this.retryInterval;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class PlacementTypeLoggingConfig {
        @NotNull
        private String logLevel;
        private double samplePercent;

        public PlacementTypeLoggingConfig() {
            TelemetryConfig.Companion.getClass();
            this.logLevel = TelemetryConfig.DEFAULT_LOG_LEVEL;
        }

        @NotNull
        public final String getLogLevel() {
            return this.logLevel;
        }

        public final double getSamplePercent() {
            return this.samplePercent;
        }
    }

    public TelemetryConfig(@Nullable String str) {
        super(str);
        this.telemetryUrl = DEFAULT_URL;
        this.TAG = "TelemetryConfig";
        this.processingInterval = 30L;
        this.maxRetryCount = 1;
        this.maxEventsToPersist = 1000;
        this.eventTTL = DEFAULT_EVENT_TTL_SEC;
        this.maxTemplateEvents = 50;
        this.txLatency = 86400L;
        Companion.getClass();
        this.priorityEvents = CollectionsKt.t("ServerFill", "ServerNoFill", "ServerError", "AdLoadFailed", "AdLoadSuccessful", "BlockAutoRedirection", "AssetDownloaded", "CrashEventOccurred", "InvalidConfig", "ConfigFetched", "SdkInitialized", "AdGetSignalsFailed", "AdGetSignalsSucceeded", "AdShowFailed", "AdLoadCalled", "AdLoadDroppedAtSDK", "AdShowCalled", "AdShowSuccessful", "AdGetSignalsCalled", "UnifiedIdNetworkCallRequested", "UnifiedIdNetworkResponseFailure", "FetchApiInvoked", "FetchCallbackFailure", "AdImpressionSuccessful", "RenderSuccess", "MUTTSuccess", "ParseSuccess", "WebViewLoadCalled", "PageStarted", "WebViewLoadFinished", "FireAdReady", "FireAdFailed", "TemplateEventDropped", "NetworkLoadLimitExceeded", "clickStartCalled", "landingsStartSuccess", "landingsStartFailed", "browserOpenFailed", "landingsPageStarted", "landingsCompleteSuccess", "landingsCompleteFailed");
        this.base = new Base();
        this.networkType = new S9();
        this.loggingConfig = new LoggingConfig();
        this.lpConfig = new LandingPageConfig();
        setDefaultNetworkConfig();
        this.assetReporting = getDefaultAssetReportingConfig();
    }

    private final AssetReportingConfig getDefaultAssetReportingConfig() {
        AssetReportingConfig assetReportingConfig = new AssetReportingConfig();
        assetReportingConfig.setVideo(true);
        assetReportingConfig.setImage(false);
        assetReportingConfig.setGif(false);
        return assetReportingConfig;
    }

    private final void setDefaultNetworkConfig() {
        S9 s92 = this.networkType;
        R9 r92 = new R9();
        r92.a(60L);
        r92.c(5);
        r92.b(20);
        s92.getClass();
        Intrinsics.checkNotNullParameter(r92, "<set-?>");
        s92.wifi = r92;
        S9 s93 = this.networkType;
        R9 r93 = new R9();
        r93.a(60L);
        r93.c(5);
        r93.b(20);
        s93.getClass();
        Intrinsics.checkNotNullParameter(r93, "<set-?>");
        s93.others = r93;
    }

    @NotNull
    public final AssetReportingConfig getAssetConfig() {
        return this.assetReporting;
    }

    public final boolean getEnabled() {
        return this.base.getEnabled();
    }

    @NotNull
    public final C3125q4 getEventConfig() {
        return new C3125q4(this.maxRetryCount, this.eventTTL, this.processingInterval, this.txLatency, getWifiConfig().b(), getWifiConfig().a(), getMobileConfig().b(), getMobileConfig().a(), getWifiConfig().c(), getMobileConfig().c());
    }

    @NotNull
    public final LoggingConfig getLoggingConfig() {
        return this.loggingConfig;
    }

    @NotNull
    public final LandingPageConfig getLpConfig() {
        return this.lpConfig;
    }

    public final int getMaxEventsToPersist() {
        return this.maxEventsToPersist;
    }

    public final int getMaxRetryCount() {
        return this.maxRetryCount;
    }

    public final int getMaxTemplateEvents() {
        return this.maxTemplateEvents;
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

    public final double getPingSamplingFactor() {
        return this.pingSamplingFactor;
    }

    @NotNull
    public final List<String> getPriorityEventsList() {
        return this.priorityEvents;
    }

    public final double getSamplingFactor() {
        return this.samplingFactor;
    }

    @NotNull
    public final String getTelemetryUrl() {
        return this.telemetryUrl;
    }

    @Override // com.inmobi.commons.core.configs.Config
    @NotNull
    public String getType() {
        return "telemetry";
    }

    @NotNull
    public final String getUrl() {
        return this.telemetryUrl;
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

    public final boolean isGeneralEventsDisabled() {
        return this.disableAllGeneralEvents;
    }

    @VisibleForTesting
    public final boolean isSameAs(@NotNull TelemetryConfig config) {
        boolean z10;
        Intrinsics.checkNotNullParameter(config, "config");
        if ((getAccountId$media_release() == null && config.getAccountId$media_release() == null) || (getAccountId$media_release() != null && StringsKt.H(getAccountId$media_release(), config.getAccountId$media_release(), false, 2, null))) {
            z10 = true;
        } else {
            z10 = false;
        }
        List<String> priorityEventsList = getPriorityEventsList();
        for (String str : config.getPriorityEventsList()) {
            if (!priorityEventsList.contains(str)) {
                return false;
            }
        }
        if (z10 && Intrinsics.areEqual(config.telemetryUrl, this.telemetryUrl) && config.samplingFactor == this.samplingFactor && config.eventTTL == this.eventTTL && config.maxEventsToPersist == this.maxEventsToPersist && config.maxRetryCount == this.maxRetryCount && config.getAssetConfig().isImageEnabled() == getAssetConfig().isImageEnabled() && config.getAssetConfig().isGifEnabled() == getAssetConfig().isGifEnabled() && config.getAssetConfig().isVideoEnabled() == getAssetConfig().isVideoEnabled()) {
            return true;
        }
        return false;
    }

    @Override // com.inmobi.commons.core.configs.Config
    public boolean isValid() {
        if (D4.a(this.telemetryUrl)) {
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
        if (!r93.a(i10) || this.processingInterval <= 0 || this.maxRetryCount < 0 || this.txLatency <= 0 || this.eventTTL <= 0 || this.maxEventsToPersist <= 0 || this.samplingFactor < 0.0d) {
            return false;
        }
        return true;
    }

    public final void setTelemetryUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.telemetryUrl = str;
    }

    public final boolean shouldSendCrashEvents() {
        return this.sendCrashEvents;
    }

    @Override // com.inmobi.commons.core.configs.Config
    @NotNull
    public JSONObject toJson() {
        Companion.getClass();
        JSONObject a10 = new C3127q6().a(new Ec("priorityEvents", TelemetryConfig.class), (Dc) new U6(new Qd(), String.class)).a(this);
        if (a10 == null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            return new JSONObject();
        }
        return a10;
    }
}
