package ao;

import androidx.annotation.Nullable;
import ao.j0;
import java.io.IOException;
/* compiled from: BinarySearchSeeker.java */
/* loaded from: classes8.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    protected final a f1795a;

    /* renamed from: b  reason: collision with root package name */
    protected final f f1796b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    protected c f1797c;

    /* renamed from: d  reason: collision with root package name */
    private final int f1798d;

    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes8.dex */
    public static class a implements j0 {

        /* renamed from: a  reason: collision with root package name */
        private final d f1799a;

        /* renamed from: b  reason: collision with root package name */
        private final long f1800b;

        /* renamed from: c  reason: collision with root package name */
        private final long f1801c;

        /* renamed from: d  reason: collision with root package name */
        private final long f1802d;

        /* renamed from: e  reason: collision with root package name */
        private final long f1803e;

        /* renamed from: f  reason: collision with root package name */
        private final long f1804f;

        /* renamed from: g  reason: collision with root package name */
        private final long f1805g;

        public a(d dVar, long j10, long j11, long j12, long j13, long j14, long j15) {
            this.f1799a = dVar;
            this.f1800b = j10;
            this.f1801c = j11;
            this.f1802d = j12;
            this.f1803e = j13;
            this.f1804f = j14;
            this.f1805g = j15;
        }

        @Override // ao.j0
        public long getDurationUs() {
            return this.f1800b;
        }

        @Override // ao.j0
        public j0.a getSeekPoints(long j10) {
            return new j0.a(new k0(j10, c.h(this.f1799a.a(j10), this.f1801c, this.f1802d, this.f1803e, this.f1804f, this.f1805g)));
        }

        public long h(long j10) {
            return this.f1799a.a(j10);
        }

        @Override // ao.j0
        public boolean isSeekable() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes8.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final long f1806a;

        /* renamed from: b  reason: collision with root package name */
        private final long f1807b;

        /* renamed from: c  reason: collision with root package name */
        private final long f1808c;

        /* renamed from: d  reason: collision with root package name */
        private long f1809d;

        /* renamed from: e  reason: collision with root package name */
        private long f1810e;

        /* renamed from: f  reason: collision with root package name */
        private long f1811f;

        /* renamed from: g  reason: collision with root package name */
        private long f1812g;

        /* renamed from: h  reason: collision with root package name */
        private long f1813h;

        protected c(long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
            this.f1806a = j10;
            this.f1807b = j11;
            this.f1809d = j12;
            this.f1810e = j13;
            this.f1811f = j14;
            this.f1812g = j15;
            this.f1808c = j16;
            this.f1813h = h(j11, j12, j13, j14, j15, j16);
        }

        protected static long h(long j10, long j11, long j12, long j13, long j14, long j15) {
            if (j13 + 1 < j14 && j11 + 1 < j12) {
                long j16 = ((float) (j10 - j11)) * (((float) (j14 - j13)) / ((float) (j12 - j11)));
                return cn.m0.q(((j16 + j13) - j15) - (j16 / 20), j13, j14 - 1);
            }
            return j13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long i() {
            return this.f1812g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long j() {
            return this.f1811f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long k() {
            return this.f1813h;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long l() {
            return this.f1806a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long m() {
            return this.f1807b;
        }

        private void n() {
            this.f1813h = h(this.f1807b, this.f1809d, this.f1810e, this.f1811f, this.f1812g, this.f1808c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(long j10, long j11) {
            this.f1810e = j10;
            this.f1812g = j11;
            n();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p(long j10, long j11) {
            this.f1809d = j10;
            this.f1811f = j11;
            n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes8.dex */
    public interface d {
        long a(long j10);
    }

    /* compiled from: BinarySearchSeeker.java */
    /* renamed from: ao.e$e  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0071e {

        /* renamed from: d  reason: collision with root package name */
        public static final C0071e f1814d = new C0071e(-3, -9223372036854775807L, -1);

        /* renamed from: a  reason: collision with root package name */
        private final int f1815a;

        /* renamed from: b  reason: collision with root package name */
        private final long f1816b;

        /* renamed from: c  reason: collision with root package name */
        private final long f1817c;

        private C0071e(int i10, long j10, long j11) {
            this.f1815a = i10;
            this.f1816b = j10;
            this.f1817c = j11;
        }

        public static C0071e d(long j10, long j11) {
            return new C0071e(-1, j10, j11);
        }

        public static C0071e e(long j10) {
            return new C0071e(0, -9223372036854775807L, j10);
        }

        public static C0071e f(long j10, long j11) {
            return new C0071e(-2, j10, j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e(d dVar, f fVar, long j10, long j11, long j12, long j13, long j14, long j15, int i10) {
        this.f1796b = fVar;
        this.f1798d = i10;
        this.f1795a = new a(dVar, j10, j11, j12, j13, j14, j15);
    }

    protected c a(long j10) {
        return new c(j10, this.f1795a.h(j10), this.f1795a.f1801c, this.f1795a.f1802d, this.f1795a.f1803e, this.f1795a.f1804f, this.f1795a.f1805g);
    }

    public final j0 b() {
        return this.f1795a;
    }

    public int c(q qVar, i0 i0Var) throws IOException {
        while (true) {
            c cVar = (c) cn.a.i(this.f1797c);
            long j10 = cVar.j();
            long i10 = cVar.i();
            long k10 = cVar.k();
            if (i10 - j10 <= this.f1798d) {
                e(false, j10);
                return g(qVar, j10, i0Var);
            } else if (!i(qVar, k10)) {
                return g(qVar, k10, i0Var);
            } else {
                qVar.resetPeekPosition();
                C0071e b10 = this.f1796b.b(qVar, cVar.m());
                int i11 = b10.f1815a;
                if (i11 != -3) {
                    if (i11 == -2) {
                        cVar.p(b10.f1816b, b10.f1817c);
                    } else if (i11 == -1) {
                        cVar.o(b10.f1816b, b10.f1817c);
                    } else if (i11 == 0) {
                        i(qVar, b10.f1817c);
                        e(true, b10.f1817c);
                        return g(qVar, b10.f1817c, i0Var);
                    } else {
                        throw new IllegalStateException("Invalid case");
                    }
                } else {
                    e(false, k10);
                    return g(qVar, k10, i0Var);
                }
            }
        }
    }

    public final boolean d() {
        if (this.f1797c != null) {
            return true;
        }
        return false;
    }

    protected final void e(boolean z10, long j10) {
        this.f1797c = null;
        this.f1796b.a();
        f(z10, j10);
    }

    protected final int g(q qVar, long j10, i0 i0Var) {
        if (j10 == qVar.getPosition()) {
            return 0;
        }
        i0Var.f1855a = j10;
        return 1;
    }

    public final void h(long j10) {
        c cVar = this.f1797c;
        if (cVar != null && cVar.l() == j10) {
            return;
        }
        this.f1797c = a(j10);
    }

    protected final boolean i(q qVar, long j10) throws IOException {
        long position = j10 - qVar.getPosition();
        if (position >= 0 && position <= 262144) {
            qVar.skipFully((int) position);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes8.dex */
    public interface f {
        C0071e b(q qVar, long j10) throws IOException;

        default void a() {
        }
    }

    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes8.dex */
    public static final class b implements d {
        @Override // ao.e.d
        public long a(long j10) {
            return j10;
        }
    }

    protected void f(boolean z10, long j10) {
    }
}
