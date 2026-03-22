package v5;

import b7.s0;
import java.io.IOException;
import java.util.Arrays;
import t5.a0;
import t5.b0;
import t5.l;
import t5.z;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChunkReader.java */
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    protected final b0 f68702a;

    /* renamed from: b  reason: collision with root package name */
    private final int f68703b;

    /* renamed from: c  reason: collision with root package name */
    private final int f68704c;

    /* renamed from: d  reason: collision with root package name */
    private final long f68705d;

    /* renamed from: e  reason: collision with root package name */
    private final int f68706e;

    /* renamed from: f  reason: collision with root package name */
    private int f68707f;

    /* renamed from: g  reason: collision with root package name */
    private int f68708g;

    /* renamed from: h  reason: collision with root package name */
    private int f68709h;

    /* renamed from: i  reason: collision with root package name */
    private int f68710i;

    /* renamed from: j  reason: collision with root package name */
    private int f68711j;

    /* renamed from: k  reason: collision with root package name */
    private long[] f68712k;

    /* renamed from: l  reason: collision with root package name */
    private int[] f68713l;

    public e(int i10, int i11, long j10, int i12, b0 b0Var) {
        int i13;
        int i14;
        boolean z10 = true;
        if (i11 != 1 && i11 != 2) {
            z10 = false;
        }
        b7.a.a(z10);
        this.f68705d = j10;
        this.f68706e = i12;
        this.f68702a = b0Var;
        if (i11 == 2) {
            i13 = 1667497984;
        } else {
            i13 = 1651965952;
        }
        this.f68703b = d(i10, i13);
        if (i11 == 2) {
            i14 = d(i10, 1650720768);
        } else {
            i14 = -1;
        }
        this.f68704c = i14;
        this.f68712k = new long[512];
        this.f68713l = new int[512];
    }

    private static int d(int i10, int i11) {
        return (((i10 % 10) + 48) << 8) | ((i10 / 10) + 48) | i11;
    }

    private long e(int i10) {
        return (this.f68705d * i10) / this.f68706e;
    }

    private a0 h(int i10) {
        return new a0(this.f68713l[i10] * g(), this.f68712k[i10]);
    }

    public void a() {
        this.f68709h++;
    }

    public void b(long j10) {
        if (this.f68711j == this.f68713l.length) {
            long[] jArr = this.f68712k;
            this.f68712k = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
            int[] iArr = this.f68713l;
            this.f68713l = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
        }
        long[] jArr2 = this.f68712k;
        int i10 = this.f68711j;
        jArr2[i10] = j10;
        this.f68713l[i10] = this.f68710i;
        this.f68711j = i10 + 1;
    }

    public void c() {
        this.f68712k = Arrays.copyOf(this.f68712k, this.f68711j);
        this.f68713l = Arrays.copyOf(this.f68713l, this.f68711j);
    }

    public long f() {
        return e(this.f68709h);
    }

    public long g() {
        return e(1);
    }

    public z.a i(long j10) {
        int g10 = (int) (j10 / g());
        int h10 = s0.h(this.f68713l, g10, true, true);
        if (this.f68713l[h10] == g10) {
            return new z.a(h(h10));
        }
        a0 h11 = h(h10);
        int i10 = h10 + 1;
        if (i10 < this.f68712k.length) {
            return new z.a(h11, h(i10));
        }
        return new z.a(h11);
    }

    public boolean j(int i10) {
        if (this.f68703b != i10 && this.f68704c != i10) {
            return false;
        }
        return true;
    }

    public void k() {
        this.f68710i++;
    }

    public boolean l() {
        if (Arrays.binarySearch(this.f68713l, this.f68709h) >= 0) {
            return true;
        }
        return false;
    }

    public boolean m(l lVar) throws IOException {
        int i10 = this.f68708g;
        boolean z10 = false;
        int f10 = i10 - this.f68702a.f(lVar, i10, false);
        this.f68708g = f10;
        if (f10 == 0) {
            z10 = true;
        }
        if (z10) {
            if (this.f68707f > 0) {
                b0 b0Var = this.f68702a;
                long f11 = f();
                boolean l10 = l();
                b0Var.e(f11, l10 ? 1 : 0, this.f68707f, 0, null);
            }
            a();
        }
        return z10;
    }

    public void n(int i10) {
        this.f68707f = i10;
        this.f68708g = i10;
    }

    public void o(long j10) {
        if (this.f68711j == 0) {
            this.f68709h = 0;
            return;
        }
        this.f68709h = this.f68713l[s0.i(this.f68712k, j10, true, true)];
    }
}
