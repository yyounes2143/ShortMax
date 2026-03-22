package com.moloco.sdk.common_adapter_internal;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final int f31992a;

    /* renamed from: b  reason: collision with root package name */
    public final int f31993b;

    /* renamed from: c  reason: collision with root package name */
    public final float f31994c;

    /* renamed from: d  reason: collision with root package name */
    public final float f31995d;

    /* renamed from: e  reason: collision with root package name */
    public final int f31996e;

    /* renamed from: f  reason: collision with root package name */
    public final float f31997f;

    public b(int i10, int i11, float f10, float f11, int i12, float f12) {
        this.f31992a = i10;
        this.f31993b = i11;
        this.f31994c = f10;
        this.f31995d = f11;
        this.f31996e = i12;
        this.f31997f = f12;
    }

    public final int a() {
        return this.f31996e;
    }

    public final float b() {
        return this.f31995d;
    }

    public final int c() {
        return this.f31993b;
    }

    public final float d() {
        return this.f31997f;
    }

    public final float e() {
        return this.f31994c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f31992a == bVar.f31992a && this.f31993b == bVar.f31993b && Float.compare(this.f31994c, bVar.f31994c) == 0 && Float.compare(this.f31995d, bVar.f31995d) == 0 && this.f31996e == bVar.f31996e && Float.compare(this.f31997f, bVar.f31997f) == 0) {
            return true;
        }
        return false;
    }

    public final int f() {
        return this.f31992a;
    }

    public int hashCode() {
        return (((((((((Integer.hashCode(this.f31992a) * 31) + Integer.hashCode(this.f31993b)) * 31) + Float.hashCode(this.f31994c)) * 31) + Float.hashCode(this.f31995d)) * 31) + Integer.hashCode(this.f31996e)) * 31) + Float.hashCode(this.f31997f);
    }

    @NotNull
    public String toString() {
        return "ScreenData(widthPx=" + this.f31992a + ", heightPx=" + this.f31993b + ", widthDp=" + this.f31994c + ", heightDp=" + this.f31995d + ", dpi=" + this.f31996e + ", pxRatio=" + this.f31997f + ')';
    }
}
