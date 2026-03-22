package b6;

import b7.s0;
/* compiled from: TrackSampleTable.java */
/* loaded from: classes4.dex */
final class r {

    /* renamed from: a  reason: collision with root package name */
    public final o f2426a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2427b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f2428c;

    /* renamed from: d  reason: collision with root package name */
    public final int[] f2429d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2430e;

    /* renamed from: f  reason: collision with root package name */
    public final long[] f2431f;

    /* renamed from: g  reason: collision with root package name */
    public final int[] f2432g;

    /* renamed from: h  reason: collision with root package name */
    public final long f2433h;

    public r(o oVar, long[] jArr, int[] iArr, int i10, long[] jArr2, int[] iArr2, long j10) {
        boolean z10;
        boolean z11;
        if (iArr.length == jArr2.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        if (jArr.length == jArr2.length) {
            z11 = true;
        } else {
            z11 = false;
        }
        b7.a.a(z11);
        b7.a.a(iArr2.length == jArr2.length);
        this.f2426a = oVar;
        this.f2428c = jArr;
        this.f2429d = iArr;
        this.f2430e = i10;
        this.f2431f = jArr2;
        this.f2432g = iArr2;
        this.f2433h = j10;
        this.f2427b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public int a(long j10) {
        for (int i10 = s0.i(this.f2431f, j10, true, false); i10 >= 0; i10--) {
            if ((this.f2432g[i10] & 1) != 0) {
                return i10;
            }
        }
        return -1;
    }

    public int b(long j10) {
        for (int e10 = s0.e(this.f2431f, j10, true, false); e10 < this.f2431f.length; e10++) {
            if ((this.f2432g[e10] & 1) != 0) {
                return e10;
            }
        }
        return -1;
    }
}
