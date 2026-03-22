package com.moloco.sdk.internal.services.bidtoken;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: com.moloco.sdk.internal.services.bidtoken.b  reason: case insensitive filesystem */
/* loaded from: classes6.dex */
public final class EnumC3280b {

    /* renamed from: b  reason: collision with root package name */
    public static final EnumC3280b f33112b = new EnumC3280b(GrsBaseInfo.CountryCodeSource.UNKNOWN, 0, -100);

    /* renamed from: c  reason: collision with root package name */
    public static final EnumC3280b f33113c = new EnumC3280b("HTTP_REQUEST_TIMEOUT", 1, -101);

    /* renamed from: d  reason: collision with root package name */
    public static final EnumC3280b f33114d = new EnumC3280b("UNKNOWN_HOST", 2, -102);

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ EnumC3280b[] f33115e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ ss.a f33116f;

    /* renamed from: a  reason: collision with root package name */
    public final int f33117a;

    static {
        EnumC3280b[] a10 = a();
        f33115e = a10;
        f33116f = kotlin.enums.a.a(a10);
    }

    public EnumC3280b(String str, int i10, int i11) {
        this.f33117a = i11;
    }

    public static final /* synthetic */ EnumC3280b[] a() {
        return new EnumC3280b[]{f33112b, f33113c, f33114d};
    }

    @NotNull
    public static ss.a<EnumC3280b> b() {
        return f33116f;
    }

    public static EnumC3280b valueOf(String str) {
        return (EnumC3280b) Enum.valueOf(EnumC3280b.class, str);
    }

    public static EnumC3280b[] values() {
        return (EnumC3280b[]) f33115e.clone();
    }

    public final int c() {
        return this.f33117a;
    }
}
