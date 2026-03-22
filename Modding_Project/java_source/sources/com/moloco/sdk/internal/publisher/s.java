package com.moloco.sdk.internal.publisher;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public static final s f32954a = new s("BANNER", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final s f32955b = new s("BANNER_TABLET", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final s f32956c = new s("MREC", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final s f32957d = new s("NATIVE_AD_MEDIATION", 3);

    /* renamed from: e  reason: collision with root package name */
    public static final s f32958e = new s("NATIVE_BANNER", 4);

    /* renamed from: f  reason: collision with root package name */
    public static final s f32959f = new s("INTERSTITIAL", 5);

    /* renamed from: g  reason: collision with root package name */
    public static final s f32960g = new s("REWARDED", 6);

    /* renamed from: h  reason: collision with root package name */
    public static final /* synthetic */ s[] f32961h;

    /* renamed from: i  reason: collision with root package name */
    public static final /* synthetic */ ss.a f32962i;

    static {
        s[] a10 = a();
        f32961h = a10;
        f32962i = kotlin.enums.a.a(a10);
    }

    public s(String str, int i10) {
    }

    public static final /* synthetic */ s[] a() {
        return new s[]{f32954a, f32955b, f32956c, f32957d, f32958e, f32959f, f32960g};
    }

    @NotNull
    public static ss.a<s> b() {
        return f32962i;
    }

    public static s valueOf(String str) {
        return (s) Enum.valueOf(s.class, str);
    }

    public static s[] values() {
        return (s[]) f32961h.clone();
    }
}
