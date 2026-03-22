package com.google.common.primitives;

import com.applovin.shadow.okhttp3.HttpUrl;
import h7.k;
import java.io.Serializable;
import java.util.Arrays;
/* loaded from: classes5.dex */
public final class ImmutableIntArray implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final ImmutableIntArray f20296d = new ImmutableIntArray(new int[0]);

    /* renamed from: a  reason: collision with root package name */
    private final int[] f20297a;

    /* renamed from: b  reason: collision with root package name */
    private final transient int f20298b;

    /* renamed from: c  reason: collision with root package name */
    private final int f20299c;

    private ImmutableIntArray(int[] iArr) {
        this(iArr, 0, iArr.length);
    }

    public static ImmutableIntArray b(int[] iArr) {
        if (iArr.length == 0) {
            return f20296d;
        }
        return new ImmutableIntArray(Arrays.copyOf(iArr, iArr.length));
    }

    private boolean f() {
        if (this.f20298b <= 0 && this.f20299c >= this.f20297a.length) {
            return false;
        }
        return true;
    }

    public static ImmutableIntArray h() {
        return f20296d;
    }

    public int d(int i10) {
        k.h(i10, g());
        return this.f20297a[this.f20298b + i10];
    }

    public boolean e() {
        if (this.f20299c == this.f20298b) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableIntArray)) {
            return false;
        }
        ImmutableIntArray immutableIntArray = (ImmutableIntArray) obj;
        if (g() != immutableIntArray.g()) {
            return false;
        }
        for (int i10 = 0; i10 < g(); i10++) {
            if (d(i10) != immutableIntArray.d(i10)) {
                return false;
            }
        }
        return true;
    }

    public int g() {
        return this.f20299c - this.f20298b;
    }

    public int hashCode() {
        int i10 = 1;
        for (int i11 = this.f20298b; i11 < this.f20299c; i11++) {
            i10 = (i10 * 31) + Ints.h(this.f20297a[i11]);
        }
        return i10;
    }

    public int[] i() {
        return Arrays.copyOfRange(this.f20297a, this.f20298b, this.f20299c);
    }

    public ImmutableIntArray j() {
        if (f()) {
            return new ImmutableIntArray(i());
        }
        return this;
    }

    Object readResolve() {
        if (e()) {
            return f20296d;
        }
        return this;
    }

    public String toString() {
        if (e()) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb2 = new StringBuilder(g() * 5);
        sb2.append('[');
        sb2.append(this.f20297a[this.f20298b]);
        int i10 = this.f20298b;
        while (true) {
            i10++;
            if (i10 < this.f20299c) {
                sb2.append(", ");
                sb2.append(this.f20297a[i10]);
            } else {
                sb2.append(']');
                return sb2.toString();
            }
        }
    }

    Object writeReplace() {
        return j();
    }

    private ImmutableIntArray(int[] iArr, int i10, int i11) {
        this.f20297a = iArr;
        this.f20298b = i10;
        this.f20299c = i11;
    }
}
