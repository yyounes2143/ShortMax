package com.inmobi.media;

import android.graphics.RectF;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class C {

    /* renamed from: a  reason: collision with root package name */
    public final RectF f23525a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList f23526b;

    /* renamed from: c  reason: collision with root package name */
    public final int f23527c;

    /* renamed from: d  reason: collision with root package name */
    public final int f23528d;

    public C(RectF visibleRect, ArrayList obstructions, int i10, int i11) {
        Intrinsics.checkNotNullParameter(visibleRect, "visibleRect");
        Intrinsics.checkNotNullParameter(obstructions, "obstructions");
        this.f23525a = visibleRect;
        this.f23526b = obstructions;
        this.f23527c = i10;
        this.f23528d = i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C)) {
            return false;
        }
        C c10 = (C) obj;
        if (Intrinsics.areEqual(this.f23525a, c10.f23525a) && Intrinsics.areEqual(this.f23526b, c10.f23526b) && this.f23527c == c10.f23527c && this.f23528d == c10.f23528d) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f23526b.hashCode();
        int hashCode2 = Integer.hashCode(this.f23527c);
        return Integer.hashCode(this.f23528d) + ((hashCode2 + ((hashCode + (this.f23525a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ExposureInputData(visibleRect=" + this.f23525a + ", obstructions=" + this.f23526b + ", screenWidth=" + this.f23527c + ", screenHeight=" + this.f23528d + ')';
    }
}
