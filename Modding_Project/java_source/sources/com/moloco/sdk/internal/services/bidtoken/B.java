package com.moloco.sdk.internal.services.bidtoken;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class B {

    /* renamed from: a  reason: collision with root package name */
    public static final B f33107a = new B("NEEDS_REFRESH", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final B f33108b = new B("EXPIRING", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final B f33109c = new B("NO_REFRESH_NEEDED", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ B[] f33110d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ ss.a f33111e;

    static {
        B[] a10 = a();
        f33110d = a10;
        f33111e = kotlin.enums.a.a(a10);
    }

    public B(String str, int i10) {
    }

    public static final /* synthetic */ B[] a() {
        return new B[]{f33107a, f33108b, f33109c};
    }

    @NotNull
    public static ss.a<B> c() {
        return f33111e;
    }

    public static B valueOf(String str) {
        return (B) Enum.valueOf(B.class, str);
    }

    public static B[] values() {
        return (B[]) f33110d.clone();
    }

    public final boolean b() {
        if (this != f33108b && this != f33109c) {
            return false;
        }
        return true;
    }
}
