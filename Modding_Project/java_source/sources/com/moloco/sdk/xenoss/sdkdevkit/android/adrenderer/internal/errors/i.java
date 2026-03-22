package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class i implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final i f34011a = new i("STATIC_BANNER_AD_UNKNOWN_ERROR", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final i f34012b = new i("STATIC_BANNER_AD_WEBVIEW_DATA_WITH_DEFAULT_BASE_URL_ERROR", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final i f34013c = new i("STATIC_BANNER_AD_WEBVIEW_RECEIVED_ERROR", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final i f34014d = new i("STATIC_BANNER_AD_WEBVIEW_RENDER_PROCESS_GONE_ERROR", 3);

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ i[] f34015e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ ss.a f34016f;

    static {
        i[] b10 = b();
        f34015e = b10;
        f34016f = kotlin.enums.a.a(b10);
    }

    public i(String str, int i10) {
    }

    public static final /* synthetic */ i[] b() {
        return new i[]{f34011a, f34012b, f34013c, f34014d};
    }

    @NotNull
    public static ss.a<i> c() {
        return f34016f;
    }

    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    public static i[] values() {
        return (i[]) f34015e.clone();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c
    @NotNull
    public String a() {
        return name();
    }
}
