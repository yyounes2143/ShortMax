package com.moloco.sdk.internal.services;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class H {

    /* renamed from: a  reason: collision with root package name */
    public static final H f33085a = new H(GrsBaseInfo.CountryCodeSource.UNKNOWN, 0);

    /* renamed from: b  reason: collision with root package name */
    public static final H f33086b = new H("PORTRAIT", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final H f33087c = new H("LANDSCAPE", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ H[] f33088d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ ss.a f33089e;

    static {
        H[] a10 = a();
        f33088d = a10;
        f33089e = kotlin.enums.a.a(a10);
    }

    public H(String str, int i10) {
    }

    public static final /* synthetic */ H[] a() {
        return new H[]{f33085a, f33086b, f33087c};
    }

    @NotNull
    public static ss.a<H> b() {
        return f33089e;
    }

    public static H valueOf(String str) {
        return (H) Enum.valueOf(H.class, str);
    }

    public static H[] values() {
        return (H[]) f33088d.clone();
    }
}
