package t5;

import b7.s0;
import t5.z;
/* compiled from: IndexSeekMap.java */
/* loaded from: classes4.dex */
public final class x implements z {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f67200a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f67201b;

    /* renamed from: c  reason: collision with root package name */
    private final long f67202c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f67203d;

    public x(long[] jArr, long[] jArr2, long j10) {
        boolean z10;
        boolean z11;
        if (jArr.length == jArr2.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        int length = jArr2.length;
        if (length > 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.f67203d = z11;
        if (z11 && jArr2[0] > 0) {
            int i10 = length + 1;
            long[] jArr3 = new long[i10];
            this.f67200a = jArr3;
            long[] jArr4 = new long[i10];
            this.f67201b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        } else {
            this.f67200a = jArr;
            this.f67201b = jArr2;
        }
        this.f67202c = j10;
    }

    @Override // t5.z
    public long getDurationUs() {
        return this.f67202c;
    }

    @Override // t5.z
    public z.a getSeekPoints(long j10) {
        if (!this.f67203d) {
            return new z.a(a0.f67097c);
        }
        int i10 = s0.i(this.f67201b, j10, true, true);
        a0 a0Var = new a0(this.f67201b[i10], this.f67200a[i10]);
        if (a0Var.f67098a != j10 && i10 != this.f67201b.length - 1) {
            int i11 = i10 + 1;
            return new z.a(a0Var, new a0(this.f67201b[i11], this.f67200a[i11]));
        }
        return new z.a(a0Var);
    }

    @Override // t5.z
    public boolean isSeekable() {
        return this.f67203d;
    }
}
