package com.moloco.sdk.internal;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class o implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c {

    /* renamed from: a  reason: collision with root package name */
    public static final o f32321a = new o("AD_LOAD_LIMIT_REACHED", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final o f32322b = new o("BID_LOAD_ERROR_CANNOT_PROCESS_BID_RESPONSE", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final o f32323c = new o("BID_LOAD_ERROR_CANNOT_PARSE_BID_RESPONSE", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final o f32324d = new o("AD_SHOW_ERROR_NOT_LOADED", 3);

    /* renamed from: e  reason: collision with root package name */
    public static final o f32325e = new o("AD_SHOW_ERROR_ALREADY_DISPLAYING", 4);

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ o[] f32326f;

    /* renamed from: g  reason: collision with root package name */
    public static final /* synthetic */ ss.a f32327g;

    static {
        o[] b10 = b();
        f32326f = b10;
        f32327g = kotlin.enums.a.a(b10);
    }

    public o(String str, int i10) {
    }

    public static final /* synthetic */ o[] b() {
        return new o[]{f32321a, f32322b, f32323c, f32324d, f32325e};
    }

    @NotNull
    public static ss.a<o> c() {
        return f32327g;
    }

    public static o valueOf(String str) {
        return (o) Enum.valueOf(o.class, str);
    }

    public static o[] values() {
        return (o[]) f32326f.clone();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c
    @NotNull
    public String a() {
        return name();
    }
}
