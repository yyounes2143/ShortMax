package com.moloco.sdk.internal.services.init;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f33411a = new b("RequestTimeout", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final b f33412b = new b("UnknownHostHttpError", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final b f33413c = new b("HttpSocketError", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final b f33414d = new b("HttpSslError", 3);

    /* renamed from: e  reason: collision with root package name */
    public static final b f33415e = new b("PersistentHttpUnavailableError", 4);

    /* renamed from: f  reason: collision with root package name */
    public static final b f33416f = new b("Unknown", 5);

    /* renamed from: g  reason: collision with root package name */
    public static final /* synthetic */ b[] f33417g;

    /* renamed from: h  reason: collision with root package name */
    public static final /* synthetic */ ss.a f33418h;

    static {
        b[] a10 = a();
        f33417g = a10;
        f33418h = kotlin.enums.a.a(a10);
    }

    public b(String str, int i10) {
    }

    public static final /* synthetic */ b[] a() {
        return new b[]{f33411a, f33412b, f33413c, f33414d, f33415e, f33416f};
    }

    @NotNull
    public static ss.a<b> b() {
        return f33418h;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f33417g.clone();
    }
}
