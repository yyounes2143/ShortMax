package t5;

import b7.s0;
import java.util.Arrays;
import t5.z;
/* compiled from: ChunkIndex.java */
/* loaded from: classes4.dex */
public final class c implements z {

    /* renamed from: a  reason: collision with root package name */
    public final int f67104a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f67105b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f67106c;

    /* renamed from: d  reason: collision with root package name */
    public final long[] f67107d;

    /* renamed from: e  reason: collision with root package name */
    public final long[] f67108e;

    /* renamed from: f  reason: collision with root package name */
    private final long f67109f;

    public c(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f67105b = iArr;
        this.f67106c = jArr;
        this.f67107d = jArr2;
        this.f67108e = jArr3;
        int length = iArr.length;
        this.f67104a = length;
        if (length > 0) {
            this.f67109f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f67109f = 0L;
        }
    }

    public int b(long j10) {
        return s0.i(this.f67108e, j10, true, true);
    }

    @Override // t5.z
    public long getDurationUs() {
        return this.f67109f;
    }

    @Override // t5.z
    public z.a getSeekPoints(long j10) {
        int b10 = b(j10);
        a0 a0Var = new a0(this.f67108e[b10], this.f67106c[b10]);
        if (a0Var.f67098a < j10 && b10 != this.f67104a - 1) {
            int i10 = b10 + 1;
            return new z.a(a0Var, new a0(this.f67108e[i10], this.f67106c[i10]));
        }
        return new z.a(a0Var);
    }

    @Override // t5.z
    public boolean isSeekable() {
        return true;
    }

    public String toString() {
        return "ChunkIndex(length=" + this.f67104a + ", sizes=" + Arrays.toString(this.f67105b) + ", offsets=" + Arrays.toString(this.f67106c) + ", timeUs=" + Arrays.toString(this.f67108e) + ", durationsUs=" + Arrays.toString(this.f67107d) + ")";
    }
}
