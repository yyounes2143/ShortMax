package com.inmobi.media;
/* loaded from: classes5.dex */
public final class B4 {

    /* renamed from: a  reason: collision with root package name */
    public final float f23507a;

    /* renamed from: b  reason: collision with root package name */
    public final float f23508b;

    /* renamed from: c  reason: collision with root package name */
    public final int f23509c;

    /* renamed from: d  reason: collision with root package name */
    public final int f23510d;

    public B4(float f10, float f11, int i10, int i11) {
        this.f23507a = f10;
        this.f23508b = f11;
        this.f23509c = i10;
        this.f23510d = i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof B4)) {
            return false;
        }
        B4 b42 = (B4) obj;
        if (Float.compare(this.f23507a, b42.f23507a) == 0 && Float.compare(this.f23508b, b42.f23508b) == 0 && this.f23509c == b42.f23509c && this.f23510d == b42.f23510d) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Float.hashCode(this.f23508b);
        int hashCode2 = Integer.hashCode(this.f23509c);
        return Integer.hashCode(this.f23510d) + ((hashCode2 + ((hashCode + (Float.hashCode(this.f23507a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ExposureRectangle(x=" + this.f23507a + ", y=" + this.f23508b + ", width=" + this.f23509c + ", height=" + this.f23510d + ')';
    }
}
