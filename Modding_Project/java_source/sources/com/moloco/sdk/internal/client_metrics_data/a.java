package com.moloco.sdk.internal.client_metrics_data;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class a {
    public static final /* synthetic */ a[] M;
    public static final /* synthetic */ ss.a N;
    @NotNull
    public final String O;

    /* renamed from: a  reason: collision with root package name */
    public static final a f32029a = new a("SDKInitAttempt", 0, "sdk_init_attempt");

    /* renamed from: b  reason: collision with root package name */
    public static final a f32030b = new a("SDKInitSuccess", 1, "sdk_init_success");

    /* renamed from: c  reason: collision with root package name */
    public static final a f32031c = new a("SDKInitFailure", 2, "sdk_init_failure");

    /* renamed from: d  reason: collision with root package name */
    public static final a f32032d = new a("SDKPerformInitAttempt", 3, "sdk_perform_init_attempt");

    /* renamed from: e  reason: collision with root package name */
    public static final a f32033e = new a("SDKFetchInitAttempt", 4, "sdk_fetch_init_attempt");

    /* renamed from: f  reason: collision with root package name */
    public static final a f32034f = new a("SDKInitCacheRead", 5, "sdk_init_cache_read");

    /* renamed from: g  reason: collision with root package name */
    public static final a f32035g = new a("SDKInitCacheWrite", 6, "sdk_init_cache_write");

    /* renamed from: h  reason: collision with root package name */
    public static final a f32036h = new a("SDKInitCacheClear", 7, "sdk_init_cache_clear");

    /* renamed from: i  reason: collision with root package name */
    public static final a f32037i = new a("CreateAd", 8, "create_ad");

    /* renamed from: j  reason: collision with root package name */
    public static final a f32038j = new a("LoadAdAttempt", 9, "load_ad_attempted");

    /* renamed from: k  reason: collision with root package name */
    public static final a f32039k = new a("LoadAdSuccess", 10, "load_ad_success");

    /* renamed from: l  reason: collision with root package name */
    public static final a f32040l = new a("LoadAdFailed", 11, "load_ad_failed");

    /* renamed from: m  reason: collision with root package name */
    public static final a f32041m = new a("NativeAdLoadAdAttempted", 12, "native_ad_load_attempted");

    /* renamed from: n  reason: collision with root package name */
    public static final a f32042n = new a("NativeLoadAd", 13, "native_ad_load");

    /* renamed from: o  reason: collision with root package name */
    public static final a f32043o = new a("BidTokenGetRequest", 14, "bid_token_get_request");

    /* renamed from: p  reason: collision with root package name */
    public static final a f32044p = new a("BidTokenGetResponse", 15, "bid_token_get_response");

    /* renamed from: q  reason: collision with root package name */
    public static final a f32045q = new a("BidTokenFetch", 16, "bid_token_fetch");

    /* renamed from: r  reason: collision with root package name */
    public static final a f32046r = new a("BidTokenDurationTimeoutOneSecond", 17, "bid_token_duration_crossed_1s");

    /* renamed from: s  reason: collision with root package name */
    public static final a f32047s = new a("BidTokenDurationTimeoutThreeSecond", 18, "bid_token_duration_crossed_3s");

    /* renamed from: t  reason: collision with root package name */
    public static final a f32048t = new a("ServerBidTokenFetch", 19, "sbt_fetch");

    /* renamed from: u  reason: collision with root package name */
    public static final a f32049u = new a("ServerBidTokenCached", 20, "sbt_cached");

    /* renamed from: v  reason: collision with root package name */
    public static final a f32050v = new a("ServerBidTokenApiFetch", 21, "sbt_api_fetch");

    /* renamed from: w  reason: collision with root package name */
    public static final a f32051w = new a("ServerBidTokenAsyncRefresh", 22, "sbt_async_fetch");

    /* renamed from: x  reason: collision with root package name */
    public static final a f32052x = new a("ClientBidTokenBuild", 23, "bid_token_build");

    /* renamed from: y  reason: collision with root package name */
    public static final a f32053y = new a("ClientBidTokenCached", 24, "cbt_cached");

    /* renamed from: z  reason: collision with root package name */
    public static final a f32054z = new a("ShowAdAttempt", 25, "show_ad_attempted");
    public static final a A = new a("ShowAdSuccess", 26, "show_ad_success");
    public static final a B = new a("ShowAdFailed", 27, "show_ad_failed");
    public static final a C = new a("AdClicked", 28, "ad_clicked");
    public static final a D = new a("CrashDetected", 29, "crash_detected");
    public static final a E = new a("WebviewLoadAd", 30, "webview_load_ad");
    public static final a F = new a("WebviewHtmlAdError", 31, "webview_html_ad_error");
    public static final a G = new a("WebviewEventHandled", 32, "webview_event_handled");
    public static final a H = new a("WebviewEventMultipleHandlers", 33, "webview_event_multiple_handlers");
    public static final a I = new a("WebviewPageLoadStart", 34, "webview_page_load_start");
    public static final a J = new a("WebviewPageLoadEnd", 35, "webview_page_load_end");
    public static final a K = new a("WebviewPageLoadFinishCallback", 36, "webview_page_load_finish_callback");
    public static final a L = new a("WebviewRequiredContentLoaded", 37, "webview_required_content_loaded");

    static {
        a[] a10 = a();
        M = a10;
        N = kotlin.enums.a.a(a10);
    }

    public a(String str, int i10, String str2) {
        this.O = str2;
    }

    public static final /* synthetic */ a[] a() {
        return new a[]{f32029a, f32030b, f32031c, f32032d, f32033e, f32034f, f32035g, f32036h, f32037i, f32038j, f32039k, f32040l, f32041m, f32042n, f32043o, f32044p, f32045q, f32046r, f32047s, f32048t, f32049u, f32050v, f32051w, f32052x, f32053y, f32054z, A, B, C, D, E, F, G, H, I, J, K, L};
    }

    @NotNull
    public static ss.a<a> b() {
        return N;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) M.clone();
    }

    @NotNull
    public final String c() {
        return this.O;
    }

    @Override // java.lang.Enum
    @NotNull
    public String toString() {
        return this.O;
    }
}
