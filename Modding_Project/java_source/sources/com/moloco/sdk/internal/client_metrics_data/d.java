package com.moloco.sdk.internal.client_metrics_data;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    public static final d f32064b = new d("SDKInit", 0, "sdk_init_time");

    /* renamed from: c  reason: collision with root package name */
    public static final d f32065c = new d("SDKPerformInitAttempt", 1, "sdk_perform_init_time_ms");

    /* renamed from: d  reason: collision with root package name */
    public static final d f32066d = new d("SDKInitHttpRequest", 2, "sdk_init_request_time_ms");

    /* renamed from: e  reason: collision with root package name */
    public static final d f32067e = new d("SDKInitCacheRead", 3, "sdk_init_cache_read_time_ms");

    /* renamed from: f  reason: collision with root package name */
    public static final d f32068f = new d("SDKInitCacheWrite", 4, "sdk_init_cache_write_time_ms");

    /* renamed from: g  reason: collision with root package name */
    public static final d f32069g = new d("SDKInitCacheClear", 5, "sdk_init_cache_clear_time_ms");

    /* renamed from: h  reason: collision with root package name */
    public static final d f32070h = new d("CreateAd", 6, "create_ad_time_ms");

    /* renamed from: i  reason: collision with root package name */
    public static final d f32071i = new d("CreateAdAwaitAdFactory", 7, "create_ad_await_ad_factory_time_ms");

    /* renamed from: j  reason: collision with root package name */
    public static final d f32072j = new d("LoadAd", 8, "load_ad_time");

    /* renamed from: k  reason: collision with root package name */
    public static final d f32073k = new d("NativePrepareAd", 9, "native_ad_load_prepare_time");

    /* renamed from: l  reason: collision with root package name */
    public static final d f32074l = new d("BidTokenFetch", 10, "bid_token_fetch_time");

    /* renamed from: m  reason: collision with root package name */
    public static final d f32075m = new d("ServerBidTokenFetch", 11, "sbt_fetch_time_ms");

    /* renamed from: n  reason: collision with root package name */
    public static final d f32076n = new d("ServerBidTokenApiFetchTime", 12, "sbt_api_fetch_time_ms");

    /* renamed from: o  reason: collision with root package name */
    public static final d f32077o = new d("ClientBidTokenBuild", 13, "bid_token_build_time_ms");

    /* renamed from: p  reason: collision with root package name */
    public static final d f32078p = new d("LoadToShow", 14, "load_to_show_time");

    /* renamed from: q  reason: collision with root package name */
    public static final d f32079q = new d("CreateToLoad", 15, "ad_create_to_load_ms");

    /* renamed from: r  reason: collision with root package name */
    public static final d f32080r = new d("WebviewLoadAd", 16, "webview_load_ad_ms");

    /* renamed from: s  reason: collision with root package name */
    public static final d f32081s = new d("WebviewEventHandled", 17, "webview_event_handled_time_ms");

    /* renamed from: t  reason: collision with root package name */
    public static final d f32082t = new d("WebviewEventHandlerLatency", 18, "webview_event_handler_latency_ms");

    /* renamed from: u  reason: collision with root package name */
    public static final d f32083u = new d("WebviewPageLoadLatency", 19, "webview_page_load_ms");

    /* renamed from: v  reason: collision with root package name */
    public static final d f32084v = new d("WebviewRequiredContentLoadLatency", 20, "webview_required_content_load_ms");

    /* renamed from: w  reason: collision with root package name */
    public static final /* synthetic */ d[] f32085w;

    /* renamed from: x  reason: collision with root package name */
    public static final /* synthetic */ ss.a f32086x;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f32087a;

    static {
        d[] a10 = a();
        f32085w = a10;
        f32086x = kotlin.enums.a.a(a10);
    }

    public d(String str, int i10, String str2) {
        this.f32087a = str2;
    }

    public static final /* synthetic */ d[] a() {
        return new d[]{f32064b, f32065c, f32066d, f32067e, f32068f, f32069g, f32070h, f32071i, f32072j, f32073k, f32074l, f32075m, f32076n, f32077o, f32078p, f32079q, f32080r, f32081s, f32082t, f32083u, f32084v};
    }

    @NotNull
    public static ss.a<d> b() {
        return f32086x;
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f32085w.clone();
    }

    @NotNull
    public final String c() {
        return this.f32087a;
    }

    @Override // java.lang.Enum
    @NotNull
    public String toString() {
        return this.f32087a;
    }
}
