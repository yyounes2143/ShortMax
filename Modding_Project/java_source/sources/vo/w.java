package vo;

import cn.m0;
/* compiled from: TrackSampleTable.java */
/* loaded from: classes8.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public final t f69358a;

    /* renamed from: b  reason: collision with root package name */
    public final int f69359b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f69360c;

    /* renamed from: d  reason: collision with root package name */
    public final int[] f69361d;

    /* renamed from: e  reason: collision with root package name */
    public final int f69362e;

    /* renamed from: f  reason: collision with root package name */
    public final long[] f69363f;

    /* renamed from: g  reason: collision with root package name */
    public final int[] f69364g;

    /* renamed from: h  reason: collision with root package name */
    public final long f69365h;

    public w(t tVar, long[] jArr, int[] iArr, int i10, long[] jArr2, int[] iArr2, long j10) {
        boolean z10;
        boolean z11;
        if (iArr.length == jArr2.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        if (jArr.length == jArr2.length) {
            z11 = true;
        } else {
            z11 = false;
        }
        cn.a.a(z11);
        cn.a.a(iArr2.length == jArr2.length);
        this.f69358a = tVar;
        this.f69360c = jArr;
        this.f69361d = iArr;
        this.f69362e = i10;
        this.f69363f = jArr2;
        this.f69364g = iArr2;
        this.f69365h = j10;
        this.f69359b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public int a(long j10) {
        for (int h10 = m0.h(this.f69363f, j10, true, false); h10 >= 0; h10--) {
            if ((this.f69364g[h10] & 1) != 0) {
                return h10;
            }
        }
        return -1;
    }

    public int b(long j10) {
        for (int d10 = m0.d(this.f69363f, j10, true, false); d10 < this.f69363f.length; d10++) {
            if ((this.f69364g[d10] & 1) != 0) {
                return d10;
            }
        }
        return -1;
    }
}
