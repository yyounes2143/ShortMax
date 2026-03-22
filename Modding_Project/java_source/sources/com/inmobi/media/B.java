package com.inmobi.media;

import android.graphics.RectF;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class B {

    /* renamed from: a  reason: collision with root package name */
    public final RectF f23490a;

    /* renamed from: b  reason: collision with root package name */
    public final RectF f23491b;

    /* renamed from: c  reason: collision with root package name */
    public final RectF f23492c;

    /* renamed from: d  reason: collision with root package name */
    public final RectF f23493d;

    public B(RectF rectF, RectF rectF2, RectF rectF3, RectF rectF4) {
        this.f23490a = rectF;
        this.f23491b = rectF2;
        this.f23492c = rectF3;
        this.f23493d = rectF4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof B)) {
            return false;
        }
        B b10 = (B) obj;
        if (Intrinsics.areEqual(this.f23490a, b10.f23490a) && Intrinsics.areEqual(this.f23491b, b10.f23491b) && Intrinsics.areEqual(this.f23492c, b10.f23492c) && Intrinsics.areEqual(this.f23493d, b10.f23493d)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        RectF rectF = this.f23490a;
        int i10 = 0;
        if (rectF == null) {
            hashCode = 0;
        } else {
            hashCode = rectF.hashCode();
        }
        int i11 = hashCode * 31;
        RectF rectF2 = this.f23491b;
        if (rectF2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = rectF2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        RectF rectF3 = this.f23492c;
        if (rectF3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = rectF3.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        RectF rectF4 = this.f23493d;
        if (rectF4 != null) {
            i10 = rectF4.hashCode();
        }
        return i13 + i10;
    }

    public final String toString() {
        return "CurvedEdges(topLeft=" + this.f23490a + ", topRight=" + this.f23491b + ", bottomLeft=" + this.f23492c + ", bottomRight=" + this.f23493d + ')';
    }
}
