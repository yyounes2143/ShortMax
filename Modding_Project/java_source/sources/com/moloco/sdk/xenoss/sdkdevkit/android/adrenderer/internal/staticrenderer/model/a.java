package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.model;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f34479a;

    /* renamed from: b  reason: collision with root package name */
    public final int f34480b;

    /* renamed from: c  reason: collision with root package name */
    public final int f34481c;

    /* renamed from: d  reason: collision with root package name */
    public final int f34482d;

    /* renamed from: e  reason: collision with root package name */
    public final int f34483e;

    /* renamed from: f  reason: collision with root package name */
    public final int f34484f;

    public a(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f34479a = i10;
        this.f34480b = i11;
        this.f34481c = i12;
        this.f34482d = i13;
        this.f34483e = i14;
        this.f34484f = i15;
    }

    public final int a() {
        return this.f34483e;
    }

    public final int b() {
        return this.f34484f;
    }

    public final int c() {
        return this.f34479a;
    }

    public final int d() {
        return this.f34480b;
    }

    public final int e() {
        return this.f34481c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f34479a == aVar.f34479a && this.f34480b == aVar.f34480b && this.f34481c == aVar.f34481c && this.f34482d == aVar.f34482d && this.f34483e == aVar.f34483e && this.f34484f == aVar.f34484f) {
            return true;
        }
        return false;
    }

    public final int f() {
        return this.f34482d;
    }

    public int hashCode() {
        return (((((((((Integer.hashCode(this.f34479a) * 31) + Integer.hashCode(this.f34480b)) * 31) + Integer.hashCode(this.f34481c)) * 31) + Integer.hashCode(this.f34482d)) * 31) + Integer.hashCode(this.f34483e)) * 31) + Integer.hashCode(this.f34484f);
    }

    @NotNull
    public String toString() {
        return "AdTouch(viewPositionX=" + this.f34479a + ", viewPositionY=" + this.f34480b + ", viewSizeHeight=" + this.f34481c + ", viewSizeWidth=" + this.f34482d + ", touchX=" + this.f34483e + ", touchY=" + this.f34484f + ')';
    }
}
