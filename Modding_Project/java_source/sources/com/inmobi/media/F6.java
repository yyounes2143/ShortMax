package com.inmobi.media;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes5.dex */
public final class F6 {

    /* renamed from: d  reason: collision with root package name */
    public static final F6 f23634d;

    /* renamed from: e  reason: collision with root package name */
    public static final F6 f23635e;

    /* renamed from: f  reason: collision with root package name */
    public static final F6 f23636f;

    /* renamed from: g  reason: collision with root package name */
    public static final F6 f23637g;

    /* renamed from: h  reason: collision with root package name */
    public static final F6 f23638h;

    /* renamed from: i  reason: collision with root package name */
    public static final F6 f23639i;

    /* renamed from: j  reason: collision with root package name */
    public static final F6 f23640j;

    /* renamed from: k  reason: collision with root package name */
    public static final /* synthetic */ F6[] f23641k;

    /* renamed from: a  reason: collision with root package name */
    public final String f23642a;

    /* renamed from: b  reason: collision with root package name */
    public final String f23643b;

    /* renamed from: c  reason: collision with root package name */
    public final int f23644c;

    static {
        F6 f62 = new F6("LPClickStart", 0, "clickStartCalled", "sdk_click_detected", 0);
        f23634d = f62;
        F6 f63 = new F6("LPStartFailed", 1, "landingsStartFailed", "valid_click_failed", 1);
        f23635e = f63;
        F6 f64 = new F6("LPStartSuccess", 2, "landingsStartSuccess", "browser_open_success", 2);
        f23636f = f64;
        F6 f65 = new F6("LPBrowserOpenFailed", 3, "browserOpenFailed", "browser_open_failed", 2);
        f23637g = f65;
        F6 f66 = new F6("LPPageStart", 4, "landingsPageStarted", "on_page_started", 3);
        f23638h = f66;
        F6 f67 = new F6("LPCompleteSuccess", 5, "landingsCompleteSuccess", "landing_success", 4);
        f23639i = f67;
        F6 f68 = new F6("LPCompleteFailed", 6, "landingsCompleteFailed", "landing_failed", 4);
        f23640j = f68;
        F6[] f6Arr = {f62, f63, f64, f65, f66, f67, f68};
        f23641k = f6Arr;
        kotlin.enums.a.a(f6Arr);
    }

    public F6(String str, int i10, String str2, String str3, int i11) {
        this.f23642a = str2;
        this.f23643b = str3;
        this.f23644c = i11;
    }

    public static F6 valueOf(String str) {
        return (F6) Enum.valueOf(F6.class, str);
    }

    public static F6[] values() {
        return (F6[]) f23641k.clone();
    }
}
