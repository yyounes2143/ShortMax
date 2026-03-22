package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f33965a = new a("STATIC_AD_LOAD_INTERNAL_TIMEOUT_ERROR", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final a f33966b = new a("VAST_AD_LOAD_INTERNAL_TIMEOUT_ERROR", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final a f33967c = new a("MRAID_AD_LOAD_INTERNAL_TIMEOUT_ERROR", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final a f33968d = new a("NATIVE_AD_LOAD_INTERNAL_TIMEOUT_ERROR", 3);

    /* renamed from: e  reason: collision with root package name */
    public static final a f33969e = new a("VAST_FULLSCREEN_AD_LOAD_INTERNAL_TIMEOUT_ERROR", 4);

    /* renamed from: f  reason: collision with root package name */
    public static final a f33970f = new a("MRAID_FULLSCREEN_AD_LOAD_INTERNAL_TIMEOUT_ERROR", 5);

    /* renamed from: g  reason: collision with root package name */
    public static final a f33971g = new a("STATIC_FULLSCREEN_AD_LOAD_INTERNAL_TIMEOUT_ERROR", 6);

    /* renamed from: h  reason: collision with root package name */
    public static final a f33972h = new a("VAST_BANNER_AD_LOAD_INTERNAL_TIMEOUT_ERROR", 7);

    /* renamed from: i  reason: collision with root package name */
    public static final a f33973i = new a("MRAID_BANNER_AD_LOAD_INTERNAL_TIMEOUT_ERROR", 8);

    /* renamed from: j  reason: collision with root package name */
    public static final a f33974j = new a("STATIC_BANNER_AD_LOAD_INTERNAL_TIMEOUT_ERROR", 9);

    /* renamed from: k  reason: collision with root package name */
    public static final /* synthetic */ a[] f33975k;

    /* renamed from: l  reason: collision with root package name */
    public static final /* synthetic */ ss.a f33976l;

    static {
        a[] b10 = b();
        f33975k = b10;
        f33976l = kotlin.enums.a.a(b10);
    }

    public a(String str, int i10) {
    }

    public static final /* synthetic */ a[] b() {
        return new a[]{f33965a, f33966b, f33967c, f33968d, f33969e, f33970f, f33971g, f33972h, f33973i, f33974j};
    }

    @NotNull
    public static ss.a<a> c() {
        return f33976l;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f33975k.clone();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c
    @NotNull
    public String a() {
        return name();
    }
}
