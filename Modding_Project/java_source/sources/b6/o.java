package b6;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.v0;
/* compiled from: Track.java */
/* loaded from: classes4.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final int f2392a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2393b;

    /* renamed from: c  reason: collision with root package name */
    public final long f2394c;

    /* renamed from: d  reason: collision with root package name */
    public final long f2395d;

    /* renamed from: e  reason: collision with root package name */
    public final long f2396e;

    /* renamed from: f  reason: collision with root package name */
    public final v0 f2397f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2398g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final long[] f2399h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final long[] f2400i;

    /* renamed from: j  reason: collision with root package name */
    public final int f2401j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final p[] f2402k;

    public o(int i10, int i11, long j10, long j11, long j12, v0 v0Var, int i12, @Nullable p[] pVarArr, int i13, @Nullable long[] jArr, @Nullable long[] jArr2) {
        this.f2392a = i10;
        this.f2393b = i11;
        this.f2394c = j10;
        this.f2395d = j11;
        this.f2396e = j12;
        this.f2397f = v0Var;
        this.f2398g = i12;
        this.f2402k = pVarArr;
        this.f2401j = i13;
        this.f2399h = jArr;
        this.f2400i = jArr2;
    }

    @Nullable
    public p a(int i10) {
        p[] pVarArr = this.f2402k;
        if (pVarArr == null) {
            return null;
        }
        return pVarArr[i10];
    }
}
