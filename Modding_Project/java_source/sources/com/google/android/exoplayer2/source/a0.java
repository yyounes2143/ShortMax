package com.google.android.exoplayer2.source;

import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.h;
import com.google.android.exoplayer2.drm.i;
import com.google.android.exoplayer2.source.a0;
import com.google.android.exoplayer2.v0;
import java.io.IOException;
import t5.b0;
/* compiled from: SampleQueue.java */
/* loaded from: classes4.dex */
public class a0 implements t5.b0 {
    @Nullable
    private v0 A;
    @Nullable
    private v0 B;
    private int C;
    private boolean D;
    private boolean E;
    private long F;
    private boolean G;

    /* renamed from: a  reason: collision with root package name */
    private final y f18220a;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.i f18223d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final h.a f18224e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private d f18225f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private v0 f18226g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private DrmSession f18227h;

    /* renamed from: p  reason: collision with root package name */
    private int f18235p;

    /* renamed from: q  reason: collision with root package name */
    private int f18236q;

    /* renamed from: r  reason: collision with root package name */
    private int f18237r;

    /* renamed from: s  reason: collision with root package name */
    private int f18238s;

    /* renamed from: w  reason: collision with root package name */
    private boolean f18242w;

    /* renamed from: z  reason: collision with root package name */
    private boolean f18245z;

    /* renamed from: b  reason: collision with root package name */
    private final b f18221b = new b();

    /* renamed from: i  reason: collision with root package name */
    private int f18228i = 1000;

    /* renamed from: j  reason: collision with root package name */
    private int[] f18229j = new int[1000];

    /* renamed from: k  reason: collision with root package name */
    private long[] f18230k = new long[1000];

    /* renamed from: n  reason: collision with root package name */
    private long[] f18233n = new long[1000];

    /* renamed from: m  reason: collision with root package name */
    private int[] f18232m = new int[1000];

    /* renamed from: l  reason: collision with root package name */
    private int[] f18231l = new int[1000];

    /* renamed from: o  reason: collision with root package name */
    private b0.a[] f18234o = new b0.a[1000];

    /* renamed from: c  reason: collision with root package name */
    private final e0<c> f18222c = new e0<>(new b7.h() { // from class: com.google.android.exoplayer2.source.z
        @Override // b7.h
        public final void accept(Object obj) {
            a0.E((a0.c) obj);
        }
    });

    /* renamed from: t  reason: collision with root package name */
    private long f18239t = Long.MIN_VALUE;

    /* renamed from: u  reason: collision with root package name */
    private long f18240u = Long.MIN_VALUE;

    /* renamed from: v  reason: collision with root package name */
    private long f18241v = Long.MIN_VALUE;

    /* renamed from: y  reason: collision with root package name */
    private boolean f18244y = true;

    /* renamed from: x  reason: collision with root package name */
    private boolean f18243x = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SampleQueue.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public int f18246a;

        /* renamed from: b  reason: collision with root package name */
        public long f18247b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public b0.a f18248c;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SampleQueue.java */
    /* loaded from: classes4.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final v0 f18249a;

        /* renamed from: b  reason: collision with root package name */
        public final i.b f18250b;

        private c(v0 v0Var, i.b bVar) {
            this.f18249a = v0Var;
            this.f18250b = bVar;
        }
    }

    /* compiled from: SampleQueue.java */
    /* loaded from: classes4.dex */
    public interface d {
        void b(v0 v0Var);
    }

    protected a0(a7.b bVar, @Nullable com.google.android.exoplayer2.drm.i iVar, @Nullable h.a aVar) {
        this.f18223d = iVar;
        this.f18224e = aVar;
        this.f18220a = new y(bVar);
    }

    private boolean B() {
        if (this.f18238s != this.f18235p) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E(c cVar) {
        cVar.f18250b.release();
    }

    private boolean F(int i10) {
        DrmSession drmSession = this.f18227h;
        if (drmSession != null && drmSession.getState() != 4 && ((this.f18232m[i10] & 1073741824) != 0 || !this.f18227h.a())) {
            return false;
        }
        return true;
    }

    private void H(v0 v0Var, o5.b0 b0Var) {
        boolean z10;
        DrmInitData drmInitData;
        v0 v0Var2;
        v0 v0Var3 = this.f18226g;
        if (v0Var3 == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            drmInitData = null;
        } else {
            drmInitData = v0Var3.f19160o;
        }
        this.f18226g = v0Var;
        DrmInitData drmInitData2 = v0Var.f19160o;
        com.google.android.exoplayer2.drm.i iVar = this.f18223d;
        if (iVar != null) {
            v0Var2 = v0Var.c(iVar.d(v0Var));
        } else {
            v0Var2 = v0Var;
        }
        b0Var.f63093b = v0Var2;
        b0Var.f63092a = this.f18227h;
        if (this.f18223d == null) {
            return;
        }
        if (!z10 && s0.c(drmInitData, drmInitData2)) {
            return;
        }
        DrmSession drmSession = this.f18227h;
        DrmSession b10 = this.f18223d.b(this.f18224e, v0Var);
        this.f18227h = b10;
        b0Var.f63092a = b10;
        if (drmSession != null) {
            drmSession.e(this.f18224e);
        }
    }

    private synchronized int I(o5.b0 b0Var, DecoderInputBuffer decoderInputBuffer, boolean z10, boolean z11, b bVar) {
        try {
            decoderInputBuffer.f17474d = false;
            if (!B()) {
                if (!z11 && !this.f18242w) {
                    v0 v0Var = this.B;
                    if (v0Var == null || (!z10 && v0Var == this.f18226g)) {
                        return -3;
                    }
                    H((v0) b7.a.e(v0Var), b0Var);
                    return -5;
                }
                decoderInputBuffer.k(4);
                return -4;
            }
            v0 v0Var2 = this.f18222c.e(w()).f18249a;
            if (!z10 && v0Var2 == this.f18226g) {
                int x10 = x(this.f18238s);
                if (!F(x10)) {
                    decoderInputBuffer.f17474d = true;
                    return -3;
                }
                decoderInputBuffer.k(this.f18232m[x10]);
                long j10 = this.f18233n[x10];
                decoderInputBuffer.f17475e = j10;
                if (j10 < this.f18239t) {
                    decoderInputBuffer.a(Integer.MIN_VALUE);
                }
                bVar.f18246a = this.f18231l[x10];
                bVar.f18247b = this.f18230k[x10];
                bVar.f18248c = this.f18234o[x10];
                return -4;
            }
            H(v0Var2, b0Var);
            return -5;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void M() {
        DrmSession drmSession = this.f18227h;
        if (drmSession != null) {
            drmSession.e(this.f18224e);
            this.f18227h = null;
            this.f18226g = null;
        }
    }

    private synchronized void P() {
        this.f18238s = 0;
        this.f18220a.n();
    }

    private synchronized boolean S(v0 v0Var) {
        try {
            this.f18244y = false;
            if (s0.c(v0Var, this.B)) {
                return false;
            }
            if (!this.f18222c.g() && this.f18222c.f().f18249a.equals(v0Var)) {
                this.B = this.f18222c.f().f18249a;
            } else {
                this.B = v0Var;
            }
            v0 v0Var2 = this.B;
            this.D = b7.u.a(v0Var2.f19157l, v0Var2.f19154i);
            this.E = false;
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized boolean h(long j10) {
        boolean z10 = false;
        if (this.f18235p == 0) {
            if (j10 > this.f18240u) {
                z10 = true;
            }
            return z10;
        } else if (u() >= j10) {
            return false;
        } else {
            q(this.f18236q + j(j10));
            return true;
        }
    }

    private synchronized void i(long j10, int i10, long j11, int i11, @Nullable b0.a aVar) {
        boolean z10;
        i.b bVar;
        int x10;
        boolean z11;
        try {
            int i12 = this.f18235p;
            if (i12 > 0) {
                if (this.f18230k[x(i12 - 1)] + this.f18231l[x10] <= j11) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                b7.a.a(z11);
            }
            if ((536870912 & i10) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f18242w = z10;
            this.f18241v = Math.max(this.f18241v, j10);
            int x11 = x(this.f18235p);
            this.f18233n[x11] = j10;
            this.f18230k[x11] = j11;
            this.f18231l[x11] = i11;
            this.f18232m[x11] = i10;
            this.f18234o[x11] = aVar;
            this.f18229j[x11] = this.C;
            if (this.f18222c.g() || !this.f18222c.f().f18249a.equals(this.B)) {
                com.google.android.exoplayer2.drm.i iVar = this.f18223d;
                if (iVar != null) {
                    bVar = iVar.c(this.f18224e, this.B);
                } else {
                    bVar = i.b.f17587a;
                }
                this.f18222c.a(A(), new c((v0) b7.a.e(this.B), bVar));
            }
            int i13 = this.f18235p + 1;
            this.f18235p = i13;
            int i14 = this.f18228i;
            if (i13 == i14) {
                int i15 = i14 + 1000;
                int[] iArr = new int[i15];
                long[] jArr = new long[i15];
                long[] jArr2 = new long[i15];
                int[] iArr2 = new int[i15];
                int[] iArr3 = new int[i15];
                b0.a[] aVarArr = new b0.a[i15];
                int i16 = this.f18237r;
                int i17 = i14 - i16;
                System.arraycopy(this.f18230k, i16, jArr, 0, i17);
                System.arraycopy(this.f18233n, this.f18237r, jArr2, 0, i17);
                System.arraycopy(this.f18232m, this.f18237r, iArr2, 0, i17);
                System.arraycopy(this.f18231l, this.f18237r, iArr3, 0, i17);
                System.arraycopy(this.f18234o, this.f18237r, aVarArr, 0, i17);
                System.arraycopy(this.f18229j, this.f18237r, iArr, 0, i17);
                int i18 = this.f18237r;
                System.arraycopy(this.f18230k, 0, jArr, i17, i18);
                System.arraycopy(this.f18233n, 0, jArr2, i17, i18);
                System.arraycopy(this.f18232m, 0, iArr2, i17, i18);
                System.arraycopy(this.f18231l, 0, iArr3, i17, i18);
                System.arraycopy(this.f18234o, 0, aVarArr, i17, i18);
                System.arraycopy(this.f18229j, 0, iArr, i17, i18);
                this.f18230k = jArr;
                this.f18233n = jArr2;
                this.f18232m = iArr2;
                this.f18231l = iArr3;
                this.f18234o = aVarArr;
                this.f18229j = iArr;
                this.f18237r = 0;
                this.f18228i = i15;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private int j(long j10) {
        int i10 = this.f18235p;
        int x10 = x(i10 - 1);
        while (i10 > this.f18238s && this.f18233n[x10] >= j10) {
            i10--;
            x10--;
            if (x10 == -1) {
                x10 = this.f18228i - 1;
            }
        }
        return i10;
    }

    public static a0 k(a7.b bVar, com.google.android.exoplayer2.drm.i iVar, h.a aVar) {
        return new a0(bVar, (com.google.android.exoplayer2.drm.i) b7.a.e(iVar), (h.a) b7.a.e(aVar));
    }

    private synchronized long l(long j10, boolean z10, boolean z11) {
        int i10;
        try {
            int i11 = this.f18235p;
            if (i11 != 0) {
                long[] jArr = this.f18233n;
                int i12 = this.f18237r;
                if (j10 >= jArr[i12]) {
                    if (z11 && (i10 = this.f18238s) != i11) {
                        i11 = i10 + 1;
                    }
                    int r10 = r(i12, i11, j10, z10);
                    if (r10 == -1) {
                        return -1L;
                    }
                    return n(r10);
                }
            }
            return -1L;
        } finally {
        }
    }

    private synchronized long m() {
        int i10 = this.f18235p;
        if (i10 == 0) {
            return -1L;
        }
        return n(i10);
    }

    @GuardedBy("this")
    private long n(int i10) {
        int i11;
        this.f18240u = Math.max(this.f18240u, v(i10));
        this.f18235p -= i10;
        int i12 = this.f18236q + i10;
        this.f18236q = i12;
        int i13 = this.f18237r + i10;
        this.f18237r = i13;
        int i14 = this.f18228i;
        if (i13 >= i14) {
            this.f18237r = i13 - i14;
        }
        int i15 = this.f18238s - i10;
        this.f18238s = i15;
        if (i15 < 0) {
            this.f18238s = 0;
        }
        this.f18222c.d(i12);
        if (this.f18235p == 0) {
            int i16 = this.f18237r;
            if (i16 == 0) {
                i16 = this.f18228i;
            }
            return this.f18230k[i16 - 1] + this.f18231l[i11];
        }
        return this.f18230k[this.f18237r];
    }

    private long q(int i10) {
        boolean z10;
        int x10;
        int A = A() - i10;
        boolean z11 = false;
        if (A >= 0 && A <= this.f18235p - this.f18238s) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        int i11 = this.f18235p - A;
        this.f18235p = i11;
        this.f18241v = Math.max(this.f18240u, v(i11));
        if (A == 0 && this.f18242w) {
            z11 = true;
        }
        this.f18242w = z11;
        this.f18222c.c(i10);
        int i12 = this.f18235p;
        if (i12 != 0) {
            return this.f18230k[x(i12 - 1)] + this.f18231l[x10];
        }
        return 0L;
    }

    private int r(int i10, int i11, long j10, boolean z10) {
        int i12 = -1;
        for (int i13 = 0; i13 < i11; i13++) {
            long j11 = this.f18233n[i10];
            if (j11 <= j10) {
                if (!z10 || (this.f18232m[i10] & 1) != 0) {
                    if (j11 == j10) {
                        return i13;
                    }
                    i12 = i13;
                }
                i10++;
                if (i10 == this.f18228i) {
                    i10 = 0;
                }
            } else {
                return i12;
            }
        }
        return i12;
    }

    private long v(int i10) {
        long j10 = Long.MIN_VALUE;
        if (i10 == 0) {
            return Long.MIN_VALUE;
        }
        int x10 = x(i10 - 1);
        for (int i11 = 0; i11 < i10; i11++) {
            j10 = Math.max(j10, this.f18233n[x10]);
            if ((this.f18232m[x10] & 1) != 0) {
                break;
            }
            x10--;
            if (x10 == -1) {
                x10 = this.f18228i - 1;
            }
        }
        return j10;
    }

    private int x(int i10) {
        int i11 = this.f18237r + i10;
        int i12 = this.f18228i;
        if (i11 >= i12) {
            return i11 - i12;
        }
        return i11;
    }

    public final int A() {
        return this.f18236q + this.f18235p;
    }

    public final synchronized boolean C() {
        return this.f18242w;
    }

    @CallSuper
    public synchronized boolean D(boolean z10) {
        v0 v0Var;
        boolean z11 = true;
        if (!B()) {
            if (!z10 && !this.f18242w && ((v0Var = this.B) == null || v0Var == this.f18226g)) {
                z11 = false;
            }
            return z11;
        } else if (this.f18222c.e(w()).f18249a != this.f18226g) {
            return true;
        } else {
            return F(x(this.f18238s));
        }
    }

    @CallSuper
    public void G() throws IOException {
        DrmSession drmSession = this.f18227h;
        if (drmSession != null && drmSession.getState() == 1) {
            throw ((DrmSession.DrmSessionException) b7.a.e(this.f18227h.getError()));
        }
    }

    @CallSuper
    public void J() {
        p();
        M();
    }

    @CallSuper
    public int K(o5.b0 b0Var, DecoderInputBuffer decoderInputBuffer, int i10, boolean z10) {
        boolean z11;
        boolean z12 = false;
        if ((i10 & 2) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        int I = I(b0Var, decoderInputBuffer, z11, z10, this.f18221b);
        if (I == -4 && !decoderInputBuffer.h()) {
            if ((i10 & 1) != 0) {
                z12 = true;
            }
            if ((i10 & 4) == 0) {
                if (z12) {
                    this.f18220a.e(decoderInputBuffer, this.f18221b);
                } else {
                    this.f18220a.l(decoderInputBuffer, this.f18221b);
                }
            }
            if (!z12) {
                this.f18238s++;
            }
        }
        return I;
    }

    @CallSuper
    public void L() {
        O(true);
        M();
    }

    public final void N() {
        O(false);
    }

    @CallSuper
    public void O(boolean z10) {
        this.f18220a.m();
        this.f18235p = 0;
        this.f18236q = 0;
        this.f18237r = 0;
        this.f18238s = 0;
        this.f18243x = true;
        this.f18239t = Long.MIN_VALUE;
        this.f18240u = Long.MIN_VALUE;
        this.f18241v = Long.MIN_VALUE;
        this.f18242w = false;
        this.f18222c.b();
        if (z10) {
            this.A = null;
            this.B = null;
            this.f18244y = true;
        }
    }

    public final synchronized boolean Q(long j10, boolean z10) {
        P();
        int x10 = x(this.f18238s);
        if (B() && j10 >= this.f18233n[x10] && (j10 <= this.f18241v || z10)) {
            int r10 = r(x10, this.f18235p - this.f18238s, j10, true);
            if (r10 == -1) {
                return false;
            }
            this.f18239t = j10;
            this.f18238s += r10;
            return true;
        }
        return false;
    }

    public final void R(long j10) {
        this.f18239t = j10;
    }

    public final void T(@Nullable d dVar) {
        this.f18225f = dVar;
    }

    public final synchronized void U(int i10) {
        boolean z10;
        if (i10 >= 0) {
            try {
                if (this.f18238s + i10 <= this.f18235p) {
                    z10 = true;
                    b7.a.a(z10);
                    this.f18238s += i10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        z10 = false;
        b7.a.a(z10);
        this.f18238s += i10;
    }

    @Override // t5.b0
    public final void b(v0 v0Var) {
        v0 s10 = s(v0Var);
        this.f18245z = false;
        this.A = v0Var;
        boolean S = S(s10);
        d dVar = this.f18225f;
        if (dVar != null && S) {
            dVar.b(s10);
        }
    }

    @Override // t5.b0
    public final void c(g0 g0Var, int i10, int i11) {
        this.f18220a.p(g0Var, i10);
    }

    @Override // t5.b0
    public final int d(a7.f fVar, int i10, boolean z10, int i11) throws IOException {
        return this.f18220a.o(fVar, i10, z10);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0059  */
    @Override // t5.b0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e(long r12, int r14, int r15, int r16, @androidx.annotation.Nullable t5.b0.a r17) {
        /*
            r11 = this;
            r8 = r11
            boolean r0 = r8.f18245z
            if (r0 == 0) goto L10
            com.google.android.exoplayer2.v0 r0 = r8.A
            java.lang.Object r0 = b7.a.i(r0)
            com.google.android.exoplayer2.v0 r0 = (com.google.android.exoplayer2.v0) r0
            r11.b(r0)
        L10:
            r0 = r14 & 1
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L18
            r3 = r2
            goto L19
        L18:
            r3 = r1
        L19:
            boolean r4 = r8.f18243x
            if (r4 == 0) goto L22
            if (r3 != 0) goto L20
            return
        L20:
            r8.f18243x = r1
        L22:
            long r4 = r8.F
            long r4 = r4 + r12
            boolean r6 = r8.D
            if (r6 == 0) goto L54
            long r6 = r8.f18239t
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 >= 0) goto L30
            return
        L30:
            if (r0 != 0) goto L54
            boolean r0 = r8.E
            if (r0 != 0) goto L50
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r6 = "Overriding unexpected non-sync sample for format: "
            r0.append(r6)
            com.google.android.exoplayer2.v0 r6 = r8.B
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            java.lang.String r6 = "SampleQueue"
            b7.q.i(r6, r0)
            r8.E = r2
        L50:
            r0 = r14 | 1
            r6 = r0
            goto L55
        L54:
            r6 = r14
        L55:
            boolean r0 = r8.G
            if (r0 == 0) goto L66
            if (r3 == 0) goto L65
            boolean r0 = r11.h(r4)
            if (r0 != 0) goto L62
            goto L65
        L62:
            r8.G = r1
            goto L66
        L65:
            return
        L66:
            com.google.android.exoplayer2.source.y r0 = r8.f18220a
            long r0 = r0.d()
            r7 = r15
            long r2 = (long) r7
            long r0 = r0 - r2
            r2 = r16
            long r2 = (long) r2
            long r9 = r0 - r2
            r0 = r11
            r1 = r4
            r3 = r6
            r4 = r9
            r6 = r15
            r7 = r17
            r0.i(r1, r3, r4, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.a0.e(long, int, int, int, t5.b0$a):void");
    }

    public final void o(long j10, boolean z10, boolean z11) {
        this.f18220a.b(l(j10, z10, z11));
    }

    public final void p() {
        this.f18220a.b(m());
    }

    @CallSuper
    protected v0 s(v0 v0Var) {
        if (this.F != 0 && v0Var.f19161p != Long.MAX_VALUE) {
            return v0Var.b().i0(v0Var.f19161p + this.F).E();
        }
        return v0Var;
    }

    public final synchronized long t() {
        return this.f18241v;
    }

    public final synchronized long u() {
        return Math.max(this.f18240u, v(this.f18238s));
    }

    public final int w() {
        return this.f18236q + this.f18238s;
    }

    public final synchronized int y(long j10, boolean z10) {
        int x10 = x(this.f18238s);
        if (B() && j10 >= this.f18233n[x10]) {
            if (j10 > this.f18241v && z10) {
                return this.f18235p - this.f18238s;
            }
            int r10 = r(x10, this.f18235p - this.f18238s, j10, true);
            if (r10 == -1) {
                return 0;
            }
            return r10;
        }
        return 0;
    }

    @Nullable
    public final synchronized v0 z() {
        v0 v0Var;
        if (this.f18244y) {
            v0Var = null;
        } else {
            v0Var = this.B;
        }
        return v0Var;
    }
}
