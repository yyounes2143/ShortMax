package com.moloco.sdk.internal.services;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class i0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f33397a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f33398b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final String f33399c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f33400d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final String f33401e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final String f33402f;

    /* renamed from: g  reason: collision with root package name */
    public final int f33403g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final String f33404h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final String f33405i;

    /* renamed from: j  reason: collision with root package name */
    public final float f33406j;

    /* renamed from: k  reason: collision with root package name */
    public final long f33407k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final String f33408l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public final String f33409m;

    public i0(@NotNull String manufacturer, @NotNull String model, @NotNull String hwVersion, boolean z10, @NotNull String os2, @NotNull String osVersion, int i10, @NotNull String language, @NotNull String mobileCarrier, float f10, long j10, @NotNull String hardware, @NotNull String brand) {
        Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(hwVersion, "hwVersion");
        Intrinsics.checkNotNullParameter(os2, "os");
        Intrinsics.checkNotNullParameter(osVersion, "osVersion");
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(mobileCarrier, "mobileCarrier");
        Intrinsics.checkNotNullParameter(hardware, "hardware");
        Intrinsics.checkNotNullParameter(brand, "brand");
        this.f33397a = manufacturer;
        this.f33398b = model;
        this.f33399c = hwVersion;
        this.f33400d = z10;
        this.f33401e = os2;
        this.f33402f = osVersion;
        this.f33403g = i10;
        this.f33404h = language;
        this.f33405i = mobileCarrier;
        this.f33406j = f10;
        this.f33407k = j10;
        this.f33408l = hardware;
        this.f33409m = brand;
    }

    @NotNull
    public final String a() {
        return this.f33409m;
    }

    public final long b() {
        return this.f33407k;
    }

    @NotNull
    public final String c() {
        return this.f33408l;
    }

    @NotNull
    public final String d() {
        return this.f33399c;
    }

    @NotNull
    public final String e() {
        return this.f33404h;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i0)) {
            return false;
        }
        i0 i0Var = (i0) obj;
        if (Intrinsics.areEqual(this.f33397a, i0Var.f33397a) && Intrinsics.areEqual(this.f33398b, i0Var.f33398b) && Intrinsics.areEqual(this.f33399c, i0Var.f33399c) && this.f33400d == i0Var.f33400d && Intrinsics.areEqual(this.f33401e, i0Var.f33401e) && Intrinsics.areEqual(this.f33402f, i0Var.f33402f) && this.f33403g == i0Var.f33403g && Intrinsics.areEqual(this.f33404h, i0Var.f33404h) && Intrinsics.areEqual(this.f33405i, i0Var.f33405i) && Float.compare(this.f33406j, i0Var.f33406j) == 0 && this.f33407k == i0Var.f33407k && Intrinsics.areEqual(this.f33408l, i0Var.f33408l) && Intrinsics.areEqual(this.f33409m, i0Var.f33409m)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String f() {
        return this.f33397a;
    }

    @NotNull
    public final String g() {
        return this.f33405i;
    }

    @NotNull
    public final String h() {
        return this.f33398b;
    }

    public int hashCode() {
        return (((((((((((((((((((((((this.f33397a.hashCode() * 31) + this.f33398b.hashCode()) * 31) + this.f33399c.hashCode()) * 31) + Boolean.hashCode(this.f33400d)) * 31) + this.f33401e.hashCode()) * 31) + this.f33402f.hashCode()) * 31) + Integer.hashCode(this.f33403g)) * 31) + this.f33404h.hashCode()) * 31) + this.f33405i.hashCode()) * 31) + Float.hashCode(this.f33406j)) * 31) + Long.hashCode(this.f33407k)) * 31) + this.f33408l.hashCode()) * 31) + this.f33409m.hashCode();
    }

    @NotNull
    public final String i() {
        return this.f33401e;
    }

    @NotNull
    public final String j() {
        return this.f33402f;
    }

    public final float k() {
        return this.f33406j;
    }

    public final boolean l() {
        return this.f33400d;
    }

    @NotNull
    public String toString() {
        return "DeviceInfo(manufacturer=" + this.f33397a + ", model=" + this.f33398b + ", hwVersion=" + this.f33399c + ", isTablet=" + this.f33400d + ", os=" + this.f33401e + ", osVersion=" + this.f33402f + ", apiLevel=" + this.f33403g + ", language=" + this.f33404h + ", mobileCarrier=" + this.f33405i + ", screenDensity=" + this.f33406j + ", dbtMs=" + this.f33407k + ", hardware=" + this.f33408l + ", brand=" + this.f33409m + ')';
    }
}
