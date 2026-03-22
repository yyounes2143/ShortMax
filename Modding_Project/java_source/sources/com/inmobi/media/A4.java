package com.inmobi.media;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class A4 {

    /* renamed from: a  reason: collision with root package name */
    public final float f23456a;

    /* renamed from: b  reason: collision with root package name */
    public final B4 f23457b;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f23458c;

    public A4(float f10, B4 b42, ArrayList arrayList) {
        this.f23456a = f10;
        this.f23457b = b42;
        this.f23458c = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof A4)) {
            return false;
        }
        A4 a42 = (A4) obj;
        if (Float.compare(this.f23456a, a42.f23456a) == 0 && Intrinsics.areEqual(this.f23457b, a42.f23457b) && Intrinsics.areEqual(this.f23458c, a42.f23458c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = Float.hashCode(this.f23456a) * 31;
        B4 b42 = this.f23457b;
        int i10 = 0;
        if (b42 == null) {
            hashCode = 0;
        } else {
            hashCode = b42.hashCode();
        }
        int i11 = (hashCode2 + hashCode) * 31;
        ArrayList arrayList = this.f23458c;
        if (arrayList != null) {
            i10 = arrayList.hashCode();
        }
        return i11 + i10;
    }

    public final String toString() {
        return "ExposureMetrics(exposedPercentage=" + this.f23456a + ", visibleRectangle=" + this.f23457b + ", occlusionRectangles=" + this.f23458c + ')';
    }
}
