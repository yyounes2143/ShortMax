package a7;

import a7.b;
import androidx.annotation.Nullable;
import b7.s0;
import java.util.Arrays;
/* compiled from: DefaultAllocator.java */
/* loaded from: classes4.dex */
public final class l implements b {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f219a;

    /* renamed from: b  reason: collision with root package name */
    private final int f220b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f221c;

    /* renamed from: d  reason: collision with root package name */
    private int f222d;

    /* renamed from: e  reason: collision with root package name */
    private int f223e;

    /* renamed from: f  reason: collision with root package name */
    private int f224f;

    /* renamed from: g  reason: collision with root package name */
    private a[] f225g;

    public l(boolean z10, int i10) {
        this(z10, i10, 0);
    }

    @Override // a7.b
    public synchronized void a(a aVar) {
        a[] aVarArr = this.f225g;
        int i10 = this.f224f;
        this.f224f = i10 + 1;
        aVarArr[i10] = aVar;
        this.f223e--;
        notifyAll();
    }

    @Override // a7.b
    public synchronized a allocate() {
        a aVar;
        try {
            this.f223e++;
            int i10 = this.f224f;
            if (i10 > 0) {
                a[] aVarArr = this.f225g;
                int i11 = i10 - 1;
                this.f224f = i11;
                aVar = (a) b7.a.e(aVarArr[i11]);
                this.f225g[this.f224f] = null;
            } else {
                aVar = new a(new byte[this.f220b], 0);
                int i12 = this.f223e;
                a[] aVarArr2 = this.f225g;
                if (i12 > aVarArr2.length) {
                    this.f225g = (a[]) Arrays.copyOf(aVarArr2, aVarArr2.length * 2);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return aVar;
    }

    @Override // a7.b
    public synchronized void b(@Nullable b.a aVar) {
        while (aVar != null) {
            try {
                a[] aVarArr = this.f225g;
                int i10 = this.f224f;
                this.f224f = i10 + 1;
                aVarArr[i10] = aVar.a();
                this.f223e--;
                aVar = aVar.next();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        notifyAll();
    }

    public synchronized int c() {
        return this.f223e * this.f220b;
    }

    public synchronized void d() {
        if (this.f219a) {
            e(0);
        }
    }

    public synchronized void e(int i10) {
        boolean z10;
        if (i10 < this.f222d) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f222d = i10;
        if (z10) {
            trim();
        }
    }

    @Override // a7.b
    public int getIndividualAllocationLength() {
        return this.f220b;
    }

    @Override // a7.b
    public synchronized void trim() {
        try {
            int i10 = 0;
            int max = Math.max(0, s0.l(this.f222d, this.f220b) - this.f223e);
            int i11 = this.f224f;
            if (max >= i11) {
                return;
            }
            if (this.f221c != null) {
                int i12 = i11 - 1;
                while (i10 <= i12) {
                    a aVar = (a) b7.a.e(this.f225g[i10]);
                    if (aVar.f174a == this.f221c) {
                        i10++;
                    } else {
                        a aVar2 = (a) b7.a.e(this.f225g[i12]);
                        if (aVar2.f174a != this.f221c) {
                            i12--;
                        } else {
                            a[] aVarArr = this.f225g;
                            aVarArr[i10] = aVar2;
                            aVarArr[i12] = aVar;
                            i12--;
                            i10++;
                        }
                    }
                }
                max = Math.max(max, i10);
                if (max >= this.f224f) {
                    return;
                }
            }
            Arrays.fill(this.f225g, max, this.f224f, (Object) null);
            this.f224f = max;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public l(boolean z10, int i10, int i11) {
        b7.a.a(i10 > 0);
        b7.a.a(i11 >= 0);
        this.f219a = z10;
        this.f220b = i10;
        this.f224f = i11;
        this.f225g = new a[i11 + 100];
        if (i11 > 0) {
            this.f221c = new byte[i11 * i10];
            for (int i12 = 0; i12 < i11; i12++) {
                this.f225g[i12] = new a(this.f221c, i12 * i10);
            }
            return;
        }
        this.f221c = null;
    }
}
