package ao;

import ao.j0;
import ao.y;
/* compiled from: FlacSeekTableSeekMap.java */
/* loaded from: classes8.dex */
public final class x implements j0 {

    /* renamed from: a  reason: collision with root package name */
    private final y f1949a;

    /* renamed from: b  reason: collision with root package name */
    private final long f1950b;

    public x(y yVar, long j10) {
        this.f1949a = yVar;
        this.f1950b = j10;
    }

    private k0 b(long j10, long j11) {
        return new k0((j10 * 1000000) / this.f1949a.f1955e, this.f1950b + j11);
    }

    @Override // ao.j0
    public long getDurationUs() {
        return this.f1949a.f();
    }

    @Override // ao.j0
    public j0.a getSeekPoints(long j10) {
        long j11;
        cn.a.i(this.f1949a.f1961k);
        y yVar = this.f1949a;
        y.a aVar = yVar.f1961k;
        long[] jArr = aVar.f1963a;
        long[] jArr2 = aVar.f1964b;
        int h10 = cn.m0.h(jArr, yVar.i(j10), true, false);
        long j12 = 0;
        if (h10 == -1) {
            j11 = 0;
        } else {
            j11 = jArr[h10];
        }
        if (h10 != -1) {
            j12 = jArr2[h10];
        }
        k0 b10 = b(j11, j12);
        if (b10.f1861a != j10 && h10 != jArr.length - 1) {
            int i10 = h10 + 1;
            return new j0.a(b10, b(jArr[i10], jArr2[i10]));
        }
        return new j0.a(b10);
    }

    @Override // ao.j0
    public boolean isSeekable() {
        return true;
    }
}
