package io.bidmachine.media3.exoplayer.source;

import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import ao.o0;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.drm.DrmSession;
import io.bidmachine.media3.exoplayer.drm.h;
import io.bidmachine.media3.exoplayer.drm.i;
import io.bidmachine.media3.exoplayer.source.f0;
import java.io.IOException;
import java.util.Objects;
/* compiled from: SampleQueue.java */
/* loaded from: classes8.dex */
public class f0 implements o0 {
    @Nullable
    private io.bidmachine.media3.common.a A;
    @Nullable
    private io.bidmachine.media3.common.a B;
    private long C;
    private boolean E;
    private long F;
    private boolean G;

    /* renamed from: a  reason: collision with root package name */
    private final d0 f56842a;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.drm.i f56845d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final h.a f56846e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private d f56847f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private io.bidmachine.media3.common.a f56848g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private DrmSession f56849h;

    /* renamed from: p  reason: collision with root package name */
    private int f56857p;

    /* renamed from: q  reason: collision with root package name */
    private int f56858q;

    /* renamed from: r  reason: collision with root package name */
    private int f56859r;

    /* renamed from: s  reason: collision with root package name */
    private int f56860s;

    /* renamed from: w  reason: collision with root package name */
    private boolean f56864w;

    /* renamed from: z  reason: collision with root package name */
    private boolean f56867z;

    /* renamed from: b  reason: collision with root package name */
    private final b f56843b = new b();

    /* renamed from: i  reason: collision with root package name */
    private int f56850i = 1000;

    /* renamed from: j  reason: collision with root package name */
    private long[] f56851j = new long[1000];

    /* renamed from: k  reason: collision with root package name */
    private long[] f56852k = new long[1000];

    /* renamed from: n  reason: collision with root package name */
    private long[] f56855n = new long[1000];

    /* renamed from: m  reason: collision with root package name */
    private int[] f56854m = new int[1000];

    /* renamed from: l  reason: collision with root package name */
    private int[] f56853l = new int[1000];

    /* renamed from: o  reason: collision with root package name */
    private o0.a[] f56856o = new o0.a[1000];

    /* renamed from: c  reason: collision with root package name */
    private final j0<c> f56844c = new j0<>(new cn.l() { // from class: io.bidmachine.media3.exoplayer.source.e0
        @Override // cn.l
        public final void accept(Object obj) {
            f0.O((f0.c) obj);
        }
    });

    /* renamed from: t  reason: collision with root package name */
    private long f56861t = Long.MIN_VALUE;

    /* renamed from: u  reason: collision with root package name */
    private long f56862u = Long.MIN_VALUE;

    /* renamed from: v  reason: collision with root package name */
    private long f56863v = Long.MIN_VALUE;

    /* renamed from: y  reason: collision with root package name */
    private boolean f56866y = true;

    /* renamed from: x  reason: collision with root package name */
    private boolean f56865x = true;
    private boolean D = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SampleQueue.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public int f56868a;

        /* renamed from: b  reason: collision with root package name */
        public long f56869b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public o0.a f56870c;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SampleQueue.java */
    /* loaded from: classes8.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final io.bidmachine.media3.common.a f56871a;

        /* renamed from: b  reason: collision with root package name */
        public final i.b f56872b;

        private c(io.bidmachine.media3.common.a aVar, i.b bVar) {
            this.f56871a = aVar;
            this.f56872b = bVar;
        }
    }

    /* compiled from: SampleQueue.java */
    /* loaded from: classes8.dex */
    public interface d {
        void c(io.bidmachine.media3.common.a aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public f0(wn.b bVar, @Nullable io.bidmachine.media3.exoplayer.drm.i iVar, @Nullable h.a aVar) {
        this.f56845d = iVar;
        this.f56846e = aVar;
        this.f56842a = new d0(bVar);
    }

    private long E(int i10) {
        long j10 = Long.MIN_VALUE;
        if (i10 == 0) {
            return Long.MIN_VALUE;
        }
        int G = G(i10 - 1);
        for (int i11 = 0; i11 < i10; i11++) {
            j10 = Math.max(j10, this.f56855n[G]);
            if ((this.f56854m[G] & 1) != 0) {
                break;
            }
            G--;
            if (G == -1) {
                G = this.f56850i - 1;
            }
        }
        return j10;
    }

    private int G(int i10) {
        int i11 = this.f56859r + i10;
        int i12 = this.f56850i;
        if (i11 >= i12) {
            return i11 - i12;
        }
        return i11;
    }

    private boolean K() {
        if (this.f56860s != this.f56857p) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void O(c cVar) {
        cVar.f56872b.release();
    }

    private boolean P(int i10) {
        DrmSession drmSession = this.f56849h;
        if (drmSession != null && drmSession.getState() != 4 && ((this.f56854m[i10] & 1073741824) != 0 || !this.f56849h.a())) {
            return false;
        }
        return true;
    }

    private void R(io.bidmachine.media3.common.a aVar, gn.c0 c0Var) {
        boolean z10;
        DrmInitData drmInitData;
        io.bidmachine.media3.common.a aVar2;
        io.bidmachine.media3.common.a aVar3 = this.f56848g;
        if (aVar3 == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (aVar3 == null) {
            drmInitData = null;
        } else {
            drmInitData = aVar3.f55178s;
        }
        this.f56848g = aVar;
        DrmInitData drmInitData2 = aVar.f55178s;
        io.bidmachine.media3.exoplayer.drm.i iVar = this.f56845d;
        if (iVar != null) {
            aVar2 = aVar.c(iVar.a(aVar));
        } else {
            aVar2 = aVar;
        }
        c0Var.f52440b = aVar2;
        c0Var.f52439a = this.f56849h;
        if (this.f56845d == null) {
            return;
        }
        if (!z10 && Objects.equals(drmInitData, drmInitData2)) {
            return;
        }
        DrmSession drmSession = this.f56849h;
        DrmSession b10 = this.f56845d.b(this.f56846e, aVar);
        this.f56849h = b10;
        c0Var.f52439a = b10;
        if (drmSession != null) {
            drmSession.f(this.f56846e);
        }
    }

    private synchronized int S(gn.c0 c0Var, DecoderInputBuffer decoderInputBuffer, boolean z10, boolean z11, b bVar) {
        try {
            decoderInputBuffer.f55346e = false;
            if (!K()) {
                if (!z11 && !this.f56864w) {
                    io.bidmachine.media3.common.a aVar = this.B;
                    if (aVar == null || (!z10 && aVar == this.f56848g)) {
                        return -3;
                    }
                    R((io.bidmachine.media3.common.a) cn.a.e(aVar), c0Var);
                    return -5;
                }
                decoderInputBuffer.k(4);
                decoderInputBuffer.f55347f = Long.MIN_VALUE;
                return -4;
            }
            io.bidmachine.media3.common.a aVar2 = this.f56844c.e(F()).f56871a;
            if (!z10 && aVar2 == this.f56848g) {
                int G = G(this.f56860s);
                if (!P(G)) {
                    decoderInputBuffer.f55346e = true;
                    return -3;
                }
                decoderInputBuffer.k(this.f56854m[G]);
                if (this.f56860s == this.f56857p - 1 && (z11 || this.f56864w)) {
                    decoderInputBuffer.a(536870912);
                }
                decoderInputBuffer.f55347f = this.f56855n[G];
                bVar.f56868a = this.f56853l[G];
                bVar.f56869b = this.f56852k[G];
                bVar.f56870c = this.f56856o[G];
                return -4;
            }
            R(aVar2, c0Var);
            return -5;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void X() {
        DrmSession drmSession = this.f56849h;
        if (drmSession != null) {
            drmSession.f(this.f56846e);
            this.f56849h = null;
            this.f56848g = null;
        }
    }

    private synchronized void a0() {
        this.f56860s = 0;
        this.f56842a.o();
    }

    private synchronized boolean f0(io.bidmachine.media3.common.a aVar) {
        try {
            this.f56866y = false;
            if (Objects.equals(aVar, this.B)) {
                return false;
            }
            if (!this.f56844c.g() && this.f56844c.f().f56871a.equals(aVar)) {
                this.B = this.f56844c.f().f56871a;
            } else {
                this.B = aVar;
            }
            boolean z10 = this.D;
            io.bidmachine.media3.common.a aVar2 = this.B;
            this.D = z10 & zm.u.a(aVar2.f55174o, aVar2.f55170k);
            this.E = false;
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized boolean i(long j10) {
        boolean z10 = false;
        if (this.f56857p == 0) {
            if (j10 > this.f56862u) {
                z10 = true;
            }
            return z10;
        } else if (D() >= j10) {
            return false;
        } else {
            v(this.f56858q + k(j10));
            return true;
        }
    }

    private synchronized void j(long j10, int i10, long j11, int i11, @Nullable o0.a aVar) {
        boolean z10;
        i.b bVar;
        int G;
        boolean z11;
        try {
            int i12 = this.f56857p;
            if (i12 > 0) {
                if (this.f56852k[G(i12 - 1)] + this.f56853l[G] <= j11) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                cn.a.a(z11);
            }
            if ((536870912 & i10) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f56864w = z10;
            this.f56863v = Math.max(this.f56863v, j10);
            int G2 = G(this.f56857p);
            this.f56855n[G2] = j10;
            this.f56852k[G2] = j11;
            this.f56853l[G2] = i11;
            this.f56854m[G2] = i10;
            this.f56856o[G2] = aVar;
            this.f56851j[G2] = this.C;
            if (this.f56844c.g() || !this.f56844c.f().f56871a.equals(this.B)) {
                io.bidmachine.media3.common.a aVar2 = (io.bidmachine.media3.common.a) cn.a.e(this.B);
                io.bidmachine.media3.exoplayer.drm.i iVar = this.f56845d;
                if (iVar != null) {
                    bVar = iVar.d(this.f56846e, aVar2);
                } else {
                    bVar = i.b.f55869a;
                }
                this.f56844c.a(J(), new c(aVar2, bVar));
            }
            int i13 = this.f56857p + 1;
            this.f56857p = i13;
            int i14 = this.f56850i;
            if (i13 == i14) {
                int i15 = i14 + 1000;
                long[] jArr = new long[i15];
                long[] jArr2 = new long[i15];
                long[] jArr3 = new long[i15];
                int[] iArr = new int[i15];
                int[] iArr2 = new int[i15];
                o0.a[] aVarArr = new o0.a[i15];
                int i16 = this.f56859r;
                int i17 = i14 - i16;
                System.arraycopy(this.f56852k, i16, jArr2, 0, i17);
                System.arraycopy(this.f56855n, this.f56859r, jArr3, 0, i17);
                System.arraycopy(this.f56854m, this.f56859r, iArr, 0, i17);
                System.arraycopy(this.f56853l, this.f56859r, iArr2, 0, i17);
                System.arraycopy(this.f56856o, this.f56859r, aVarArr, 0, i17);
                System.arraycopy(this.f56851j, this.f56859r, jArr, 0, i17);
                int i18 = this.f56859r;
                System.arraycopy(this.f56852k, 0, jArr2, i17, i18);
                System.arraycopy(this.f56855n, 0, jArr3, i17, i18);
                System.arraycopy(this.f56854m, 0, iArr, i17, i18);
                System.arraycopy(this.f56853l, 0, iArr2, i17, i18);
                System.arraycopy(this.f56856o, 0, aVarArr, i17, i18);
                System.arraycopy(this.f56851j, 0, jArr, i17, i18);
                this.f56852k = jArr2;
                this.f56855n = jArr3;
                this.f56854m = iArr;
                this.f56853l = iArr2;
                this.f56856o = aVarArr;
                this.f56851j = jArr;
                this.f56859r = 0;
                this.f56850i = i15;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private int k(long j10) {
        int i10 = this.f56857p;
        int G = G(i10 - 1);
        while (i10 > this.f56860s && this.f56855n[G] >= j10) {
            i10--;
            G--;
            if (G == -1) {
                G = this.f56850i - 1;
            }
        }
        return i10;
    }

    public static f0 l(wn.b bVar, io.bidmachine.media3.exoplayer.drm.i iVar, h.a aVar) {
        return new f0(bVar, (io.bidmachine.media3.exoplayer.drm.i) cn.a.e(iVar), (h.a) cn.a.e(aVar));
    }

    public static f0 m(wn.b bVar) {
        return new f0(bVar, null, null);
    }

    private synchronized long n(long j10, boolean z10, boolean z11) {
        int i10;
        try {
            int i11 = this.f56857p;
            if (i11 != 0) {
                long[] jArr = this.f56855n;
                int i12 = this.f56859r;
                if (j10 >= jArr[i12]) {
                    if (z11 && (i10 = this.f56860s) != i11) {
                        i11 = i10 + 1;
                    }
                    int y10 = y(i12, i11, j10, z10);
                    if (y10 == -1) {
                        return -1L;
                    }
                    return q(y10);
                }
            }
            return -1L;
        } finally {
        }
    }

    private synchronized long o() {
        int i10 = this.f56857p;
        if (i10 == 0) {
            return -1L;
        }
        return q(i10);
    }

    @GuardedBy("this")
    private long q(int i10) {
        int i11;
        this.f56862u = Math.max(this.f56862u, E(i10));
        this.f56857p -= i10;
        int i12 = this.f56858q + i10;
        this.f56858q = i12;
        int i13 = this.f56859r + i10;
        this.f56859r = i13;
        int i14 = this.f56850i;
        if (i13 >= i14) {
            this.f56859r = i13 - i14;
        }
        int i15 = this.f56860s - i10;
        this.f56860s = i15;
        if (i15 < 0) {
            this.f56860s = 0;
        }
        this.f56844c.d(i12);
        if (this.f56857p == 0) {
            int i16 = this.f56859r;
            if (i16 == 0) {
                i16 = this.f56850i;
            }
            return this.f56852k[i16 - 1] + this.f56853l[i11];
        }
        return this.f56852k[this.f56859r];
    }

    private long v(int i10) {
        boolean z10;
        int G;
        int J = J() - i10;
        boolean z11 = false;
        if (J >= 0 && J <= this.f56857p - this.f56860s) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        int i11 = this.f56857p - J;
        this.f56857p = i11;
        this.f56863v = Math.max(this.f56862u, E(i11));
        if (J == 0 && this.f56864w) {
            z11 = true;
        }
        this.f56864w = z11;
        this.f56844c.c(i10);
        int i12 = this.f56857p;
        if (i12 != 0) {
            return this.f56852k[G(i12 - 1)] + this.f56853l[G];
        }
        return 0L;
    }

    private int x(int i10, int i11, long j10, boolean z10) {
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.f56855n[i10] >= j10) {
                return i12;
            }
            i10++;
            if (i10 == this.f56850i) {
                i10 = 0;
            }
        }
        if (!z10) {
            return -1;
        }
        return i11;
    }

    private int y(int i10, int i11, long j10, boolean z10) {
        int i12 = -1;
        for (int i13 = 0; i13 < i11; i13++) {
            long j11 = this.f56855n[i10];
            if (j11 <= j10) {
                if (!z10 || (this.f56854m[i10] & 1) != 0) {
                    if (j11 == j10) {
                        return i13;
                    }
                    i12 = i13;
                }
                i10++;
                if (i10 == this.f56850i) {
                    i10 = 0;
                }
            } else {
                return i12;
            }
        }
        return i12;
    }

    public final int A() {
        return this.f56858q;
    }

    public final synchronized long B() {
        long j10;
        if (this.f56857p == 0) {
            j10 = Long.MIN_VALUE;
        } else {
            j10 = this.f56855n[this.f56859r];
        }
        return j10;
    }

    public final synchronized long C() {
        return this.f56863v;
    }

    public final synchronized long D() {
        return Math.max(this.f56862u, E(this.f56860s));
    }

    public final int F() {
        return this.f56858q + this.f56860s;
    }

    public final synchronized int H(long j10, boolean z10) {
        int G = G(this.f56860s);
        if (K() && j10 >= this.f56855n[G]) {
            if (j10 > this.f56863v && z10) {
                return this.f56857p - this.f56860s;
            }
            int y10 = y(G, this.f56857p - this.f56860s, j10, true);
            if (y10 == -1) {
                return 0;
            }
            return y10;
        }
        return 0;
    }

    @Nullable
    public final synchronized io.bidmachine.media3.common.a I() {
        io.bidmachine.media3.common.a aVar;
        if (this.f56866y) {
            aVar = null;
        } else {
            aVar = this.B;
        }
        return aVar;
    }

    public final int J() {
        return this.f56858q + this.f56857p;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void L() {
        this.f56867z = true;
    }

    public final synchronized boolean M() {
        return this.f56864w;
    }

    @CallSuper
    public synchronized boolean N(boolean z10) {
        io.bidmachine.media3.common.a aVar;
        boolean z11 = true;
        if (!K()) {
            if (!z10 && !this.f56864w && ((aVar = this.B) == null || aVar == this.f56848g)) {
                z11 = false;
            }
            return z11;
        } else if (this.f56844c.e(F()).f56871a != this.f56848g) {
            return true;
        } else {
            return P(G(this.f56860s));
        }
    }

    @CallSuper
    public void Q() throws IOException {
        DrmSession drmSession = this.f56849h;
        if (drmSession != null && drmSession.getState() == 1) {
            throw ((DrmSession.DrmSessionException) cn.a.e(this.f56849h.getError()));
        }
    }

    public final synchronized long T() {
        long j10;
        try {
            int G = G(this.f56860s);
            if (K()) {
                j10 = this.f56851j[G];
            } else {
                j10 = this.C;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return j10;
    }

    @CallSuper
    public void U() {
        s();
        X();
    }

    @CallSuper
    public int V(gn.c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i10, boolean z10) {
        boolean z11;
        boolean z12 = false;
        if ((i10 & 2) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        int S = S(c0Var, decoderInputBuffer, z11, z10, this.f56843b);
        if (S == -4 && !decoderInputBuffer.f()) {
            if ((i10 & 1) != 0) {
                z12 = true;
            }
            if ((i10 & 4) == 0) {
                if (z12) {
                    this.f56842a.f(decoderInputBuffer, this.f56843b);
                } else {
                    this.f56842a.m(decoderInputBuffer, this.f56843b);
                }
            }
            if (!z12) {
                this.f56860s++;
            }
        }
        return S;
    }

    @CallSuper
    public void W() {
        Z(true);
        X();
    }

    public final void Y() {
        Z(false);
    }

    @CallSuper
    public void Z(boolean z10) {
        this.f56842a.n();
        this.f56857p = 0;
        this.f56858q = 0;
        this.f56859r = 0;
        this.f56860s = 0;
        this.f56865x = true;
        this.f56861t = Long.MIN_VALUE;
        this.f56862u = Long.MIN_VALUE;
        this.f56863v = Long.MIN_VALUE;
        this.f56864w = false;
        this.f56844c.b();
        if (z10) {
            this.A = null;
            this.B = null;
            this.f56866y = true;
            this.D = true;
        }
    }

    public final synchronized boolean b0(int i10) {
        a0();
        int i11 = this.f56858q;
        if (i10 >= i11 && i10 <= this.f56857p + i11) {
            this.f56861t = Long.MIN_VALUE;
            this.f56860s = i10 - i11;
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0059  */
    @Override // ao.o0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(long r12, int r14, int r15, int r16, @androidx.annotation.Nullable ao.o0.a r17) {
        /*
            r11 = this;
            r8 = r11
            boolean r0 = r8.f56867z
            if (r0 == 0) goto L10
            io.bidmachine.media3.common.a r0 = r8.A
            java.lang.Object r0 = cn.a.i(r0)
            io.bidmachine.media3.common.a r0 = (io.bidmachine.media3.common.a) r0
            r11.g(r0)
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
            boolean r4 = r8.f56865x
            if (r4 == 0) goto L22
            if (r3 != 0) goto L20
            return
        L20:
            r8.f56865x = r1
        L22:
            long r4 = r8.F
            long r4 = r4 + r12
            boolean r6 = r8.D
            if (r6 == 0) goto L54
            long r6 = r8.f56861t
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
            io.bidmachine.media3.common.a r6 = r8.B
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            java.lang.String r6 = "SampleQueue"
            cn.r.h(r6, r0)
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
            boolean r0 = r11.i(r4)
            if (r0 != 0) goto L62
            goto L65
        L62:
            r8.G = r1
            goto L66
        L65:
            return
        L66:
            io.bidmachine.media3.exoplayer.source.d0 r0 = r8.f56842a
            long r0 = r0.e()
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
            r0.j(r1, r3, r4, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.source.f0.c(long, int, int, int, ao.o0$a):void");
    }

    public final synchronized boolean c0(long j10, boolean z10) {
        int y10;
        try {
            a0();
            int G = G(this.f56860s);
            if (K() && j10 >= this.f56855n[G] && (j10 <= this.f56863v || z10)) {
                if (this.D) {
                    y10 = x(G, this.f56857p - this.f56860s, j10, z10);
                } else {
                    y10 = y(G, this.f56857p - this.f56860s, j10, true);
                }
                if (y10 == -1) {
                    return false;
                }
                this.f56861t = j10;
                this.f56860s += y10;
                return true;
            }
            return false;
        } finally {
        }
    }

    public final void d0(long j10) {
        if (this.F != j10) {
            this.F = j10;
            L();
        }
    }

    @Override // ao.o0
    public final int e(zm.h hVar, int i10, boolean z10, int i11) throws IOException {
        return this.f56842a.p(hVar, i10, z10);
    }

    public final void e0(long j10) {
        this.f56861t = j10;
    }

    @Override // ao.o0
    public final void f(cn.b0 b0Var, int i10, int i11) {
        this.f56842a.q(b0Var, i10);
    }

    @Override // ao.o0
    public final void g(io.bidmachine.media3.common.a aVar) {
        io.bidmachine.media3.common.a z10 = z(aVar);
        this.f56867z = false;
        this.A = aVar;
        boolean f02 = f0(z10);
        d dVar = this.f56847f;
        if (dVar != null && f02) {
            dVar.c(z10);
        }
    }

    public final void g0(@Nullable d dVar) {
        this.f56847f = dVar;
    }

    public final synchronized void h0(int i10) {
        boolean z10;
        if (i10 >= 0) {
            try {
                if (this.f56860s + i10 <= this.f56857p) {
                    z10 = true;
                    cn.a.a(z10);
                    this.f56860s += i10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        z10 = false;
        cn.a.a(z10);
        this.f56860s += i10;
    }

    public final void i0(long j10) {
        this.C = j10;
    }

    public final void j0() {
        this.G = true;
    }

    public synchronized long p() {
        int i10 = this.f56860s;
        if (i10 == 0) {
            return -1L;
        }
        return q(i10);
    }

    public final void r(long j10, boolean z10, boolean z11) {
        this.f56842a.b(n(j10, z10, z11));
    }

    public final void s() {
        this.f56842a.b(o());
    }

    public final void t() {
        this.f56842a.b(p());
    }

    public final void u(long j10) {
        boolean z10;
        if (this.f56857p == 0) {
            return;
        }
        if (j10 > D()) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        w(this.f56858q + k(j10));
    }

    public final void w(int i10) {
        this.f56842a.c(v(i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public io.bidmachine.media3.common.a z(io.bidmachine.media3.common.a aVar) {
        if (this.F != 0 && aVar.f55179t != Long.MAX_VALUE) {
            return aVar.b().y0(aVar.f55179t + this.F).N();
        }
        return aVar;
    }
}
