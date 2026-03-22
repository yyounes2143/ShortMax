package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class j implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final j f34017a = new j("STATIC_FULLSCREEN_AD_UNKNOWN_ERROR", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final j f34018b = new j("STATIC_FULLSCREEN_AD_WEBVIEW_DATA_WITH_DEFAULT_BASE_URL_ERROR", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final j f34019c = new j("STATIC_FULLSCREEN_AD_WEBVIEW_RECEIVED_ERROR", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final j f34020d = new j("STATIC_FULLSCREEN_AD_WEBVIEW_RENDER_PROCESS_GONE_ERROR", 3);

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ j[] f34021e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ ss.a f34022f;

    static {
        j[] b10 = b();
        f34021e = b10;
        f34022f = kotlin.enums.a.a(b10);
    }

    public j(String str, int i10) {
    }

    public static final /* synthetic */ j[] b() {
        return new j[]{f34017a, f34018b, f34019c, f34020d};
    }

    @NotNull
    public static ss.a<j> c() {
        return f34022f;
    }

    public static j valueOf(String str) {
        return (j) Enum.valueOf(j.class, str);
    }

    public static j[] values() {
        return (j[]) f34021e.clone();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c
    @NotNull
    public String a() {
        return name();
    }
}
