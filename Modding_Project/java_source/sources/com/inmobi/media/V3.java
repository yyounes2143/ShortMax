package com.inmobi.media;
/* loaded from: classes5.dex */
public final class V3 {

    /* renamed from: a  reason: collision with root package name */
    public final int f24297a;

    /* renamed from: b  reason: collision with root package name */
    public final int f24298b;

    /* renamed from: c  reason: collision with root package name */
    public final float f24299c;

    public V3(int i10, float f10, int i11) {
        this.f24297a = i10;
        this.f24298b = i11;
        this.f24299c = f10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof V3)) {
            return false;
        }
        V3 v32 = (V3) obj;
        if (this.f24297a == v32.f24297a && this.f24298b == v32.f24298b && Float.compare(this.f24299c, v32.f24299c) == 0) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Integer.hashCode(this.f24298b);
        return Float.hashCode(this.f24299c) + ((hashCode + (Integer.hashCode(this.f24297a) * 31)) * 31);
    }

    public final String toString() {
        return "DisplayProperties(width=" + this.f24297a + ", height=" + this.f24298b + ", density=" + this.f24299c + ')';
    }
}
