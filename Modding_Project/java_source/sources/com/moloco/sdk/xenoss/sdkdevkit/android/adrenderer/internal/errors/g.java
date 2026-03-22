package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class g implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final g f34004a = new g("STATIC_AD_UNKNOWN_ERROR", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final g f34005b = new g("STATIC_AD_WEBVIEW_DATA_WITH_DEFAULT_BASE_URL_ERROR", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final g f34006c = new g("STATIC_AD_WEBVIEW_RECEIVED_ERROR", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final g f34007d = new g("STATIC_AD_WEBVIEW_RENDER_PROCESS_GONE_ERROR", 3);

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ g[] f34008e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ ss.a f34009f;

    static {
        g[] b10 = b();
        f34008e = b10;
        f34009f = kotlin.enums.a.a(b10);
    }

    public g(String str, int i10) {
    }

    public static final /* synthetic */ g[] b() {
        return new g[]{f34004a, f34005b, f34006c, f34007d};
    }

    @NotNull
    public static ss.a<g> c() {
        return f34009f;
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f34008e.clone();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c
    @NotNull
    public String a() {
        return name();
    }
}
