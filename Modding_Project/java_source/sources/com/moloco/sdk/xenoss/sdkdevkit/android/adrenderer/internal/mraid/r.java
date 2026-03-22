package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import com.vungle.ads.internal.Constants;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class r {

    /* renamed from: b  reason: collision with root package name */
    public static final r f34329b = new r("Inline", 0, "inline");

    /* renamed from: c  reason: collision with root package name */
    public static final r f34330c = new r("Interstitial", 1, Constants.PLACEMENT_TYPE_INTERSTITIAL);

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ r[] f34331d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ ss.a f34332e;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f34333a;

    static {
        r[] a10 = a();
        f34331d = a10;
        f34332e = kotlin.enums.a.a(a10);
    }

    public r(String str, int i10, String str2) {
        this.f34333a = str2;
    }

    public static final /* synthetic */ r[] a() {
        return new r[]{f34329b, f34330c};
    }

    @NotNull
    public static ss.a<r> b() {
        return f34332e;
    }

    public static r valueOf(String str) {
        return (r) Enum.valueOf(r.class, str);
    }

    public static r[] values() {
        return (r[]) f34331d.clone();
    }

    @NotNull
    public final String c() {
        return this.f34333a;
    }
}
