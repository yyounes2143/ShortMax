package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors;

import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f34638a = new a("UNKNOWN_ERROR", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final a f34639b = new a("WEBVIEW_DATA_WITH_DEFAULT_BASE_URL_ERROR", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final a f34640c = new a("WEBVIEW_RECEIVED_ERROR", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final a f34641d = new a("WEBVIEW_REQUIRED_CONTENT_HTTP_ERROR", 3);

    /* renamed from: e  reason: collision with root package name */
    public static final a f34642e = new a("WEBVIEW_RENDER_PROCESS_GONE_ERROR", 4);

    /* renamed from: f  reason: collision with root package name */
    public static final a f34643f = new a("WEBVIEW_TIMEOUT_ERROR", 5);

    /* renamed from: g  reason: collision with root package name */
    public static final a f34644g = new a("WEBVIEW_NOT_AVAILABLE_ERROR", 6);

    /* renamed from: h  reason: collision with root package name */
    public static final /* synthetic */ a[] f34645h;

    /* renamed from: i  reason: collision with root package name */
    public static final /* synthetic */ ss.a f34646i;

    static {
        a[] b10 = b();
        f34645h = b10;
        f34646i = kotlin.enums.a.a(b10);
    }

    public a(String str, int i10) {
    }

    public static final /* synthetic */ a[] b() {
        return new a[]{f34638a, f34639b, f34640c, f34641d, f34642e, f34643f, f34644g};
    }

    @NotNull
    public static ss.a<a> c() {
        return f34646i;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f34645h.clone();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c
    @NotNull
    public String a() {
        return name();
    }
}
