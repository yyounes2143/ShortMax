package com.vungle.ads.internal.network;

import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.ContextCompat;
import androidx.core.util.Consumer;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.ss.texturerender.TextureRenderKeys;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.TimeIntervalMetric;
import com.vungle.ads.UserAgentError;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleAds;
import com.vungle.ads.fpd.FirstPartyData;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.AdvertisingInfo;
import com.vungle.ads.internal.model.AppNode;
import com.vungle.ads.internal.model.CommonRequestBody;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.model.Cookie;
import com.vungle.ads.internal.model.DeviceNode;
import com.vungle.ads.internal.model.ErrorInfo;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.platform.AndroidPlatform;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.privacy.COPPA;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.c;
import kotlinx.serialization.json.s;
import ms.i;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.GzipSink;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.t;
/* compiled from: VungleApiClient.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VungleApiClient {
    @NotNull
    private static final String TAG = "VungleApiClient";
    @Nullable
    private AdvertisingInfo advertisingInfo;
    @NotNull
    private VungleApi api;
    @Nullable
    private AppNode appBody;
    @NotNull
    private final Context applicationContext;
    @Nullable
    private DeviceNode baseDeviceInfo;
    @NotNull
    private final FilePreferences filePreferences;
    @NotNull
    private VungleApi gzipApi;
    @Nullable
    private Boolean isGooglePlayServicesAvailable;
    @NotNull
    private final Platform platform;
    @NotNull
    private Interceptor responseInterceptor;
    @NotNull
    private Map<String, Long> retryAfterDataMap;
    @NotNull
    private final i signalManager$delegate;
    @Nullable
    private String uaString;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String BASE_URL = "https://config.ads.vungle.com/";
    @NotNull
    private static final Set<Interceptor> networkInterceptors = new HashSet();
    @NotNull
    private static final Set<Interceptor> logInterceptors = new HashSet();
    @NotNull
    private static final kotlinx.serialization.json.a json = s.b(null, new Function1<c, Unit>() { // from class: com.vungle.ads.internal.network.VungleApiClient$Companion$json$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(c cVar) {
            invoke2(cVar);
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull c Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.f(true);
            Json.d(true);
            Json.e(false);
        }
    }, 1, null);

    /* compiled from: VungleApiClient.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getBASE_URL$vungle_ads_release() {
            return VungleApiClient.BASE_URL;
        }

        public final void reset$vungle_ads_release() {
            VungleHeader.INSTANCE.reset();
        }

        private Companion() {
        }
    }

    /* compiled from: VungleApiClient.kt */
    @Metadata
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes7.dex */
    public @interface ConnectionTypeDetail {
        @NotNull
        public static final String CDMA_1XRTT = "cdma_1xrtt";
        @NotNull
        public static final String CDMA_EVDO_0 = "cdma_evdo_0";
        @NotNull
        public static final String CDMA_EVDO_A = "cdma_evdo_a";
        @NotNull
        public static final String CDMA_EVDO_B = "cdma_evdo_b";
        @NotNull
        public static final Companion Companion = Companion.$$INSTANCE;
        @NotNull
        public static final String EDGE = "edge";
        @NotNull
        public static final String FIFTH_G = "5g";
        @NotNull
        public static final String GPRS = "gprs";
        @NotNull
        public static final String HRPD = "hrpd";
        @NotNull
        public static final String HSDPA = "hsdpa";
        @NotNull
        public static final String HSUPA = "hsupa";
        @NotNull
        public static final String LTE = "lte";
        @NotNull
        public static final String UNKNOWN = "unknown";
        @NotNull
        public static final String WCDMA = "wcdma";

        /* compiled from: VungleApiClient.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            @NotNull
            public static final String CDMA_1XRTT = "cdma_1xrtt";
            @NotNull
            public static final String CDMA_EVDO_0 = "cdma_evdo_0";
            @NotNull
            public static final String CDMA_EVDO_A = "cdma_evdo_a";
            @NotNull
            public static final String CDMA_EVDO_B = "cdma_evdo_b";
            @NotNull
            public static final String EDGE = "edge";
            @NotNull
            public static final String FIFTH_G = "5g";
            @NotNull
            public static final String GPRS = "gprs";
            @NotNull
            public static final String HRPD = "hrpd";
            @NotNull
            public static final String HSDPA = "hsdpa";
            @NotNull
            public static final String HSUPA = "hsupa";
            @NotNull
            public static final String LTE = "lte";
            @NotNull
            public static final String UNKNOWN = "unknown";
            @NotNull
            public static final String WCDMA = "wcdma";

            private Companion() {
            }
        }
    }

    /* compiled from: VungleApiClient.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class GzipRequestInterceptor implements Interceptor {
        @NotNull
        private static final String CONTENT_ENCODING = "Content-Encoding";
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private static final String GZIP = "gzip";

        /* compiled from: VungleApiClient.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        private final RequestBody gzip(final RequestBody requestBody) throws IOException {
            final Buffer buffer = new Buffer();
            BufferedSink buffer2 = Okio.buffer(new GzipSink(buffer));
            requestBody.writeTo(buffer2);
            buffer2.close();
            return new RequestBody() { // from class: com.vungle.ads.internal.network.VungleApiClient$GzipRequestInterceptor$gzip$1
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return buffer.size();
                }

                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return RequestBody.this.contentType();
                }

                @Override // okhttp3.RequestBody
                public void writeTo(@NotNull BufferedSink sink) throws IOException {
                    Intrinsics.checkNotNullParameter(sink, "sink");
                    sink.write(buffer.snapshot());
                }
            };
        }

        @Override // okhttp3.Interceptor
        @NotNull
        public okhttp3.Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
            Intrinsics.checkNotNullParameter(chain, "chain");
            Request request = chain.request();
            RequestBody a10 = request.a();
            if (a10 != null && request.d(CONTENT_ENCODING) == null) {
                return chain.a(request.i().e(CONTENT_ENCODING, GZIP).g(request.h(), gzip(a10)).b());
            }
            return chain.a(request);
        }
    }

    public VungleApiClient(@NotNull final Context applicationContext, @NotNull Platform platform, @NotNull FilePreferences filePreferences) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(filePreferences, "filePreferences");
        this.applicationContext = applicationContext;
        this.platform = platform;
        this.filePreferences = filePreferences;
        this.uaString = System.getProperty("http.agent");
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        this.signalManager$delegate = kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<SignalManager>() { // from class: com.vungle.ads.internal.network.VungleApiClient$special$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.signals.SignalManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SignalManager invoke() {
                return ServiceLocator.Companion.getInstance(applicationContext).getService(SignalManager.class);
            }
        });
        this.retryAfterDataMap = new ConcurrentHashMap();
        this.responseInterceptor = new Interceptor() { // from class: com.vungle.ads.internal.network.b
            @Override // okhttp3.Interceptor
            public final okhttp3.Response intercept(Interceptor.Chain chain) {
                okhttp3.Response m4814responseInterceptor$lambda0;
                m4814responseInterceptor$lambda0 = VungleApiClient.m4814responseInterceptor$lambda0(VungleApiClient.this, chain);
                return m4814responseInterceptor$lambda0;
            }
        };
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient.Builder U = builder.V(60L, timeUnit).f(60L, timeUnit).a(this.responseInterceptor).U(new ProxySelector() { // from class: com.vungle.ads.internal.network.VungleApiClient$builder$1
            @Override // java.net.ProxySelector
            public void connectFailed(@Nullable URI uri, @Nullable SocketAddress socketAddress, @Nullable IOException iOException) {
                try {
                    ProxySelector.getDefault().connectFailed(uri, socketAddress, iOException);
                } catch (Exception unused) {
                }
            }

            @Override // java.net.ProxySelector
            @NotNull
            public List<Proxy> select(@Nullable URI uri) {
                try {
                    List<Proxy> select = ProxySelector.getDefault().select(uri);
                    Intrinsics.checkNotNullExpressionValue(select, "{\n                      …ri)\n                    }");
                    return select;
                } catch (Exception unused) {
                    return CollectionsKt.e(Proxy.NO_PROXY);
                }
            }
        });
        OkHttpClient c10 = U.c();
        OkHttpClient c11 = U.a(new GzipRequestInterceptor()).c();
        this.api = new VungleApiImpl(c10);
        this.gzipApi = new VungleApiImpl(c11);
    }

    private final String bodyToString(RequestBody requestBody) {
        try {
            Buffer buffer = new Buffer();
            if (requestBody == null) {
                return "";
            }
            requestBody.writeTo(buffer);
            return buffer.readUtf8();
        } catch (Exception unused) {
            return "";
        }
    }

    private final okhttp3.Response defaultErrorResponse(Request request) {
        return new Response.Builder().r(request).g(500).p(Protocol.HTTP_1_1).m("Server is busy").b(ResponseBody.Companion.a("{\"Error\":\"Server is busy\"}", MediaType.f63480e.b("application/json"))).c();
    }

    private final DeviceNode getBasicDeviceBody(Context context) {
        String str;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        if (defaultDisplay != null) {
            defaultDisplay.getMetrics(displayMetrics);
        }
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        String carrierName$vungle_ads_release = AndroidPlatform.Companion.getCarrierName$vungle_ads_release(context);
        if (Intrinsics.areEqual("Amazon", MANUFACTURER)) {
            str = "amazon";
        } else {
            str = "android";
        }
        DeviceNode deviceNode = new DeviceNode(MANUFACTURER, MODEL, RELEASE, carrierName$vungle_ads_release, str, displayMetrics.widthPixels, displayMetrics.heightPixels, this.uaString, (String) null, (Integer) null, (DeviceNode.VungleExt) null, 1792, (DefaultConstructorMarker) null);
        try {
            String userAgent = this.platform.getUserAgent();
            this.uaString = userAgent;
            deviceNode.setUa(userAgent);
            initUserAgentLazy();
            AdvertisingInfo advertisingInfo = this.advertisingInfo;
            if (advertisingInfo == null) {
                advertisingInfo = this.platform.getAdvertisingInfo();
            }
            this.advertisingInfo = advertisingInfo;
        } catch (Exception e10) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Cannot Get UserAgent. Setting Default Device UserAgent." + e10.getLocalizedMessage());
        }
        return deviceNode;
    }

    private final String getConnectionType() {
        if (ContextCompat.checkSelfPermission(this.applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0) {
            Object systemService = this.applicationContext.getSystemService("connectivity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type != 1 && type != 6) {
                        if (type != 7) {
                            if (type != 9) {
                                return GrsBaseInfo.CountryCodeSource.UNKNOWN;
                            }
                            return "ETHERNET";
                        }
                        return "BLUETOOTH";
                    }
                    return "WIFI";
                }
                return "MOBILE";
            }
            return "NONE";
        }
        return null;
    }

    private final DeviceNode getDeviceBody() throws IllegalStateException {
        return getDeviceBody$vungle_ads_release(false);
    }

    private final CommonRequestBody.RequestExt getExtBody(boolean z10) {
        String generateSignals;
        String configExtension = ConfigManager.INSTANCE.getConfigExtension();
        if (configExtension != null && configExtension.length() == 0) {
            configExtension = this.filePreferences.getString(Cookie.CONFIG_EXTENSION);
        }
        if (z10) {
            try {
                generateSignals = getSignalManager().generateSignals();
            } catch (Exception e10) {
                Logger.Companion.e(TAG, "Couldn't convert signals for sending. Error: " + e10.getMessage());
            }
            if ((configExtension != null || configExtension.length() == 0) && (generateSignals == null || generateSignals.length() == 0)) {
                return null;
            }
            return new CommonRequestBody.RequestExt(configExtension, generateSignals, Long.valueOf(ConfigManager.INSTANCE.configLastValidatedTimestamp()));
        }
        generateSignals = null;
        if (configExtension != null) {
        }
        return null;
    }

    static /* synthetic */ CommonRequestBody.RequestExt getExtBody$default(VungleApiClient vungleApiClient, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return vungleApiClient.getExtBody(z10);
    }

    private final String getPlacementID(RequestBody requestBody) {
        List<String> placements;
        try {
            kotlinx.serialization.json.a aVar = json;
            String bodyToString = bodyToString(requestBody);
            KSerializer<Object> c10 = t.c(aVar.getSerializersModule(), Reflection.typeOf(CommonRequestBody.class));
            Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            CommonRequestBody.RequestParam request = ((CommonRequestBody) aVar.b(c10, bodyToString)).getRequest();
            if (request == null || (placements = request.getPlacements()) == null) {
                return "";
            }
            String str = placements.get(0);
            if (str == null) {
                return "";
            }
            return str;
        } catch (Exception unused) {
            return "";
        }
    }

    private final SignalManager getSignalManager() {
        return (SignalManager) this.signalManager$delegate.getValue();
    }

    private final CommonRequestBody.User getUserBody(boolean z10) {
        CommonRequestBody.User user = new CommonRequestBody.User((CommonRequestBody.GDPR) null, (CommonRequestBody.CCPA) null, (CommonRequestBody.COPPA) null, (FirstPartyData) null, (CommonRequestBody.IAB) null, 31, (DefaultConstructorMarker) null);
        PrivacyManager privacyManager = PrivacyManager.INSTANCE;
        user.setGdpr(new CommonRequestBody.GDPR(privacyManager.getConsentStatus(), privacyManager.getConsentSource(), privacyManager.getConsentTimestamp(), privacyManager.getConsentMessageVersion()));
        user.setCcpa(new CommonRequestBody.CCPA(privacyManager.getCcpaStatus()));
        if (privacyManager.getCoppaStatus() != COPPA.COPPA_NOTSET) {
            user.setCoppa(new CommonRequestBody.COPPA(privacyManager.getCoppaStatus().getValue()));
        }
        if (privacyManager.shouldSendTCFString()) {
            user.setIab(new CommonRequestBody.IAB(privacyManager.getIABTCFString()));
        }
        if (z10) {
            user.setFpd(VungleAds.firstPartyData);
        }
        return user;
    }

    static /* synthetic */ CommonRequestBody.User getUserBody$default(VungleApiClient vungleApiClient, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return vungleApiClient.getUserBody(z10);
    }

    private final void initUserAgentLazy() {
        final TimeIntervalMetric timeIntervalMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.USER_AGENT_LOAD_DURATION_MS);
        timeIntervalMetric.markStart();
        this.platform.getUserAgentLazy(new Consumer<String>() { // from class: com.vungle.ads.internal.network.VungleApiClient$initUserAgentLazy$1
            @Override // androidx.core.util.Consumer
            public void accept(@Nullable String str) {
                if (str == null) {
                    Logger.Companion.e("VungleApiClient", "Cannot Get UserAgent. Setting Default Device UserAgent");
                    new UserAgentError().logErrorNoReturnValue$vungle_ads_release();
                    return;
                }
                TimeIntervalMetric.this.markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, TimeIntervalMetric.this, (LogEntry) null, (String) null, 6, (Object) null);
                this.uaString = str;
            }
        });
    }

    public static /* synthetic */ ErrorInfo pingTPAT$default(VungleApiClient vungleApiClient, String str, Map map, String str2, HttpMethod httpMethod, LogEntry logEntry, int i10, Object obj) {
        Map map2;
        String str3;
        LogEntry logEntry2;
        if ((i10 & 2) != 0) {
            map2 = null;
        } else {
            map2 = map;
        }
        if ((i10 & 4) != 0) {
            str3 = null;
        } else {
            str3 = str2;
        }
        if ((i10 & 8) != 0) {
            httpMethod = HttpMethod.GET;
        }
        HttpMethod httpMethod2 = httpMethod;
        if ((i10 & 16) != 0) {
            logEntry2 = null;
        } else {
            logEntry2 = logEntry;
        }
        return vungleApiClient.pingTPAT(str, map2, str3, httpMethod2, logEntry2);
    }

    public static /* synthetic */ CommonRequestBody requestBody$default(VungleApiClient vungleApiClient, boolean z10, boolean z11, int i10, Object obj) throws IllegalStateException {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        return vungleApiClient.requestBody(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: responseInterceptor$lambda-0  reason: not valid java name */
    public static final okhttp3.Response m4814responseInterceptor$lambda0(VungleApiClient this$0, Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        try {
            try {
                okhttp3.Response a10 = chain.a(request);
                String a11 = a10.u().a(CommonGatewayClient.HEADER_RETRY_AFTER);
                if (a11 != null && a11.length() != 0) {
                    try {
                        long parseLong = Long.parseLong(a11);
                        if (parseLong > 0) {
                            String d10 = request.l().d();
                            long currentTimeMillis = (parseLong * 1000) + System.currentTimeMillis();
                            if (StringsKt.F(d10, com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, false, 2, null)) {
                                String placementID = this$0.getPlacementID(request.a());
                                if (placementID.length() > 0) {
                                    this$0.retryAfterDataMap.put(placementID, Long.valueOf(currentTimeMillis));
                                }
                            }
                        }
                    } catch (Exception unused) {
                        Logger.Companion.d(TAG, "Retry-After value is not an valid value");
                    }
                }
                return a10;
            } catch (Exception e10) {
                Logger.Companion companion = Logger.Companion;
                companion.e(TAG, "Exception: " + e10.getMessage() + " for " + request.l());
                return this$0.defaultErrorResponse(request);
            }
        } catch (OutOfMemoryError unused2) {
            Logger.Companion companion2 = Logger.Companion;
            companion2.e(TAG, "OOM for " + request.l());
            return this$0.defaultErrorResponse(request);
        }
    }

    @VisibleForTesting
    public final void addPlaySvcAvailabilityInCookie(boolean z10) {
        this.filePreferences.put(Cookie.IS_PLAY_SERVICE_AVAILABLE, z10).apply();
    }

    public final boolean checkIsRetryAfterActive(@NotNull String placementID) {
        long j10;
        Intrinsics.checkNotNullParameter(placementID, "placementID");
        Long l10 = this.retryAfterDataMap.get(placementID);
        if (l10 != null) {
            j10 = l10.longValue();
        } else {
            j10 = 0;
        }
        if (j10 > System.currentTimeMillis()) {
            return true;
        }
        this.retryAfterDataMap.remove(placementID);
        return false;
    }

    @Nullable
    public final Call<ConfigPayload> config() throws IOException {
        AppNode appNode = this.appBody;
        if (appNode == null) {
            return null;
        }
        CommonRequestBody commonRequestBody = new CommonRequestBody(getDeviceBody$vungle_ads_release(true), appNode, getUserBody$default(this, false, 1, null), (CommonRequestBody.RequestExt) null, (CommonRequestBody.RequestParam) null, 24, (DefaultConstructorMarker) null);
        CommonRequestBody.RequestExt extBody$default = getExtBody$default(this, false, 1, null);
        if (extBody$default != null) {
            commonRequestBody.setExt(extBody$default);
        }
        FileUtility fileUtility = FileUtility.INSTANCE;
        String str = BASE_URL;
        if (!fileUtility.isValidUrl(str)) {
            str = "https://config.ads.vungle.com/";
        }
        if (!StringsKt.F(str, DomExceptionUtils.SEPARATOR, false, 2, null)) {
            str = str + '/';
        }
        return this.api.config(VungleHeader.INSTANCE.getHeaderUa(), str + "config", commonRequestBody);
    }

    @Nullable
    public final AppNode getAppBody$vungle_ads_release() {
        return this.appBody;
    }

    @NotNull
    public final String getConnectionTypeDetail(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 20) {
                    switch (i10) {
                        case 4:
                            return "wcdma";
                        case 5:
                            return "cdma_evdo_0";
                        case 6:
                            return "cdma_evdo_a";
                        case 7:
                            return "cdma_1xrtt";
                        case 8:
                            return "hsdpa";
                        case 9:
                            return "hsupa";
                        default:
                            switch (i10) {
                                case 12:
                                    return "cdma_evdo_b";
                                case 13:
                                    return "lte";
                                case 14:
                                    return "hrpd";
                                default:
                                    return "unknown";
                            }
                    }
                }
                return "5g";
            }
            return "edge";
        }
        return "gprs";
    }

    @Nullable
    public final String getConnectionTypeDetail$vungle_ads_release() {
        if (ContextCompat.checkSelfPermission(this.applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0) {
            Object systemService = this.applicationContext.getSystemService("connectivity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return getConnectionTypeDetail(activeNetworkInfo.getSubtype());
            }
            return "unknown";
        }
        return null;
    }

    @VisibleForTesting
    @NotNull
    public final synchronized DeviceNode getDeviceBody$vungle_ads_release(boolean z10) throws IllegalStateException {
        DeviceNode copy;
        String str;
        Boolean bool;
        DeviceNode.VungleExt vungleExt;
        int i10;
        String str2;
        try {
            DeviceNode deviceNode = this.baseDeviceInfo;
            if (deviceNode == null) {
                deviceNode = getBasicDeviceBody(this.applicationContext);
                this.baseDeviceInfo = deviceNode;
            }
            copy = r2.copy((r24 & 1) != 0 ? r2.make : null, (r24 & 2) != 0 ? r2.model : null, (r24 & 4) != 0 ? r2.osv : null, (r24 & 8) != 0 ? r2.carrier : null, (r24 & 16) != 0 ? r2.f49616os : null, (r24 & 32) != 0 ? r2.f49618w : 0, (r24 & 64) != 0 ? r2.f49615h : 0, (r24 & 128) != 0 ? r2.f49617ua : null, (r24 & 256) != 0 ? r2.ifa : null, (r24 & 512) != 0 ? r2.lmt : null, (r24 & 1024) != 0 ? deviceNode.ext : null);
            DeviceNode.VungleExt vungleExt2 = new DeviceNode.VungleExt(false, (String) null, (Integer) null, 0.0f, (String) null, 0, (String) null, (String) null, (String) null, (String) null, (String) null, 0.0f, 0, false, 0, false, (String) null, (String) null, (Long) null, (Long) null, (Long) null, (Long) null, 4194303, (DefaultConstructorMarker) null);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            Object systemService = this.applicationContext.getSystemService("window");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
            if (defaultDisplay != null) {
                defaultDisplay.getMetrics(displayMetrics);
            }
            copy.setH(displayMetrics.heightPixels);
            copy.setW(displayMetrics.widthPixels);
            AdvertisingInfo advertisingInfo = this.advertisingInfo;
            if (advertisingInfo == null) {
                advertisingInfo = this.platform.getAdvertisingInfo();
            }
            this.advertisingInfo = advertisingInfo;
            if (advertisingInfo != null) {
                str = advertisingInfo.getAdvertisingId();
            } else {
                str = null;
            }
            AdvertisingInfo advertisingInfo2 = this.advertisingInfo;
            if (advertisingInfo2 != null) {
                bool = Boolean.valueOf(advertisingInfo2.getLimitAdTracking());
            } else {
                bool = null;
            }
            PrivacyManager privacyManager = PrivacyManager.INSTANCE;
            if (privacyManager.shouldSendAdIds()) {
                if (str != null) {
                    if (Intrinsics.areEqual("Amazon", Build.MANUFACTURER)) {
                        vungleExt = vungleExt2;
                        vungleExt.setAmazonAdvertisingId(str);
                    } else {
                        vungleExt = vungleExt2;
                        vungleExt.setGaid(str);
                    }
                    copy.setIfa(str);
                } else {
                    vungleExt = vungleExt2;
                    copy.setIfa("");
                }
            } else {
                vungleExt = vungleExt2;
            }
            if (z10 || !privacyManager.shouldSendAdIds()) {
                copy.setIfa(null);
                vungleExt.setGaid(null);
                vungleExt.setAmazonAdvertisingId(null);
            }
            Boolean bool2 = Boolean.TRUE;
            boolean z11 = false;
            if (Intrinsics.areEqual(bool, bool2)) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            copy.setLmt(i10);
            vungleExt.setGooglePlayServicesAvailable(Intrinsics.areEqual(bool2, isGooglePlayServicesAvailable()));
            if (privacyManager.allowDeviceIDFromTCF() != PrivacyManager.DeviceIdAllowed.DISABLE_ID) {
                String appSetId = this.platform.getAppSetId();
                if (appSetId != null) {
                    vungleExt.setAppSetId(appSetId);
                }
                Integer appSetIdScope = this.platform.getAppSetIdScope();
                if (appSetIdScope != null) {
                    vungleExt.setAppSetIdScope(Integer.valueOf(appSetIdScope.intValue()));
                }
            }
            Intent registerReceiver = this.applicationContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver != null) {
                int intExtra = registerReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1);
                int intExtra2 = registerReceiver.getIntExtra(TextureRenderKeys.KEY_IS_SCALE, -1);
                if (intExtra > 0 && intExtra2 > 0) {
                    vungleExt.setBatteryLevel(intExtra / intExtra2);
                }
                int intExtra3 = registerReceiver.getIntExtra("status", -1);
                if (intExtra3 != -1) {
                    if (intExtra3 != 2 && intExtra3 != 5) {
                        str2 = "NOT_CHARGING";
                    } else {
                        int intExtra4 = registerReceiver.getIntExtra("plugged", -1);
                        if (intExtra4 != 1) {
                            if (intExtra4 != 2) {
                                if (intExtra4 != 4) {
                                    str2 = "BATTERY_PLUGGED_OTHERS";
                                } else {
                                    str2 = "BATTERY_PLUGGED_WIRELESS";
                                }
                            } else {
                                str2 = "BATTERY_PLUGGED_USB";
                            }
                        } else {
                            str2 = "BATTERY_PLUGGED_AC";
                        }
                    }
                } else {
                    str2 = GrsBaseInfo.CountryCodeSource.UNKNOWN;
                }
            } else {
                str2 = GrsBaseInfo.CountryCodeSource.UNKNOWN;
            }
            vungleExt.setBatteryState(str2);
            Object systemService2 = this.applicationContext.getSystemService("power");
            Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.os.PowerManager");
            vungleExt.setBatterySaverEnabled(((PowerManager) systemService2).isPowerSaveMode() ? 1 : 0);
            String connectionType = getConnectionType();
            if (connectionType != null) {
                vungleExt.setConnectionType(connectionType);
            }
            String connectionTypeDetail$vungle_ads_release = getConnectionTypeDetail$vungle_ads_release();
            if (connectionTypeDetail$vungle_ads_release != null) {
                vungleExt.setConnectionTypeDetail(connectionTypeDetail$vungle_ads_release);
            }
            vungleExt.setLocale(Locale.getDefault().toString());
            vungleExt.setLanguage(Locale.getDefault().getLanguage());
            vungleExt.setTimeZone(TimeZone.getDefault().getID());
            vungleExt.setVolumeLevel(this.platform.getVolumeLevel());
            vungleExt.setSoundEnabled(this.platform.isSoundEnabled() ? 1 : 0);
            if (Intrinsics.areEqual("Amazon", Build.MANUFACTURER)) {
                z11 = this.applicationContext.getPackageManager().hasSystemFeature("amazon.hardware.fire_tv");
            } else {
                Object systemService3 = this.applicationContext.getSystemService("uimode");
                Intrinsics.checkNotNull(systemService3, "null cannot be cast to non-null type android.app.UiModeManager");
                if (((UiModeManager) systemService3).getCurrentModeType() == 4) {
                    z11 = true;
                }
            }
            vungleExt.setTv(z11);
            vungleExt.setSideloadEnabled(this.platform.isSideLoaded());
            vungleExt.setSdCardAvailable(this.platform.isSdCardPresent() ? 1 : 0);
            if (ConfigManager.INSTANCE.otEnabled()) {
                vungleExt.setSit(Long.valueOf(this.platform.getSDKInstallationTime()));
                vungleExt.setOit(Long.valueOf(this.platform.getOSInstallationTime()));
                vungleExt.setOrt(Long.valueOf(this.platform.getLastBootTime()));
                vungleExt.setObt(Long.valueOf(this.platform.getBuildTime()));
            }
            copy.setUa(this.uaString);
            copy.setExt(vungleExt);
        } catch (Throwable th2) {
            throw th2;
        }
        return copy;
    }

    @NotNull
    public final VungleApi getGzipApi$vungle_ads_release() {
        return this.gzipApi;
    }

    @VisibleForTesting
    @Nullable
    public final Boolean getPlayServicesAvailabilityFromAPI() {
        boolean z10;
        Boolean bool = null;
        try {
            GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.getInstance();
            Intrinsics.checkNotNullExpressionValue(googleApiAvailabilityLight, "getInstance()");
            if (googleApiAvailabilityLight.isGooglePlayServicesAvailable(this.applicationContext) == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            bool = Boolean.valueOf(z10);
            addPlaySvcAvailabilityInCookie(z10);
            return bool;
        } catch (Exception unused) {
            Logger.Companion.w(TAG, "Unexpected exception from Play services lib.");
            return bool;
        } catch (NoClassDefFoundError unused2) {
            Logger.Companion.w(TAG, "Play services Not available");
            Boolean bool2 = Boolean.FALSE;
            try {
                addPlaySvcAvailabilityInCookie(false);
                return bool2;
            } catch (Exception unused3) {
                Logger.Companion.w(TAG, "Failure to write GPS availability to DB");
                return bool2;
            }
        }
    }

    @VisibleForTesting
    @Nullable
    public final Boolean getPlayServicesAvailabilityFromCookie() {
        return this.filePreferences.getBoolean(Cookie.IS_PLAY_SERVICE_AVAILABLE);
    }

    @NotNull
    public final Interceptor getResponseInterceptor$vungle_ads_release() {
        return this.responseInterceptor;
    }

    @NotNull
    public final Map<String, Long> getRetryAfterDataMap$vungle_ads_release() {
        return this.retryAfterDataMap;
    }

    public final long getRetryAfterHeaderValue(@NotNull String placementID) {
        Intrinsics.checkNotNullParameter(placementID, "placementID");
        Long l10 = this.retryAfterDataMap.get(placementID);
        if (l10 != null) {
            return l10.longValue();
        }
        return 0L;
    }

    public final synchronized void initialize(@NotNull String appId) {
        PackageInfo packageInfo;
        PackageManager.PackageInfoFlags of2;
        try {
            Intrinsics.checkNotNullParameter(appId, "appId");
            VungleHeader.INSTANCE.setAppId(appId);
            String str = "1.0";
            try {
                if (Build.VERSION.SDK_INT >= 33) {
                    PackageManager packageManager = this.applicationContext.getPackageManager();
                    String packageName = this.applicationContext.getPackageName();
                    of2 = PackageManager.PackageInfoFlags.of(0L);
                    packageInfo = packageManager.getPackageInfo(packageName, of2);
                    Intrinsics.checkNotNullExpressionValue(packageInfo, "{\n                    ap…      )\n                }");
                } else {
                    packageInfo = this.applicationContext.getPackageManager().getPackageInfo(this.applicationContext.getPackageName(), 0);
                    Intrinsics.checkNotNullExpressionValue(packageInfo, "{\n                    ap…      )\n                }");
                }
                String str2 = packageInfo.versionName;
                Intrinsics.checkNotNullExpressionValue(str2, "packageInfo.versionName");
                str = str2;
            } catch (Exception unused) {
            }
            VungleHeader.INSTANCE.setAppVersion(str);
            this.baseDeviceInfo = getBasicDeviceBody(this.applicationContext);
            String packageName2 = this.applicationContext.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName2, "applicationContext.packageName");
            this.appBody = new AppNode(packageName2, str, appId);
            this.isGooglePlayServicesAvailable = getPlayServicesAvailabilityFromAPI();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @VisibleForTesting
    @Nullable
    public final Boolean isGooglePlayServicesAvailable() {
        if (this.isGooglePlayServicesAvailable == null) {
            this.isGooglePlayServicesAvailable = getPlayServicesAvailabilityFromCookie();
        }
        if (this.isGooglePlayServicesAvailable == null) {
            this.isGooglePlayServicesAvailable = getPlayServicesAvailabilityFromAPI();
        }
        return this.isGooglePlayServicesAvailable;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0087, code lost:
        r3 = r2.raw();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008b, code lost:
        if (r3 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008d, code lost:
        r3 = java.lang.Integer.valueOf(r3.o());
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.vungle.ads.internal.model.ErrorInfo pingTPAT(@org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.Nullable java.util.Map<java.lang.String, java.lang.String> r13, @org.jetbrains.annotations.Nullable java.lang.String r14, @org.jetbrains.annotations.NotNull com.vungle.ads.internal.network.HttpMethod r15, @org.jetbrains.annotations.Nullable com.vungle.ads.internal.util.LogEntry r16) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.network.VungleApiClient.pingTPAT(java.lang.String, java.util.Map, java.lang.String, com.vungle.ads.internal.network.HttpMethod, com.vungle.ads.internal.util.LogEntry):com.vungle.ads.internal.model.ErrorInfo");
    }

    public final void reportErrors(@NotNull BlockingQueue<Sdk.SDKError.Builder> errors, @NotNull final AnalyticsClient.RequestListener requestListener) {
        long j10;
        Intrinsics.checkNotNullParameter(errors, "errors");
        Intrinsics.checkNotNullParameter(requestListener, "requestListener");
        String errorLoggingEndpoint = ConfigManager.INSTANCE.getErrorLoggingEndpoint();
        if (errorLoggingEndpoint.length() == 0) {
            requestListener.onFailure();
            return;
        }
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        for (Sdk.SDKError.Builder builder : errors) {
            builder.setSessionId(getSignalManager().getUuid());
            Placement placement = ConfigManager.INSTANCE.getPlacement(builder.getPlacementReferenceId());
            if (placement != null) {
                if (placement.getHeaderBidding()) {
                    j10 = 1;
                } else {
                    j10 = 0;
                }
                builder.setIsHbPlacement(j10);
                String type = placement.getType();
                if (type == null) {
                    type = "";
                }
                builder.setPlacementType(type);
            }
            String connectionType = getConnectionType();
            if (connectionType != null) {
                builder.setConnectionType(connectionType);
            }
            String connectionTypeDetail$vungle_ads_release = getConnectionTypeDetail$vungle_ads_release();
            if (connectionTypeDetail$vungle_ads_release != null) {
                builder.setConnectionTypeDetail(connectionTypeDetail$vungle_ads_release);
            }
            Sdk.SDKError build = builder.build();
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Sending Error: " + build.getReason());
            linkedBlockingQueue.add(build);
        }
        Sdk.SDKErrorBatch build2 = Sdk.SDKErrorBatch.newBuilder().addAllErrors(linkedBlockingQueue).build();
        RequestBody.Companion companion2 = RequestBody.Companion;
        byte[] byteArray = build2.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "batch.toByteArray()");
        this.api.sendErrors(VungleHeader.INSTANCE.getHeaderUa(), errorLoggingEndpoint, companion2.m(byteArray, MediaType.f63480e.b(CommonGatewayClient.HEADER_PROTOBUF), 0, build2.toByteArray().length)).enqueue(new Callback<Void>() { // from class: com.vungle.ads.internal.network.VungleApiClient$reportErrors$2
            @Override // com.vungle.ads.internal.network.Callback
            public void onFailure(@Nullable Call<Void> call, @Nullable Throwable th2) {
                AnalyticsClient.RequestListener.this.onFailure();
            }

            @Override // com.vungle.ads.internal.network.Callback
            public void onResponse(@Nullable Call<Void> call, @Nullable Response<Void> response) {
                AnalyticsClient.RequestListener.this.onSuccess();
            }
        });
    }

    public final void reportMetrics(@NotNull BlockingQueue<Sdk.SDKMetric.Builder> metrics, @NotNull final AnalyticsClient.RequestListener requestListener) {
        long j10;
        Intrinsics.checkNotNullParameter(metrics, "metrics");
        Intrinsics.checkNotNullParameter(requestListener, "requestListener");
        String metricsEndpoint = ConfigManager.INSTANCE.getMetricsEndpoint();
        if (metricsEndpoint.length() == 0) {
            requestListener.onFailure();
            return;
        }
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        for (Sdk.SDKMetric.Builder builder : metrics) {
            builder.setSessionId(getSignalManager().getUuid());
            Placement placement = ConfigManager.INSTANCE.getPlacement(builder.getPlacementReferenceId());
            if (placement != null) {
                if (placement.getHeaderBidding()) {
                    j10 = 1;
                } else {
                    j10 = 0;
                }
                builder.setIsHbPlacement(j10);
                String type = placement.getType();
                if (type == null) {
                    type = "";
                }
                builder.setPlacementType(type);
            }
            String connectionType = getConnectionType();
            if (connectionType != null) {
                builder.setConnectionType(connectionType);
            }
            String connectionTypeDetail$vungle_ads_release = getConnectionTypeDetail$vungle_ads_release();
            if (connectionTypeDetail$vungle_ads_release != null) {
                builder.setConnectionTypeDetail(connectionTypeDetail$vungle_ads_release);
            }
            Sdk.SDKMetric build = builder.build();
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Sending Metric: " + build.getType());
            linkedBlockingQueue.add(build);
        }
        RequestBody.Companion companion2 = RequestBody.Companion;
        MediaType b10 = MediaType.f63480e.b(CommonGatewayClient.HEADER_PROTOBUF);
        byte[] byteArray = Sdk.MetricBatch.newBuilder().addAllMetrics(linkedBlockingQueue).build().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "batch.toByteArray()");
        this.api.sendMetrics(VungleHeader.INSTANCE.getHeaderUa(), metricsEndpoint, RequestBody.Companion.n(companion2, b10, byteArray, 0, 0, 12, null)).enqueue(new Callback<Void>() { // from class: com.vungle.ads.internal.network.VungleApiClient$reportMetrics$2
            @Override // com.vungle.ads.internal.network.Callback
            public void onFailure(@Nullable Call<Void> call, @Nullable Throwable th2) {
                AnalyticsClient.RequestListener.this.onFailure();
            }

            @Override // com.vungle.ads.internal.network.Callback
            public void onResponse(@Nullable Call<Void> call, @Nullable Response<Void> response) {
                AnalyticsClient.RequestListener.this.onSuccess();
            }
        });
    }

    @Nullable
    public final Call<AdPayload> requestAd(@NotNull String placement, @Nullable VungleAdSize vungleAdSize) throws IllegalStateException {
        Intrinsics.checkNotNullParameter(placement, "placement");
        ConfigManager configManager = ConfigManager.INSTANCE;
        String adsEndpoint = configManager.getAdsEndpoint();
        CommonRequestBody requestBody = requestBody(!configManager.signalsDisabled(), configManager.fpdEnabled());
        CommonRequestBody.RequestParam requestParam = new CommonRequestBody.RequestParam(CollectionsKt.e(placement), (CommonRequestBody.AdSizeParam) null, (Long) null, (String) null, (String) null, (String) null, 62, (DefaultConstructorMarker) null);
        if (vungleAdSize != null) {
            requestParam.setAdSize(new CommonRequestBody.AdSizeParam(vungleAdSize.getWidth(), vungleAdSize.getHeight()));
        }
        requestBody.setRequest(requestParam);
        return this.gzipApi.ads(VungleHeader.INSTANCE.getHeaderUa(), adsEndpoint, requestBody);
    }

    @NotNull
    public final CommonRequestBody requestBody(boolean z10, boolean z11) throws IllegalStateException {
        CommonRequestBody commonRequestBody = new CommonRequestBody(getDeviceBody(), this.appBody, getUserBody(z11), (CommonRequestBody.RequestExt) null, (CommonRequestBody.RequestParam) null, 24, (DefaultConstructorMarker) null);
        CommonRequestBody.RequestExt extBody = getExtBody(z10);
        if (extBody != null) {
            commonRequestBody.setExt(extBody);
        }
        return commonRequestBody;
    }

    @Nullable
    public final Call<Void> ri(@NotNull CommonRequestBody.RequestParam request) {
        AppNode appNode;
        Intrinsics.checkNotNullParameter(request, "request");
        String riEndpoint = ConfigManager.INSTANCE.getRiEndpoint();
        if (riEndpoint == null || riEndpoint.length() == 0 || (appNode = this.appBody) == null) {
            return null;
        }
        CommonRequestBody commonRequestBody = new CommonRequestBody(getDeviceBody(), appNode, getUserBody$default(this, false, 1, null), (CommonRequestBody.RequestExt) null, (CommonRequestBody.RequestParam) null, 24, (DefaultConstructorMarker) null);
        commonRequestBody.setRequest(request);
        CommonRequestBody.RequestExt extBody$default = getExtBody$default(this, false, 1, null);
        if (extBody$default != null) {
            commonRequestBody.setExt(extBody$default);
        }
        return this.api.ri(VungleHeader.INSTANCE.getHeaderUa(), riEndpoint, commonRequestBody);
    }

    public final void sendAdMarkup(@NotNull String adMarkup, @NotNull String endpoint) {
        Intrinsics.checkNotNullParameter(adMarkup, "adMarkup");
        Intrinsics.checkNotNullParameter(endpoint, "endpoint");
        this.api.sendAdMarkup(endpoint, RequestBody.Companion.b(adMarkup, MediaType.f63480e.b("application/json"))).enqueue(new Callback<Void>() { // from class: com.vungle.ads.internal.network.VungleApiClient$sendAdMarkup$1
            @Override // com.vungle.ads.internal.network.Callback
            public void onFailure(@Nullable Call<Void> call, @Nullable Throwable th2) {
            }

            @Override // com.vungle.ads.internal.network.Callback
            public void onResponse(@Nullable Call<Void> call, @Nullable Response<Void> response) {
            }
        });
    }

    public final void setAppBody$vungle_ads_release(@Nullable AppNode appNode) {
        this.appBody = appNode;
    }

    public final void setGzipApi$vungle_ads_release(@NotNull VungleApi vungleApi) {
        Intrinsics.checkNotNullParameter(vungleApi, "<set-?>");
        this.gzipApi = vungleApi;
    }

    public final void setResponseInterceptor$vungle_ads_release(@NotNull Interceptor interceptor) {
        Intrinsics.checkNotNullParameter(interceptor, "<set-?>");
        this.responseInterceptor = interceptor;
    }

    public final void setRetryAfterDataMap$vungle_ads_release(@NotNull Map<String, Long> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.retryAfterDataMap = map;
    }

    @VisibleForTesting
    public static /* synthetic */ void getAppBody$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getGzipApi$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getResponseInterceptor$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getRetryAfterDataMap$vungle_ads_release$annotations() {
    }
}
