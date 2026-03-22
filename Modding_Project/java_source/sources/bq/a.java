package bq;

import android.net.Uri;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import rq.t;
import sq.j;
import tp.r;
/* loaded from: classes8.dex */
public abstract class a implements b {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private d f2798f;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Uri f2801i;

    /* renamed from: k  reason: collision with root package name */
    private long f2803k;

    /* renamed from: g  reason: collision with root package name */
    private volatile boolean f2799g = false;

    /* renamed from: h  reason: collision with root package name */
    private volatile boolean f2800h = false;

    /* renamed from: j  reason: collision with root package name */
    private long f2802j = -1;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final C0081a f2793a = new C0081a(16);
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f2794b = new AtomicBoolean(false);
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f2795c = new AtomicBoolean(false);
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f2796d = new AtomicBoolean(false);
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final AtomicLong f2797e = new AtomicLong(-1);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bq.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class C0081a implements r {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final AtomicBoolean f2804a = new AtomicBoolean(false);
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f2805b = new AtomicInteger(0);

        /* renamed from: c  reason: collision with root package name */
        private final int f2806c;

        public C0081a(int i10) {
            this.f2806c = i10;
        }

        private void a() {
            Long c02 = a.this.c0();
            if (c02 == null) {
                return;
            }
            long g10 = a.this.g();
            if (g10 <= 0) {
                return;
            }
            float longValue = (((float) c02.longValue()) * 100.0f) / ((float) g10);
            int i10 = this.f2805b.get();
            if (longValue > (i10 * 25.0f) - 1.0f) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                if (i10 == 4) {
                                    a.this.q();
                                }
                            } else {
                                a.this.u();
                            }
                        } else {
                            a.this.s();
                        }
                    } else {
                        a.this.r();
                    }
                } else {
                    a.this.t();
                }
                this.f2805b.incrementAndGet();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            this.f2805b.set(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            h();
            this.f2804a.set(true);
            j.k(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h() {
            this.f2804a.set(false);
            j.d(this);
        }

        @Override // yq.m
        public void s() {
            if (!this.f2804a.get()) {
                return;
            }
            if (a.this.i()) {
                a();
            }
            a aVar = a.this;
            aVar.I(aVar.c0());
            j.l(this, this.f2806c);
        }
    }

    private void D(boolean z10, @Nullable Long l10) {
        if (l10 != null) {
            try {
                this.f2803k = l10.longValue();
            } catch (Exception e10) {
                A(e10);
                return;
            }
        }
        if (z10) {
            if (l10 != null) {
                N(l10.longValue());
            }
            c();
            return;
        }
        h();
        Uri uri = this.f2801i;
        if (uri != null) {
            O(uri);
        }
        f();
    }

    @Nullable
    private d d0() {
        return this.f2798f;
    }

    private void w() {
        try {
            this.f2802j = i0();
        } catch (Exception unused) {
        }
    }

    private void z(@Nullable Long l10) {
        this.f2795c.set(true);
        D(j(), l10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void A(@NonNull Throwable th2) {
        B(t.a(th2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void B(@NonNull t tVar) {
        if (this.f2800h) {
            K(tVar);
        } else {
            Q(tVar);
        }
    }

    protected void C(boolean z10) {
        d d02;
        if (!this.f2796d.get() && (d02 = d0()) != null) {
            d02.l(this, z10);
        }
    }

    protected abstract long E();

    /* JADX INFO: Access modifiers changed from: protected */
    public void F(float f10) {
        U(f10);
        S(f10);
    }

    protected void G(long j10) {
        y(j10);
    }

    protected abstract void H(@NonNull Uri uri);

    /* JADX INFO: Access modifiers changed from: protected */
    public void I(@Nullable Long l10) {
        d d02;
        if (l10 != null && this.f2797e.getAndSet(l10.longValue()) != l10.longValue() && !this.f2796d.get() && (d02 = d0()) != null) {
            d02.m(this, l10.longValue());
        }
    }

    protected void J(@NonNull Throwable th2) {
        K(t.a(th2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void K(@NonNull t tVar) {
        if (this.f2796d.get()) {
            return;
        }
        d d02 = d0();
        if (d02 != null) {
            d02.f(this, tVar);
        }
        q();
    }

    protected abstract long L();

    /* JADX INFO: Access modifiers changed from: protected */
    public void M(float f10) {
        x(f10);
    }

    public void N(long j10) {
        try {
            G(j10);
        } catch (Exception unused) {
        }
    }

    protected void O(@NonNull Uri uri) {
        H(uri);
    }

    protected void P(@NonNull Throwable th2) {
        Q(t.a(th2));
    }

    protected void Q(@NonNull t tVar) {
        d d02;
        if (!this.f2796d.get() && (d02 = d0()) != null) {
            d02.g(this, tVar);
        }
    }

    protected abstract float R();

    protected void S(float f10) {
        d d02;
        if (!this.f2796d.get() && (d02 = d0()) != null) {
            d02.n(this, f10);
        }
    }

    public void T(float f10) {
        try {
            M(f10);
        } catch (Exception unused) {
        }
    }

    protected void U(float f10) {
        if (f10 == 0.0f && !this.f2799g) {
            this.f2799g = true;
            C(true);
        } else if (this.f2799g) {
            this.f2799g = false;
            C(false);
        }
    }

    protected abstract boolean V();

    protected abstract boolean W();

    protected abstract void X();

    protected abstract void Y();

    protected abstract void Z();

    @Override // bq.b
    public void a(@NonNull Uri uri) {
        try {
            O(uri);
            this.f2801i = uri;
        } catch (Exception unused) {
        }
    }

    protected abstract void a0();

    @Override // tp.u
    public void b(@Nullable Integer num) {
        T(0.0f);
    }

    protected void b0() {
        this.f2793a.h();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        Y();
    }

    @Nullable
    public Long c0() {
        try {
            return Long.valueOf(h0());
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // bq.b
    public void d(@Nullable d dVar) {
        this.f2798f = dVar;
    }

    @Override // tp.z
    public void e() {
        if (this.f2800h && !this.f2796d.get()) {
            pause();
            N(g());
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e0() {
        l();
        b0();
    }

    protected void f() {
        Z();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f0() {
        o();
        v();
    }

    @Override // bq.b
    public long g() {
        return this.f2802j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g0() {
        w();
        if (this.f2795c.compareAndSet(true, false)) {
            D(true, Long.valueOf(this.f2803k));
        }
        p();
    }

    @Override // bq.b
    public float getVolume() {
        try {
            return j0();
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    protected void h() {
        a0();
    }

    protected long h0() {
        return E();
    }

    public boolean i() {
        try {
            return k0();
        } catch (Exception unused) {
            return false;
        }
    }

    protected long i0() {
        return L();
    }

    public boolean j() {
        try {
            return l0();
        } catch (Exception unused) {
            return false;
        }
    }

    protected float j0() {
        return R();
    }

    @Override // tp.w
    public void k() {
        try {
            this.f2796d.set(false);
            this.f2793a.d();
            z(0L);
        } catch (Exception e10) {
            J(e10);
        }
    }

    protected boolean k0() {
        return V();
    }

    protected void l() {
        d d02;
        if (!this.f2796d.get() && (d02 = d0()) != null) {
            d02.b(this);
        }
    }

    protected boolean l0() {
        return W();
    }

    protected void m() {
        d d02;
        if (!this.f2796d.get() && (d02 = d0()) != null) {
            d02.h(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void m0() {
        X();
    }

    protected void o() {
        d d02;
        if (!this.f2796d.get() && (d02 = d0()) != null) {
            d02.a(this);
        }
    }

    protected void p() {
        d d02;
        if (this.f2794b.compareAndSet(false, true) && (d02 = d0()) != null) {
            d02.d(this);
        }
    }

    @Override // bq.b
    public void pause() {
        try {
            this.f2795c.set(false);
            m0();
            this.f2803k = h0();
        } catch (Exception unused) {
        }
    }

    @Override // bq.b
    public void play() {
        Long l10;
        try {
            this.f2800h = true;
            if (this.f2796d.get()) {
                l10 = Long.valueOf(g());
            } else {
                l10 = null;
            }
            z(l10);
        } catch (Exception e10) {
            J(e10);
        }
    }

    @Override // bq.b
    public void prepare() {
        try {
            f();
        } catch (Exception e10) {
            P(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void q() {
        d d02;
        if (this.f2796d.compareAndSet(false, true) && (d02 = d0()) != null) {
            d02.k(this);
        }
    }

    protected void r() {
        d d02;
        if (!this.f2796d.get() && (d02 = d0()) != null) {
            d02.c(this);
        }
    }

    protected void s() {
        d d02;
        if (!this.f2796d.get() && (d02 = d0()) != null) {
            d02.j(this);
        }
    }

    protected void t() {
        d d02;
        if (!this.f2796d.get() && (d02 = d0()) != null) {
            d02.e(this);
        }
    }

    protected void u() {
        d d02;
        if (!this.f2796d.get() && (d02 = d0()) != null) {
            d02.i(this);
        }
    }

    protected void v() {
        if (!this.f2796d.get()) {
            this.f2793a.f();
        }
    }

    protected abstract void x(float f10);

    protected abstract void y(long j10);

    @Override // tp.u
    public void a(@Nullable Integer num) {
        T(1.0f);
    }

    @Override // bq.b
    @CallSuper
    public void a() {
        this.f2798f = null;
        b0();
    }
}
