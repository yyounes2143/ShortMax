package com.moloco.sdk.internal.services;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final int f33340a;

    /* renamed from: b  reason: collision with root package name */
    public final float f33341b;

    /* renamed from: c  reason: collision with root package name */
    public final int f33342c;

    /* renamed from: d  reason: collision with root package name */
    public final float f33343d;

    /* renamed from: e  reason: collision with root package name */
    public final float f33344e;

    /* renamed from: f  reason: collision with root package name */
    public final int f33345f;

    /* renamed from: g  reason: collision with root package name */
    public final float f33346g;

    /* renamed from: h  reason: collision with root package name */
    public final float f33347h;

    public e(int i10, float f10, int i11, float f11, float f12, int i12, float f13, float f14) {
        this.f33340a = i10;
        this.f33341b = f10;
        this.f33342c = i11;
        this.f33343d = f11;
        this.f33344e = f12;
        this.f33345f = i12;
        this.f33346g = f13;
        this.f33347h = f14;
    }

    public final float a() {
        return this.f33344e;
    }

    public final int b() {
        return this.f33345f;
    }

    public final float c() {
        return this.f33343d;
    }

    public final int d() {
        return this.f33342c;
    }

    public final float e() {
        return this.f33341b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f33340a == eVar.f33340a && Float.compare(this.f33341b, eVar.f33341b) == 0 && this.f33342c == eVar.f33342c && Float.compare(this.f33343d, eVar.f33343d) == 0 && Float.compare(this.f33344e, eVar.f33344e) == 0 && this.f33345f == eVar.f33345f && Float.compare(this.f33346g, eVar.f33346g) == 0 && Float.compare(this.f33347h, eVar.f33347h) == 0) {
            return true;
        }
        return false;
    }

    public final int f() {
        return this.f33340a;
    }

    public final float g() {
        return this.f33346g;
    }

    public final float h() {
        return this.f33347h;
    }

    public int hashCode() {
        return (((((((((((((Integer.hashCode(this.f33340a) * 31) + Float.hashCode(this.f33341b)) * 31) + Integer.hashCode(this.f33342c)) * 31) + Float.hashCode(this.f33343d)) * 31) + Float.hashCode(this.f33344e)) * 31) + Integer.hashCode(this.f33345f)) * 31) + Float.hashCode(this.f33346g)) * 31) + Float.hashCode(this.f33347h);
    }

    @NotNull
    public String toString() {
        return "ScreenInfo(screenWidthPx=" + this.f33340a + ", screenWidthDp=" + this.f33341b + ", screenHeightPx=" + this.f33342c + ", screenHeightDp=" + this.f33343d + ", density=" + this.f33344e + ", dpi=" + this.f33345f + ", xdpi=" + this.f33346g + ", ydpi=" + this.f33347h + ')';
    }
}
