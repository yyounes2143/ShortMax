package com.moloco.sdk.acm;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f31932a = new f("INITIALIZED", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final f f31933b = new f("INITIALIZING", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final f f31934c = new f("UNINITIALIZED", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ f[] f31935d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ ss.a f31936e;

    static {
        f[] a10 = a();
        f31935d = a10;
        f31936e = kotlin.enums.a.a(a10);
    }

    public f(String str, int i10) {
    }

    public static final /* synthetic */ f[] a() {
        return new f[]{f31932a, f31933b, f31934c};
    }

    @NotNull
    public static ss.a<f> b() {
        return f31936e;
    }

    public static f valueOf(String str) {
        return (f) Enum.valueOf(f.class, str);
    }

    public static f[] values() {
        return (f[]) f31935d.clone();
    }
}
