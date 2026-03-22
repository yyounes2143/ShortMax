package com.vungle.ads.internal;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.APIFailedStatusCodeError;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.InvalidEndpointError;
import com.vungle.ads.NetworkUnreachable;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.model.Cookie;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.network.Call;
import com.vungle.ads.internal.network.Callback;
import com.vungle.ads.internal.network.Response;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.s;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.t;
/* compiled from: ConfigManager.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ConfigManager {
    private static final int CONFIG_ALL_DATA = 2;
    private static final int CONFIG_LAST_VALIDATED_TIMESTAMP_ONLY = 1;
    public static final long CONFIG_LAST_VALIDATE_TS_DEFAULT = -1;
    private static final int CONFIG_NOT_AVAILABLE = 0;
    private static final int DEFAULT_SESSION_TIMEOUT_SECONDS = 900;
    private static final int DEFAULT_SIGNALS_SESSION_TIMEOUT_SECONDS = 1800;
    @NotNull
    public static final String TAG = "ConfigManager";
    private static String applicationId;
    @Nullable
    private static ConfigPayload config;
    @Nullable
    private static String configExt;
    @Nullable
    private static ConfigPayload.Endpoints endpoints;
    @Nullable
    private static List<Placement> placements;
    @NotNull
    public static final ConfigManager INSTANCE = new ConfigManager();
    @NotNull
    private static final kotlinx.serialization.json.a json = s.b(null, new Function1<kotlinx.serialization.json.c, Unit>() { // from class: com.vungle.ads.internal.ConfigManager$json$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(kotlinx.serialization.json.c cVar) {
            invoke2(cVar);
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull kotlinx.serialization.json.c Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.f(true);
            Json.d(true);
            Json.e(false);
        }
    }, 1, null);

    private ConfigManager() {
    }

    /* renamed from: fetchConfigAsync$lambda-0  reason: not valid java name */
    private static final VungleApiClient m4772fetchConfigAsync$lambda0(i<VungleApiClient> iVar) {
        return iVar.getValue();
    }

    /* renamed from: initWithConfig$lambda-2  reason: not valid java name */
    private static final FilePreferences m4773initWithConfig$lambda2(i<FilePreferences> iVar) {
        return iVar.getValue();
    }

    /* renamed from: initWithConfig$lambda-4  reason: not valid java name */
    private static final VungleApiClient m4774initWithConfig$lambda4(i<VungleApiClient> iVar) {
        return iVar.getValue();
    }

    /* renamed from: initWithConfig$lambda-5  reason: not valid java name */
    private static final Executors m4775initWithConfig$lambda5(i<? extends Executors> iVar) {
        return iVar.getValue();
    }

    public static /* synthetic */ void initWithConfig$vungle_ads_release$default(ConfigManager configManager, Context context, ConfigPayload configPayload, boolean z10, SingleValueMetric singleValueMetric, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            singleValueMetric = null;
        }
        configManager.initWithConfig$vungle_ads_release(context, configPayload, z10, singleValueMetric);
    }

    /* renamed from: updateConfigExtension$lambda-1  reason: not valid java name */
    private static final FilePreferences m4776updateConfigExtension$lambda1(i<FilePreferences> iVar) {
        return iVar.getValue();
    }

    public static /* synthetic */ boolean validateEndpoints$vungle_ads_release$default(ConfigManager configManager, ConfigPayload.Endpoints endpoints2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            endpoints2 = endpoints;
        }
        return configManager.validateEndpoints$vungle_ads_release(endpoints2);
    }

    public final long afterClickDuration() {
        ConfigPayload.AutoRedirect autoRedirect;
        Long afterClickDuration;
        ConfigPayload configPayload = config;
        if (configPayload != null && (autoRedirect = configPayload.getAutoRedirect()) != null && (afterClickDuration = autoRedirect.getAfterClickDuration()) != null) {
            return afterClickDuration.longValue();
        }
        return Long.MAX_VALUE;
    }

    public final boolean allowAutoRedirects() {
        ConfigPayload.AutoRedirect autoRedirect;
        Boolean allowAutoRedirect;
        ConfigPayload configPayload = config;
        if (configPayload != null && (autoRedirect = configPayload.getAutoRedirect()) != null && (allowAutoRedirect = autoRedirect.getAllowAutoRedirect()) != null) {
            return allowAutoRedirect.booleanValue();
        }
        return false;
    }

    @VisibleForTesting
    public final int checkConfigPayload$vungle_ads_release(@Nullable ConfigPayload configPayload) {
        if (configPayload == null || configPayload.getConfigLastValidatedTimestamp() == null) {
            return 0;
        }
        Long configLastValidatedTimestamp = configPayload.getConfigLastValidatedTimestamp();
        if (configLastValidatedTimestamp != null && configLastValidatedTimestamp.longValue() == -1) {
            return 0;
        }
        if (configPayload.getEndpoints() == null) {
            return 1;
        }
        return 2;
    }

    @VisibleForTesting
    public final void clearConfig$vungle_ads_release() {
        endpoints = null;
        placements = null;
        config = null;
    }

    public final long configLastValidatedTimestamp() {
        Long configLastValidatedTimestamp;
        ConfigPayload configPayload = config;
        if (configPayload != null && (configLastValidatedTimestamp = configPayload.getConfigLastValidatedTimestamp()) != null) {
            return configLastValidatedTimestamp.longValue();
        }
        return -1L;
    }

    public final void fetchConfigAsync$vungle_ads_release(@NotNull final Context context, @NotNull final Function1<? super Boolean, Unit> onComplete) {
        boolean z10;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        try {
            Call<ConfigPayload> config2 = m4772fetchConfigAsync$lambda0(kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.ConfigManager$fetchConfigAsync$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final VungleApiClient invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
                }
            })).config();
            if (config2 != null) {
                config2.enqueue(new Callback<ConfigPayload>() { // from class: com.vungle.ads.internal.ConfigManager$fetchConfigAsync$1
                    @Override // com.vungle.ads.internal.network.Callback
                    public void onFailure(@Nullable Call<ConfigPayload> call, @Nullable Throwable th2) {
                        String str;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Error while fetching config: ");
                        if (th2 != null) {
                            str = th2.getMessage();
                        } else {
                            str = null;
                        }
                        sb2.append(str);
                        new NetworkUnreachable(sb2.toString()).logErrorNoReturnValue$vungle_ads_release();
                        onComplete.invoke(Boolean.FALSE);
                    }

                    @Override // com.vungle.ads.internal.network.Callback
                    public void onResponse(@Nullable Call<ConfigPayload> call, @Nullable Response<ConfigPayload> response) {
                        Integer num;
                        if (response != null && response.isSuccessful() && response.body() != null) {
                            SingleValueMetric singleValueMetric = new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.CONFIG_LOADED_FROM_INIT);
                            ConfigManager.INSTANCE.initWithConfig$vungle_ads_release(context, response.body(), false, singleValueMetric);
                            onComplete.invoke(Boolean.TRUE);
                            return;
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("config API: ");
                        if (response != null) {
                            num = Integer.valueOf(response.code());
                        } else {
                            num = null;
                        }
                        sb2.append(num);
                        new APIFailedStatusCodeError(sb2.toString()).logErrorNoReturnValue$vungle_ads_release();
                        onComplete.invoke(Boolean.FALSE);
                    }
                });
            }
        } catch (Throwable th2) {
            if (th2 instanceof UnknownHostException) {
                z10 = true;
            } else {
                z10 = th2 instanceof SecurityException;
            }
            if (z10) {
                new NetworkUnreachable("Config unknown: " + th2.getMessage()).logErrorNoReturnValue$vungle_ads_release();
            } else {
                new NetworkUnreachable("Config: " + th2.getMessage()).logErrorNoReturnValue$vungle_ads_release();
            }
            onComplete.invoke(Boolean.FALSE);
        }
    }

    public final boolean fpdEnabled() {
        Boolean fpdEnabled;
        ConfigPayload configPayload = config;
        if (configPayload != null && (fpdEnabled = configPayload.getFpdEnabled()) != null) {
            return fpdEnabled.booleanValue();
        }
        return true;
    }

    @NotNull
    public final String getAdsEndpoint() {
        String str;
        ConfigPayload.Endpoints endpoints2 = endpoints;
        String str2 = null;
        if (endpoints2 != null) {
            str = endpoints2.getAdsEndpoint();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            str2 = str;
        }
        if (str2 == null) {
            return Constants.DEFAULT_ADS_ENDPOINT;
        }
        return str2;
    }

    @Nullable
    public final ConfigPayload getCachedConfig(@NotNull FilePreferences filePreferences, @NotNull String appId) {
        long j10;
        Long refreshTime;
        Intrinsics.checkNotNullParameter(filePreferences, "filePreferences");
        Intrinsics.checkNotNullParameter(appId, "appId");
        try {
            String string = filePreferences.getString(Cookie.CONFIG_APP_ID);
            if (string != null && string.length() != 0 && StringsKt.G(string, appId, true)) {
                String string2 = filePreferences.getString(Cookie.CONFIG_RESPONSE);
                if (string2 == null) {
                    return null;
                }
                long j11 = filePreferences.getLong(Cookie.CONFIG_UPDATE_TIME, 0L);
                kotlinx.serialization.json.a aVar = json;
                KSerializer<Object> c10 = t.c(aVar.getSerializersModule(), Reflection.typeOf(ConfigPayload.class));
                Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                ConfigPayload configPayload = (ConfigPayload) aVar.b(c10, string2);
                ConfigPayload.ConfigSettings configSettings = configPayload.getConfigSettings();
                if (configSettings != null && (refreshTime = configSettings.getRefreshTime()) != null) {
                    j10 = refreshTime.longValue();
                } else {
                    j10 = -1;
                }
                if (j10 + j11 < System.currentTimeMillis()) {
                    Logger.Companion.w(TAG, "cache config expired. re-config");
                    return null;
                }
                Logger.Companion.w(TAG, "use cache config.");
                return configPayload;
            }
            Logger.Companion.w(TAG, "app id mismatch, re-config");
            return null;
        } catch (Exception e10) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Error while parsing cached config: " + e10.getMessage());
            return null;
        }
    }

    public final int getCleverCacheDiskPercentage() {
        ConfigPayload.CleverCache cleverCache;
        Integer diskPercentage;
        ConfigPayload configPayload = config;
        if (configPayload != null && (cleverCache = configPayload.getCleverCache()) != null && (diskPercentage = cleverCache.getDiskPercentage()) != null) {
            return diskPercentage.intValue();
        }
        return 3;
    }

    public final long getCleverCacheDiskSize() {
        ConfigPayload.CleverCache cleverCache;
        Long diskSize;
        ConfigPayload configPayload = config;
        if (configPayload != null && (cleverCache = configPayload.getCleverCache()) != null && (diskSize = cleverCache.getDiskSize()) != null) {
            long j10 = 1024;
            return diskSize.longValue() * j10 * j10;
        }
        return 1048576000L;
    }

    @NotNull
    public final String getConfigExtension() {
        String str = configExt;
        if (str == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String getErrorLoggingEndpoint() {
        String str;
        ConfigPayload.Endpoints endpoints2 = endpoints;
        String str2 = null;
        if (endpoints2 != null) {
            str = endpoints2.getErrorLogsEndpoint();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            str2 = str;
        }
        if (str2 == null) {
            return Constants.DEFAULT_ERROR_LOGS_ENDPOINT;
        }
        return str2;
    }

    @Nullable
    public final String getGDPRButtonAccept() {
        ConfigPayload.UserPrivacy userPrivacy;
        ConfigPayload.GDPRSettings gdpr;
        ConfigPayload configPayload = config;
        if (configPayload != null && (userPrivacy = configPayload.getUserPrivacy()) != null && (gdpr = userPrivacy.getGdpr()) != null) {
            return gdpr.getButtonAccept();
        }
        return null;
    }

    @Nullable
    public final String getGDPRButtonDeny() {
        ConfigPayload.UserPrivacy userPrivacy;
        ConfigPayload.GDPRSettings gdpr;
        ConfigPayload configPayload = config;
        if (configPayload != null && (userPrivacy = configPayload.getUserPrivacy()) != null && (gdpr = userPrivacy.getGdpr()) != null) {
            return gdpr.getButtonDeny();
        }
        return null;
    }

    @Nullable
    public final String getGDPRConsentMessage() {
        ConfigPayload.UserPrivacy userPrivacy;
        ConfigPayload.GDPRSettings gdpr;
        ConfigPayload configPayload = config;
        if (configPayload != null && (userPrivacy = configPayload.getUserPrivacy()) != null && (gdpr = userPrivacy.getGdpr()) != null) {
            return gdpr.getConsentMessage();
        }
        return null;
    }

    @NotNull
    public final String getGDPRConsentMessageVersion() {
        ConfigPayload.UserPrivacy userPrivacy;
        ConfigPayload.GDPRSettings gdpr;
        String consentMessageVersion;
        ConfigPayload configPayload = config;
        if (configPayload == null || (userPrivacy = configPayload.getUserPrivacy()) == null || (gdpr = userPrivacy.getGdpr()) == null || (consentMessageVersion = gdpr.getConsentMessageVersion()) == null) {
            return "";
        }
        return consentMessageVersion;
    }

    @Nullable
    public final String getGDPRConsentTitle() {
        ConfigPayload.UserPrivacy userPrivacy;
        ConfigPayload.GDPRSettings gdpr;
        ConfigPayload configPayload = config;
        if (configPayload != null && (userPrivacy = configPayload.getUserPrivacy()) != null && (gdpr = userPrivacy.getGdpr()) != null) {
            return gdpr.getConsentTitle();
        }
        return null;
    }

    public final boolean getGDPRIsCountryDataProtected() {
        ConfigPayload.UserPrivacy userPrivacy;
        ConfigPayload.GDPRSettings gdpr;
        Boolean isCountryDataProtected;
        ConfigPayload configPayload = config;
        if (configPayload != null && (userPrivacy = configPayload.getUserPrivacy()) != null && (gdpr = userPrivacy.getGdpr()) != null && (isCountryDataProtected = gdpr.isCountryDataProtected()) != null) {
            return isCountryDataProtected.booleanValue();
        }
        return false;
    }

    public final int getLogLevel() {
        ConfigPayload.LogMetricsSettings logMetricsSettings;
        Integer errorLogLevel;
        ConfigPayload configPayload = config;
        if (configPayload != null && (logMetricsSettings = configPayload.getLogMetricsSettings()) != null && (errorLogLevel = logMetricsSettings.getErrorLogLevel()) != null) {
            return errorLogLevel.intValue();
        }
        return AnalyticsClient.LogLevel.ERROR_LOG_LEVEL_ERROR.getLevel();
    }

    public final boolean getMetricsEnabled() {
        ConfigPayload.LogMetricsSettings logMetricsSettings;
        Boolean metricsEnabled;
        ConfigPayload configPayload = config;
        if (configPayload != null && (logMetricsSettings = configPayload.getLogMetricsSettings()) != null && (metricsEnabled = logMetricsSettings.getMetricsEnabled()) != null) {
            return metricsEnabled.booleanValue();
        }
        return false;
    }

    @NotNull
    public final String getMetricsEndpoint() {
        String str;
        ConfigPayload.Endpoints endpoints2 = endpoints;
        String str2 = null;
        if (endpoints2 != null) {
            str = endpoints2.getMetricsEndpoint();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            str2 = str;
        }
        if (str2 == null) {
            return Constants.DEFAULT_METRICS_ENDPOINT;
        }
        return str2;
    }

    @Nullable
    public final String getMraidEndpoint() {
        ConfigPayload.Endpoints endpoints2 = endpoints;
        if (endpoints2 != null) {
            return endpoints2.getMraidEndpoint();
        }
        return null;
    }

    @NotNull
    public final String getMraidJsVersion() {
        String mraidEndpoint;
        if (getMraidEndpoint() != null) {
            String str = "mraid_" + Uri.parse(mraidEndpoint).getLastPathSegment();
            if (str != null) {
                return str;
            }
        }
        return "mraid_1";
    }

    @Nullable
    public final Placement getPlacement(@Nullable String str) {
        List<Placement> list = placements;
        Object obj = null;
        if (list == null) {
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (Intrinsics.areEqual(((Placement) next).getReferenceId(), str)) {
                obj = next;
                break;
            }
        }
        return (Placement) obj;
    }

    @Nullable
    public final String getRiEndpoint() {
        ConfigPayload.Endpoints endpoints2 = endpoints;
        if (endpoints2 != null) {
            return endpoints2.getRiEndpoint();
        }
        return null;
    }

    public final long getSessionTimeout() {
        int i10;
        Integer sessionTimeout;
        ConfigPayload configPayload = config;
        if (configPayload != null && (sessionTimeout = configPayload.getSessionTimeout()) != null) {
            i10 = sessionTimeout.intValue();
        } else {
            i10 = 900;
        }
        return i10 * 1000;
    }

    public final long getSignalsSessionTimeout() {
        int i10;
        Integer signalSessionTimeout;
        ConfigPayload configPayload = config;
        if (configPayload != null && (signalSessionTimeout = configPayload.getSignalSessionTimeout()) != null) {
            i10 = signalSessionTimeout.intValue();
        } else {
            i10 = 1800;
        }
        return i10 * 1000;
    }

    @Nullable
    public final ConfigPayload.IABSettings.TcfStatus getTcfStatus() {
        Integer num;
        ConfigPayload.UserPrivacy userPrivacy;
        ConfigPayload.IABSettings iab;
        ConfigPayload.IABSettings.TcfStatus.Companion companion = ConfigPayload.IABSettings.TcfStatus.Companion;
        ConfigPayload configPayload = config;
        if (configPayload != null && (userPrivacy = configPayload.getUserPrivacy()) != null && (iab = userPrivacy.getIab()) != null) {
            num = iab.getTcfStatus();
        } else {
            num = null;
        }
        return companion.fromRawValue(num);
    }

    public final synchronized void initWithConfig$vungle_ads_release(@NotNull final Context context, @Nullable ConfigPayload configPayload, boolean z10, @Nullable SingleValueMetric singleValueMetric) {
        long j10;
        ConfigPayload.Endpoints endpoints2;
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                ServiceLocator.Companion companion = ServiceLocator.Companion;
                LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
                i a10 = kotlin.c.a(lazyThreadSafetyMode, new Function0<FilePreferences>() { // from class: com.vungle.ads.internal.ConfigManager$initWithConfig$$inlined$inject$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.FilePreferences, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final FilePreferences invoke() {
                        return ServiceLocator.Companion.getInstance(context).getService(FilePreferences.class);
                    }
                });
                int checkConfigPayload$vungle_ads_release = checkConfigPayload$vungle_ads_release(configPayload);
                if (checkConfigPayload$vungle_ads_release != 0) {
                    if (checkConfigPayload$vungle_ads_release != 1) {
                        config = configPayload;
                        List<Placement> list = null;
                        if (configPayload != null) {
                            endpoints2 = configPayload.getEndpoints();
                        } else {
                            endpoints2 = null;
                        }
                        endpoints = endpoints2;
                        if (configPayload != null) {
                            list = configPayload.getPlacements();
                        }
                        placements = list;
                        int logLevel = getLogLevel();
                        boolean metricsEnabled = getMetricsEnabled();
                        i a11 = kotlin.c.a(lazyThreadSafetyMode, new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.ConfigManager$initWithConfig$$inlined$inject$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
                            @Override // kotlin.jvm.functions.Function0
                            @NotNull
                            public final VungleApiClient invoke() {
                                return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
                            }
                        });
                        i a12 = kotlin.c.a(lazyThreadSafetyMode, new Function0<Executors>() { // from class: com.vungle.ads.internal.ConfigManager$initWithConfig$$inlined$inject$3
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.executor.Executors] */
                            @Override // kotlin.jvm.functions.Function0
                            @NotNull
                            public final Executors invoke() {
                                return ServiceLocator.Companion.getInstance(context).getService(Executors.class);
                            }
                        });
                        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                        analyticsClient.initOrUpdate$vungle_ads_release(m4774initWithConfig$lambda4(a11), m4775initWithConfig$lambda5(a12).getLoggerExecutor(), logLevel, metricsEnabled);
                        if (!z10 && configPayload != null) {
                            updateCachedConfig(configPayload, m4773initWithConfig$lambda2(a10));
                            String configExtension = configPayload.getConfigExtension();
                            if (configExtension != null) {
                                INSTANCE.updateConfigExtension$vungle_ads_release(context, configExtension);
                            }
                        }
                        if (singleValueMetric != null) {
                            AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, singleValueMetric, (LogEntry) null, (String) null, 6, (Object) null);
                        }
                        PrivacyManager.INSTANCE.updateDisableAdId(shouldDisableAdId());
                        return;
                    }
                    if (!z10 && configPayload != null) {
                        Long configLastValidatedTimestamp = configPayload.getConfigLastValidatedTimestamp();
                        if (configLastValidatedTimestamp != null) {
                            j10 = configLastValidatedTimestamp.longValue();
                        } else {
                            j10 = -1;
                        }
                        ConfigPayload configPayload2 = config;
                        if (configPayload2 != null) {
                            configPayload2.setConfigLastValidatedTimestamp(Long.valueOf(j10));
                        }
                        ConfigPayload configPayload3 = config;
                        if (configPayload3 != null) {
                            INSTANCE.updateCachedConfig(configPayload3, m4773initWithConfig$lambda2(a10));
                        }
                    }
                    return;
                }
                Logger.Companion.e(TAG, "Config is not available.");
            } catch (Exception e10) {
                Logger.Companion.e(TAG, "Error while validating config: " + e10.getMessage());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final boolean isCleverCacheEnabled() {
        ConfigPayload.CleverCache cleverCache;
        Boolean enabled;
        ConfigPayload configPayload = config;
        if (configPayload != null && (cleverCache = configPayload.getCleverCache()) != null && (enabled = cleverCache.getEnabled()) != null) {
            return enabled.booleanValue();
        }
        return false;
    }

    public final boolean isReportIncentivizedEnabled() {
        Boolean isReportIncentivizedEnabled;
        ConfigPayload configPayload = config;
        if (configPayload != null && (isReportIncentivizedEnabled = configPayload.isReportIncentivizedEnabled()) != null) {
            return isReportIncentivizedEnabled.booleanValue();
        }
        return false;
    }

    public final boolean otEnabled() {
        Boolean enableOT;
        ConfigPayload configPayload = config;
        if (configPayload != null && (enableOT = configPayload.getEnableOT()) != null) {
            return enableOT.booleanValue();
        }
        return true;
    }

    @Nullable
    public final List<Placement> placements() {
        return placements;
    }

    public final boolean retryPriorityTPATs() {
        Boolean retryPriorityTPATs;
        ConfigPayload configPayload = config;
        if (configPayload != null && (retryPriorityTPATs = configPayload.getRetryPriorityTPATs()) != null) {
            return retryPriorityTPATs.booleanValue();
        }
        return false;
    }

    public final boolean rtaDebuggingEnabled() {
        Boolean rtaDebugging;
        ConfigPayload configPayload = config;
        if (configPayload != null && (rtaDebugging = configPayload.getRtaDebugging()) != null) {
            return rtaDebugging.booleanValue();
        }
        return false;
    }

    public final void setAppId$vungle_ads_release(@NotNull String applicationId2) {
        Intrinsics.checkNotNullParameter(applicationId2, "applicationId");
        applicationId = applicationId2;
    }

    public final boolean shouldDisableAdId() {
        Boolean disableAdId;
        ConfigPayload configPayload = config;
        if (configPayload != null && (disableAdId = configPayload.getDisableAdId()) != null) {
            return disableAdId.booleanValue();
        }
        return true;
    }

    public final boolean signalsDisabled() {
        Boolean signalsDisabled;
        ConfigPayload configPayload = config;
        if (configPayload != null && (signalsDisabled = configPayload.getSignalsDisabled()) != null) {
            return signalsDisabled.booleanValue();
        }
        return false;
    }

    public final void updateCachedConfig(@NotNull ConfigPayload config2, @NotNull FilePreferences filePreferences) {
        Intrinsics.checkNotNullParameter(config2, "config");
        Intrinsics.checkNotNullParameter(filePreferences, "filePreferences");
        try {
            String str = applicationId;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("applicationId");
                str = null;
            }
            filePreferences.put(Cookie.CONFIG_APP_ID, str);
            filePreferences.put(Cookie.CONFIG_UPDATE_TIME, System.currentTimeMillis());
            kotlinx.serialization.json.a aVar = json;
            KSerializer<Object> c10 = t.c(aVar.getSerializersModule(), Reflection.typeOf(ConfigPayload.class));
            Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            filePreferences.put(Cookie.CONFIG_RESPONSE, aVar.a(c10, config2));
            filePreferences.apply();
        } catch (Exception e10) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Exception: " + e10.getMessage() + " for updating cached config");
        }
    }

    @VisibleForTesting
    public final void updateConfigExtension$vungle_ads_release(@NotNull final Context context, @NotNull String ext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(ext, "ext");
        configExt = ext;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        m4776updateConfigExtension$lambda1(kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<FilePreferences>() { // from class: com.vungle.ads.internal.ConfigManager$updateConfigExtension$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.FilePreferences, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FilePreferences invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(FilePreferences.class);
            }
        })).put(Cookie.CONFIG_EXTENSION, ext).apply();
    }

    @VisibleForTesting
    public final boolean validateConfig$vungle_ads_release(@Nullable ConfigPayload configPayload) {
        ConfigPayload.Endpoints endpoints2;
        if (configPayload != null) {
            endpoints2 = configPayload.getEndpoints();
        } else {
            endpoints2 = null;
        }
        if (endpoints2 != null && validateEndpoints$vungle_ads_release(configPayload.getEndpoints()) && configPayload.getPlacements() != null) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    public final boolean validateEndpoints$vungle_ads_release(@Nullable ConfigPayload.Endpoints endpoints2) {
        String str;
        boolean z10;
        String str2;
        String str3;
        String str4;
        String str5 = null;
        if (endpoints2 != null) {
            str = endpoints2.getAdsEndpoint();
        } else {
            str = null;
        }
        boolean z11 = false;
        if (str != null && str.length() != 0) {
            z10 = true;
        } else {
            new InvalidEndpointError(Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT, "The ads endpoint was not provided in the config.").logErrorNoReturnValue$vungle_ads_release();
            z10 = false;
        }
        if (endpoints2 != null) {
            str2 = endpoints2.getRiEndpoint();
        } else {
            str2 = null;
        }
        if (str2 == null || str2.length() == 0) {
            new InvalidEndpointError(Sdk.SDKError.Reason.INVALID_RI_ENDPOINT, "The ri endpoint was not provided in the config.").logErrorNoReturnValue$vungle_ads_release();
        }
        if (endpoints2 != null) {
            str3 = endpoints2.getMraidEndpoint();
        } else {
            str3 = null;
        }
        if (str3 != null && str3.length() != 0) {
            z11 = z10;
        } else {
            new InvalidEndpointError(Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR, "The mraid endpoint was not provided in the config.").logErrorNoReturnValue$vungle_ads_release();
        }
        if (endpoints2 != null) {
            str4 = endpoints2.getMetricsEndpoint();
        } else {
            str4 = null;
        }
        if (str4 == null || str4.length() == 0) {
            new InvalidEndpointError(Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT, "The metrics endpoint was not provided in the config.").logErrorNoReturnValue$vungle_ads_release();
        }
        if (endpoints2 != null) {
            str5 = endpoints2.getErrorLogsEndpoint();
        }
        if (str5 == null || str5.length() == 0) {
            Logger.Companion.e(TAG, "The error logging endpoint was not provided in the config.");
        }
        return z11;
    }
}
