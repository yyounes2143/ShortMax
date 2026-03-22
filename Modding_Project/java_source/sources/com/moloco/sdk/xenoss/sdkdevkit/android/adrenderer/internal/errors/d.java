package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class d implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final d f33980a = new d("MRAID_WEBVIEW_CLIENT_UNRECOVERABLE_ERROR", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final d f33981b = new d("MRAID_WEBVIEW_CLIENT_RENDER_PROCESS_GONE_ERROR", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final d f33982c = new d("MRAID_WEBVIEW_LOAD_DATA_WITH_BASE_URL_ERROR", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final d f33983d = new d("MRAID_WEBVIEW_PAGE_DIDNT_LOAD_ERROR", 3);

    /* renamed from: e  reason: collision with root package name */
    public static final d f33984e = new d("MRAID_WEBVIEW_INTERNAL_TIMEOUT_ERROR", 4);

    /* renamed from: f  reason: collision with root package name */
    public static final d f33985f = new d("MRAID_FULLSCREEN_WEBVIEW_CLIENT_UNRECOVERABLE_ERROR", 5);

    /* renamed from: g  reason: collision with root package name */
    public static final d f33986g = new d("MRAID_FULLSCREEN_WEBVIEW_CLIENT_RENDER_PROCESS_GONE_ERROR", 6);

    /* renamed from: h  reason: collision with root package name */
    public static final d f33987h = new d("MRAID_FULLSCREEN_WEBVIEW_LOAD_DATA_WITH_BASE_URL_ERROR", 7);

    /* renamed from: i  reason: collision with root package name */
    public static final d f33988i = new d("MRAID_FULLSCREEN_WEBVIEW_PAGE_DIDNT_LOAD_ERROR", 8);

    /* renamed from: j  reason: collision with root package name */
    public static final d f33989j = new d("MRAID_FULLSCREEN_AD_ACTIVITY_SHOW_FAILED_ERROR", 9);

    /* renamed from: k  reason: collision with root package name */
    public static final d f33990k = new d("MRAID_BANNER_WEBVIEW_CLIENT_UNRECOVERABLE_ERROR", 10);

    /* renamed from: l  reason: collision with root package name */
    public static final d f33991l = new d("MRAID_BANNER_WEBVIEW_CLIENT_RENDER_PROCESS_GONE_ERROR", 11);

    /* renamed from: m  reason: collision with root package name */
    public static final d f33992m = new d("MRAID_BANNER_WEBVIEW_LOAD_DATA_WITH_BASE_URL_ERROR", 12);

    /* renamed from: n  reason: collision with root package name */
    public static final d f33993n = new d("MRAID_BANNER_WEBVIEW_PAGE_DIDNT_LOAD_ERROR", 13);

    /* renamed from: o  reason: collision with root package name */
    public static final /* synthetic */ d[] f33994o;

    /* renamed from: p  reason: collision with root package name */
    public static final /* synthetic */ ss.a f33995p;

    static {
        d[] b10 = b();
        f33994o = b10;
        f33995p = kotlin.enums.a.a(b10);
    }

    public d(String str, int i10) {
    }

    public static final /* synthetic */ d[] b() {
        return new d[]{f33980a, f33981b, f33982c, f33983d, f33984e, f33985f, f33986g, f33987h, f33988i, f33989j, f33990k, f33991l, f33992m, f33993n};
    }

    @NotNull
    public static ss.a<d> c() {
        return f33995p;
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f33994o.clone();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c
    @NotNull
    public String a() {
        return name();
    }
}
