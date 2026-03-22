package ao;

import ao.j0;
import java.util.Arrays;
/* compiled from: ChunkIndex.java */
/* loaded from: classes8.dex */
public final class g implements j0 {

    /* renamed from: a  reason: collision with root package name */
    public final int f1835a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f1836b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f1837c;

    /* renamed from: d  reason: collision with root package name */
    public final long[] f1838d;

    /* renamed from: e  reason: collision with root package name */
    public final long[] f1839e;

    /* renamed from: f  reason: collision with root package name */
    private final long f1840f;

    public g(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f1836b = iArr;
        this.f1837c = jArr;
        this.f1838d = jArr2;
        this.f1839e = jArr3;
        int length = iArr.length;
        this.f1835a = length;
        if (length > 0) {
            this.f1840f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f1840f = 0L;
        }
    }

    public int b(long j10) {
        return cn.m0.h(this.f1839e, j10, true, true);
    }

    @Override // ao.j0
    public long getDurationUs() {
        return this.f1840f;
    }

    @Override // ao.j0
    public j0.a getSeekPoints(long j10) {
        int b10 = b(j10);
        k0 k0Var = new k0(this.f1839e[b10], this.f1837c[b10]);
        if (k0Var.f1861a < j10 && b10 != this.f1835a - 1) {
            int i10 = b10 + 1;
            return new j0.a(k0Var, new k0(this.f1839e[i10], this.f1837c[i10]));
        }
        return new j0.a(k0Var);
    }

    @Override // ao.j0
    public boolean isSeekable() {
        return true;
    }

    public String toString() {
        return "ChunkIndex(length=" + this.f1835a + ", sizes=" + Arrays.toString(this.f1836b) + ", offsets=" + Arrays.toString(this.f1837c) + ", timeUs=" + Arrays.toString(this.f1839e) + ", durationsUs=" + Arrays.toString(this.f1838d) + ")";
    }
}
