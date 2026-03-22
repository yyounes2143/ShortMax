package wn;

import androidx.annotation.Nullable;
import cn.m0;
import java.util.Arrays;
import wn.b;
/* compiled from: DefaultAllocator.java */
/* loaded from: classes8.dex */
public final class g implements b {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f69985a;

    /* renamed from: b  reason: collision with root package name */
    private final int f69986b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f69987c;

    /* renamed from: d  reason: collision with root package name */
    private int f69988d;

    /* renamed from: e  reason: collision with root package name */
    private int f69989e;

    /* renamed from: f  reason: collision with root package name */
    private int f69990f;

    /* renamed from: g  reason: collision with root package name */
    private a[] f69991g;

    public g(boolean z10, int i10) {
        this(z10, i10, 0);
    }

    @Override // wn.b
    public synchronized void a(a aVar) {
        a[] aVarArr = this.f69991g;
        int i10 = this.f69990f;
        this.f69990f = i10 + 1;
        aVarArr[i10] = aVar;
        this.f69989e--;
        notifyAll();
    }

    @Override // wn.b
    public synchronized a allocate() {
        a aVar;
        try {
            this.f69989e++;
            int i10 = this.f69990f;
            if (i10 > 0) {
                a[] aVarArr = this.f69991g;
                int i11 = i10 - 1;
                this.f69990f = i11;
                aVar = (a) cn.a.e(aVarArr[i11]);
                this.f69991g[this.f69990f] = null;
            } else {
                aVar = new a(new byte[this.f69986b], 0);
                int i12 = this.f69989e;
                a[] aVarArr2 = this.f69991g;
                if (i12 > aVarArr2.length) {
                    this.f69991g = (a[]) Arrays.copyOf(aVarArr2, aVarArr2.length * 2);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return aVar;
    }

    @Override // wn.b
    public synchronized void b(@Nullable b.a aVar) {
        while (aVar != null) {
            try {
                a[] aVarArr = this.f69991g;
                int i10 = this.f69990f;
                this.f69990f = i10 + 1;
                aVarArr[i10] = aVar.a();
                this.f69989e--;
                aVar = aVar.next();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        notifyAll();
    }

    public synchronized int c() {
        return this.f69989e * this.f69986b;
    }

    public synchronized void d() {
        if (this.f69985a) {
            e(0);
        }
    }

    public synchronized void e(int i10) {
        boolean z10;
        if (i10 < this.f69988d) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f69988d = i10;
        if (z10) {
            trim();
        }
    }

    @Override // wn.b
    public int getIndividualAllocationLength() {
        return this.f69986b;
    }

    @Override // wn.b
    public synchronized void trim() {
        try {
            int i10 = 0;
            int max = Math.max(0, m0.k(this.f69988d, this.f69986b) - this.f69989e);
            int i11 = this.f69990f;
            if (max >= i11) {
                return;
            }
            if (this.f69987c != null) {
                int i12 = i11 - 1;
                while (i10 <= i12) {
                    a aVar = (a) cn.a.e(this.f69991g[i10]);
                    if (aVar.f69975a == this.f69987c) {
                        i10++;
                    } else {
                        a aVar2 = (a) cn.a.e(this.f69991g[i12]);
                        if (aVar2.f69975a != this.f69987c) {
                            i12--;
                        } else {
                            a[] aVarArr = this.f69991g;
                            aVarArr[i10] = aVar2;
                            aVarArr[i12] = aVar;
                            i12--;
                            i10++;
                        }
                    }
                }
                max = Math.max(max, i10);
                if (max >= this.f69990f) {
                    return;
                }
            }
            Arrays.fill(this.f69991g, max, this.f69990f, (Object) null);
            this.f69990f = max;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public g(boolean z10, int i10, int i11) {
        cn.a.a(i10 > 0);
        cn.a.a(i11 >= 0);
        this.f69985a = z10;
        this.f69986b = i10;
        this.f69990f = i11;
        this.f69991g = new a[i11 + 100];
        if (i11 > 0) {
            this.f69987c = new byte[i11 * i10];
            for (int i12 = 0; i12 < i11; i12++) {
                this.f69991g[i12] = new a(this.f69987c, i12 * i10);
            }
            return;
        }
        this.f69987c = null;
    }
}
