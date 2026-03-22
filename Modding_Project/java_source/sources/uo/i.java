package uo;

import androidx.annotation.Nullable;
import ao.f0;
import cn.b0;
import cn.m0;
/* compiled from: XingFrame.java */
/* loaded from: classes8.dex */
final class i {

    /* renamed from: a  reason: collision with root package name */
    public final f0.a f68553a;

    /* renamed from: b  reason: collision with root package name */
    public final long f68554b;

    /* renamed from: c  reason: collision with root package name */
    public final long f68555c;

    /* renamed from: d  reason: collision with root package name */
    public final int f68556d;

    /* renamed from: e  reason: collision with root package name */
    public final int f68557e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final long[] f68558f;

    private i(f0.a aVar, long j10, long j11, @Nullable long[] jArr, int i10, int i11) {
        this.f68553a = new f0.a(aVar);
        this.f68554b = j10;
        this.f68555c = j11;
        this.f68558f = jArr;
        this.f68556d = i10;
        this.f68557e = i11;
    }

    public static i b(f0.a aVar, b0 b0Var) {
        int i10;
        long j10;
        long[] jArr;
        int i11;
        int i12;
        int q10 = b0Var.q();
        if ((q10 & 1) != 0) {
            i10 = b0Var.L();
        } else {
            i10 = -1;
        }
        if ((q10 & 2) != 0) {
            j10 = b0Var.J();
        } else {
            j10 = -1;
        }
        long j11 = j10;
        if ((q10 & 4) == 4) {
            long[] jArr2 = new long[100];
            for (int i13 = 0; i13 < 100; i13++) {
                jArr2[i13] = b0Var.H();
            }
            jArr = jArr2;
        } else {
            jArr = null;
        }
        if ((q10 & 8) != 0) {
            b0Var.X(4);
        }
        if (b0Var.a() >= 24) {
            b0Var.X(21);
            int K = b0Var.K();
            i12 = K & 4095;
            i11 = (16773120 & K) >> 12;
        } else {
            i11 = -1;
            i12 = -1;
        }
        return new i(aVar, i10, j11, jArr, i11, i12);
    }

    public long a() {
        long j10 = this.f68554b;
        if (j10 != -1 && j10 != 0) {
            f0.a aVar = this.f68553a;
            return m0.e1((j10 * aVar.f1834g) - 1, aVar.f1831d);
        }
        return -9223372036854775807L;
    }
}
