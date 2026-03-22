package com.inmobi.media;

import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.TelemetryConfig;
import com.inmobi.media.Pd;
import com.moloco.sdk.BuildConfig;
import com.unity3d.services.core.di.ServiceProvider;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Pd implements InterfaceC3210va, Db, N2 {

    /* renamed from: a  reason: collision with root package name */
    public static final Pd f23988a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f23989b;

    /* renamed from: c  reason: collision with root package name */
    public static final List f23990c;

    /* renamed from: d  reason: collision with root package name */
    public static final AtomicBoolean f23991d;

    /* renamed from: e  reason: collision with root package name */
    public static volatile TelemetryConfig f23992e;

    /* renamed from: f  reason: collision with root package name */
    public static C3172t4 f23993f;

    /* renamed from: g  reason: collision with root package name */
    public static volatile C2892be f23994g;

    /* renamed from: h  reason: collision with root package name */
    public static final Od f23995h;

    /* renamed from: i  reason: collision with root package name */
    public static Xd f23996i;

    static {
        Pd pd2 = new Pd();
        f23988a = pd2;
        String simpleName = Pd.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        f23989b = simpleName;
        List t10 = CollectionsKt.t("AdLoadCalled", "AdLoadDroppedAtSDK", "AdLoadSuccessful", "AdLoadFailed", "ServerFill", "ServerNoFill", "ServerError", "AssetDownloaded", "AdShowCalled", "AdShowSuccessful", "AdShowFailed", "AdGetSignalsCalled", "AdGetSignalsSucceeded", "AdGetSignalsFailed", "UnifiedIdNetworkCallRequested", "UnifiedIdNetworkResponseFailure", "FetchApiInvoked", "FetchCallbackFailure", "AdImpressionSuccessful", "RenderSuccess", "ParseSuccess", "PageStarted", "WebViewLoadFinished", "FireAdReady", "WebViewLoadCalled", "FireAdFailed", "ResourceCacheMiss", "ResourceCacheHit", "ResourceDiskCacheFileMissing", "ResourceDiskCacheFileEvicted", "LowAvailableSpaceForCache", "WebViewRenderProcessGoneEvent", "clickStartCalled", "landingsStartSuccess", "landingsStartFailed", "browserOpenFailed", "landingsPageStarted", "landingsCompleteSuccess", "landingsCompleteFailed", "ImmersiveNotSupported", "AdNotReady", "IAPFetchFailed", "BillingClientConnectionError", "BillingClientNotCompatible", "PingFailed", "PingStarted", "PingSuccess", "CompanionWebViewLoadCalled", "CompanionWebViewLoadFailed", "CompanionFireAdReady", "CompanionFireAdFailed", "CompanionWebViewPageStarted", "CompanionWebViewLoadFinished");
        f23990c = t10;
        f23991d = new AtomicBoolean(false);
        LinkedHashMap linkedHashMap = O2.f23923a;
        Config a10 = M2.a("telemetry", Uc.b(), pd2);
        Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig");
        f23992e = (TelemetryConfig) a10;
        TelemetryConfig telemetryConfig = f23992e;
        f23994g = new C2892be(new Sd(telemetryConfig.getEnabled(), telemetryConfig.getAssetConfig().isImageEnabled(), telemetryConfig.getAssetConfig().isGifEnabled(), telemetryConfig.getAssetConfig().isVideoEnabled(), telemetryConfig.isGeneralEventsDisabled(), telemetryConfig.getPriorityEventsList(), telemetryConfig.getSamplingFactor()), CollectionsKt.d1(t10));
        f23995h = Od.f23953a;
    }

    public static final void b(final String eventType, final Map keyValueMap, final Td telemetryEventType) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(keyValueMap, "keyValueMap");
        Intrinsics.checkNotNullParameter(telemetryEventType, "telemetryEventType");
        Uc.a(new Runnable() { // from class: ub.p1
            @Override // java.lang.Runnable
            public final void run() {
                Pd.c(eventType, keyValueMap, telemetryEventType);
            }
        });
    }

    public static final void c() {
        if (f23991d.getAndSet(true)) {
            return;
        }
        Pd pd2 = f23988a;
        if (T1.a(Nc.e(), null, null, 63) > 0) {
            pd2.b();
        }
        Uc.f().a(new int[]{2, 1, 150, 152, 151}, f23995h);
        f23996i = new Xd(f23992e);
    }

    @Override // com.inmobi.media.N2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof TelemetryConfig) {
            TelemetryConfig telemetryConfig = (TelemetryConfig) config;
            f23992e = telemetryConfig;
            f23994g = new C2892be(new Sd(telemetryConfig.getEnabled(), telemetryConfig.getAssetConfig().isImageEnabled(), telemetryConfig.getAssetConfig().isGifEnabled(), telemetryConfig.getAssetConfig().isVideoEnabled(), telemetryConfig.isGeneralEventsDisabled(), telemetryConfig.getPriorityEventsList(), telemetryConfig.getSamplingFactor()), CollectionsKt.d1(f23990c));
            Xd xd2 = f23996i;
            if (xd2 != null) {
                Intrinsics.checkNotNullParameter(telemetryConfig, "telemetryConfig");
                xd2.f24373a = telemetryConfig;
            }
        }
    }

    public final void b() {
        if (f23991d.get()) {
            C3125q4 eventConfig = f23992e.getEventConfig();
            eventConfig.f25189k = f23992e.getTelemetryUrl();
            C3172t4 c3172t4 = f23993f;
            if (c3172t4 == null) {
                f23993f = new C3172t4(Nc.e(), this, eventConfig, this);
            } else {
                Intrinsics.checkNotNullParameter(eventConfig, "eventConfig");
                c3172t4.f25302i = eventConfig;
            }
            C3172t4 c3172t42 = f23993f;
            if (c3172t42 != null) {
                C3125q4 c3125q4 = c3172t42.f25302i;
                if (c3172t42.f25299f.get() || c3125q4 == null) {
                    return;
                }
                c3172t42.a(c3125q4.f25181c, true);
            }
        }
    }

    public static final void c(String eventType, Map keyValueMap, Td telemetryEventType) {
        String str;
        Intrinsics.checkNotNullParameter(eventType, "$eventType");
        Intrinsics.checkNotNullParameter(keyValueMap, "$keyValueMap");
        Intrinsics.checkNotNullParameter(telemetryEventType, "$telemetryEventType");
        Objects.toString(keyValueMap);
        try {
            if (f23994g == null) {
                return;
            }
            Pd pd2 = f23988a;
            if (a(eventType, keyValueMap, telemetryEventType)) {
                return;
            }
            C2892be c2892be = f23994g;
            if (c2892be == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mTelemetryValidator");
                c2892be = null;
            }
            int a10 = c2892be.a(telemetryEventType, eventType);
            if (a10 != 0) {
                if (a10 != 1) {
                    return;
                }
                if (keyValueMap.get("samplingRate") == null) {
                    keyValueMap.put("samplingRate", 100);
                }
            } else if (keyValueMap.get("samplingRate") == null) {
                keyValueMap.put("samplingRate", Integer.valueOf(bt.a.b((1 - f23992e.getSamplingFactor()) * 100)));
            }
            int ordinal = telemetryEventType.ordinal();
            if (ordinal == 0) {
                str = ServiceProvider.NAMED_SDK;
            } else if (ordinal != 1) {
                throw new NoWhenBranchMatchedException();
            } else {
                str = "template";
            }
            Wd wd2 = new Wd(eventType, null, str);
            keyValueMap.put("eventType", wd2.f24238a);
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
            keyValueMap.put("eventId", uuid);
            keyValueMap.put("isTemplateEvent", Boolean.valueOf(telemetryEventType == Td.f24225b));
            String payload = new JSONObject(keyValueMap).toString();
            Intrinsics.checkNotNullExpressionValue(payload, "toString(...)");
            Intrinsics.checkNotNullParameter(payload, "payload");
            wd2.f24241d = payload;
            int a11 = (T1.a(Nc.e(), null, null, 63) + 1) - f23992e.getMaxEventsToPersist();
            if (a11 > 0) {
                Nc.e().a(a11);
                int a12 = Ud.a() + a11;
                if (a12 != -1) {
                    Ud.f24277b = a12;
                    C6 c62 = Ud.f24276a;
                    if (c62 != null) {
                        C6.a(c62, MetricsSQLiteCacheKt.METRICS_COUNT, a12, false, 4, (Object) null);
                    }
                }
            }
            Nc.e().a(wd2);
            pd2.b();
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
        if (r0.f24159f.contains(r5) == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0075, code lost:
        if (r7.f23950a.f24155b == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0088, code lost:
        if (r7.f23950a.f24156c == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009b, code lost:
        if (r7.f23950a.f24157d == false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r5, java.util.Map r6, com.inmobi.media.Td r7) {
        /*
            com.inmobi.media.be r0 = com.inmobi.media.Pd.f23994g
            if (r0 != 0) goto La
            java.lang.String r0 = "mTelemetryValidator"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)
            r0 = 0
        La:
            r0.getClass()
            java.lang.String r1 = "telemetryEventType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r1)
            java.lang.String r1 = "keyValueMap"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r1)
            java.lang.String r2 = "eventType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r2)
            com.inmobi.media.Sd r3 = r0.f24524a
            boolean r3 = r3.f24154a
            r4 = 1
            if (r3 != 0) goto L25
            goto L9d
        L25:
            int r7 = r7.ordinal()
            if (r7 == 0) goto L35
            if (r7 != r4) goto L2f
            goto L9f
        L2f:
            kotlin.NoWhenBranchMatchedException r5 = new kotlin.NoWhenBranchMatchedException
            r5.<init>()
            throw r5
        L35:
            com.inmobi.media.Oc r7 = r0.f24525b
            r7.getClass()
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r1)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r2)
            com.inmobi.media.Sd r0 = r7.f23950a
            boolean r1 = r0.f24158e
            if (r1 == 0) goto L4f
            java.util.List r0 = r0.f24159f
            boolean r0 = r0.contains(r5)
            if (r0 != 0) goto L4f
            goto L9d
        L4f:
            boolean r0 = r6.isEmpty()
            if (r0 != 0) goto L9f
            java.lang.String r0 = "AssetDownloaded"
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r0)
            if (r5 == 0) goto L9f
            java.lang.String r5 = "assetType"
            boolean r0 = r6.containsKey(r5)
            if (r0 == 0) goto L9f
            java.lang.Object r0 = r6.get(r5)
            java.lang.String r1 = "image"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r0)
            if (r0 == 0) goto L78
            com.inmobi.media.Sd r0 = r7.f23950a
            boolean r0 = r0.f24155b
            if (r0 != 0) goto L78
            goto L9d
        L78:
            java.lang.Object r0 = r6.get(r5)
            java.lang.String r1 = "gif"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r0)
            if (r0 == 0) goto L8b
            com.inmobi.media.Sd r0 = r7.f23950a
            boolean r0 = r0.f24156c
            if (r0 != 0) goto L8b
            goto L9d
        L8b:
            java.lang.Object r5 = r6.get(r5)
            java.lang.String r6 = "video"
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r5)
            if (r5 == 0) goto L9f
            com.inmobi.media.Sd r5 = r7.f23950a
            boolean r5 = r5.f24157d
            if (r5 != 0) goto L9f
        L9d:
            r5 = 0
            goto La0
        L9f:
            r5 = r4
        La0:
            r5 = r5 ^ r4
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Pd.a(java.lang.String, java.util.Map, com.inmobi.media.Td):boolean");
    }

    @Override // com.inmobi.media.InterfaceC3210va
    public final C3156s4 a() {
        int a10;
        String str;
        if (L3.f23796a.p() == 1) {
            a10 = f23992e.getWifiConfig().a();
        } else {
            a10 = f23992e.getMobileConfig().a();
        }
        List<Wd> g12 = CollectionsKt.g1(Nc.e().b(a10));
        if (!a("DatabaseMaxLimitReachedV2", kotlin.collections.p0.i(), Td.f24224a) && g12.size() < a10 && Ud.a() > 0) {
            int a11 = Ud.a();
            Wd wd2 = new Wd("DatabaseMaxLimitReachedV2", null, ServiceProvider.NAMED_SDK);
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
            HashMap k10 = kotlin.collections.p0.k(ms.k.a("eventId", uuid), ms.k.a("eventType", "DatabaseMaxLimitReachedV2"), ms.k.a("samplingRate", 100), ms.k.a("isTemplateEvent", Boolean.FALSE), ms.k.a("eventLostCount", Integer.valueOf(a11)));
            Intrinsics.checkNotNull(k10, "null cannot be cast to non-null type kotlin.collections.Map<*, *>");
            String payload = new JSONObject(k10).toString();
            Intrinsics.checkNotNullExpressionValue(payload, "toString(...)");
            Intrinsics.checkNotNullParameter(payload, "payload");
            wd2.f24241d = payload;
            Ud.f24278c = Integer.valueOf(wd2.f24240c);
            g12.add(wd2);
        }
        if (g12.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Wd wd3 : g12) {
            arrayList.add(Integer.valueOf(wd3.f24240c));
        }
        try {
            String b10 = Uc.b();
            if (b10 == null) {
                b10 = "";
            }
            Map o10 = kotlin.collections.p0.o(ms.k.a("im-accid", b10), ms.k.a("version", BuildConfig.SDK_VERSION_NAME), ms.k.a("mk-version", Vc.a()), ms.k.a("u-appbid", C2930e1.f24616a), ms.k.a("tp", Vc.d()));
            String f10 = Vc.f();
            if (f10 != null) {
                o10.put("tp-v", f10);
            }
            Intrinsics.checkNotNull(o10, "null cannot be cast to non-null type kotlin.collections.Map<*, *>");
            JSONObject jSONObject = new JSONObject(o10);
            JSONArray jSONArray = new JSONArray();
            for (Wd wd4 : g12) {
                if (StringsKt.v1(wd4.a()).toString().length() > 0) {
                    jSONArray.put(new JSONObject(wd4.a()));
                }
            }
            jSONObject.put("payload", jSONArray);
            str = jSONObject.toString();
        } catch (JSONException unused) {
            str = null;
        }
        if (str != null) {
            return new C3156s4(arrayList, str);
        }
        return null;
    }
}
