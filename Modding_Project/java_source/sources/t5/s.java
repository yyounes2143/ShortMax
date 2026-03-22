package t5;

import b7.s0;
import t5.t;
import t5.z;
/* compiled from: FlacSeekTableSeekMap.java */
/* loaded from: classes4.dex */
public final class s implements z {

    /* renamed from: a  reason: collision with root package name */
    private final t f67179a;

    /* renamed from: b  reason: collision with root package name */
    private final long f67180b;

    public s(t tVar, long j10) {
        this.f67179a = tVar;
        this.f67180b = j10;
    }

    private a0 b(long j10, long j11) {
        return new a0((j10 * 1000000) / this.f67179a.f67185e, this.f67180b + j11);
    }

    @Override // t5.z
    public long getDurationUs() {
        return this.f67179a.f();
    }

    @Override // t5.z
    public z.a getSeekPoints(long j10) {
        long j11;
        b7.a.i(this.f67179a.f67191k);
        t tVar = this.f67179a;
        t.a aVar = tVar.f67191k;
        long[] jArr = aVar.f67193a;
        long[] jArr2 = aVar.f67194b;
        int i10 = s0.i(jArr, tVar.i(j10), true, false);
        long j12 = 0;
        if (i10 == -1) {
            j11 = 0;
        } else {
            j11 = jArr[i10];
        }
        if (i10 != -1) {
            j12 = jArr2[i10];
        }
        a0 b10 = b(j11, j12);
        if (b10.f67098a != j10 && i10 != jArr.length - 1) {
            int i11 = i10 + 1;
            return new z.a(b10, b(jArr[i11], jArr2[i11]));
        }
        return new z.a(b10);
    }

    @Override // t5.z
    public boolean isSeekable() {
        return true;
    }
}
