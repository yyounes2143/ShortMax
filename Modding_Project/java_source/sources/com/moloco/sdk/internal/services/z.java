package com.moloco.sdk.internal.services;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public static final z f33543a = new z("SILENT", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final z f33544b = new z("VIBRATE", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final z f33545c = new z("NORMAL", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ z[] f33546d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ ss.a f33547e;

    static {
        z[] a10 = a();
        f33546d = a10;
        f33547e = kotlin.enums.a.a(a10);
    }

    public z(String str, int i10) {
    }

    public static final /* synthetic */ z[] a() {
        return new z[]{f33543a, f33544b, f33545c};
    }

    @NotNull
    public static ss.a<z> b() {
        return f33547e;
    }

    public static z valueOf(String str) {
        return (z) Enum.valueOf(z.class, str);
    }

    public static z[] values() {
        return (z[]) f33546d.clone();
    }
}
