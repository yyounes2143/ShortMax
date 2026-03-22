package b4;

import android.util.SparseIntArray;
/* compiled from: PoolParams.java */
/* loaded from: classes3.dex */
public class e0 {

    /* renamed from: a  reason: collision with root package name */
    public final int f2211a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2212b;

    /* renamed from: c  reason: collision with root package name */
    public final SparseIntArray f2213c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2214d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2215e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2216f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2217g;

    public e0(int i10, int i11, SparseIntArray sparseIntArray) {
        this(i10, i11, sparseIntArray, 0, Integer.MAX_VALUE, -1);
    }

    public e0(int i10, int i11, SparseIntArray sparseIntArray, int i12, int i13, int i14) {
        k2.h.i(i10 >= 0 && i11 >= i10);
        this.f2212b = i10;
        this.f2211a = i11;
        this.f2213c = sparseIntArray;
        this.f2214d = i12;
        this.f2215e = i13;
        this.f2217g = i14;
    }
}
