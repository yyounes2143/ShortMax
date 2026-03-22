package wo;

import ao.i0;
import ao.j0;
import ao.o0;
import ao.q;
import ao.r;
import cn.b0;
import cn.m0;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StreamReader.java */
/* loaded from: classes8.dex */
public abstract class i {

    /* renamed from: b  reason: collision with root package name */
    private o0 f70077b;

    /* renamed from: c  reason: collision with root package name */
    private r f70078c;

    /* renamed from: d  reason: collision with root package name */
    private g f70079d;

    /* renamed from: e  reason: collision with root package name */
    private long f70080e;

    /* renamed from: f  reason: collision with root package name */
    private long f70081f;

    /* renamed from: g  reason: collision with root package name */
    private long f70082g;

    /* renamed from: h  reason: collision with root package name */
    private int f70083h;

    /* renamed from: i  reason: collision with root package name */
    private int f70084i;

    /* renamed from: k  reason: collision with root package name */
    private long f70086k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f70087l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f70088m;

    /* renamed from: a  reason: collision with root package name */
    private final e f70076a = new e();

    /* renamed from: j  reason: collision with root package name */
    private b f70085j = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StreamReader.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        io.bidmachine.media3.common.a f70089a;

        /* renamed from: b  reason: collision with root package name */
        g f70090b;

        b() {
        }
    }

    private void a() {
        cn.a.i(this.f70077b);
        m0.i(this.f70078c);
    }

    private boolean h(q qVar) throws IOException {
        while (this.f70076a.d(qVar)) {
            this.f70086k = qVar.getPosition() - this.f70081f;
            if (i(this.f70076a.c(), this.f70081f, this.f70085j)) {
                this.f70081f = qVar.getPosition();
            } else {
                return true;
            }
        }
        this.f70083h = 3;
        return false;
    }

    private int j(q qVar) throws IOException {
        boolean z10;
        if (!h(qVar)) {
            return -1;
        }
        io.bidmachine.media3.common.a aVar = this.f70085j.f70089a;
        this.f70084i = aVar.F;
        if (!this.f70088m) {
            this.f70077b.g(aVar);
            this.f70088m = true;
        }
        g gVar = this.f70085j.f70090b;
        if (gVar != null) {
            this.f70079d = gVar;
        } else if (qVar.getLength() == -1) {
            this.f70079d = new c();
        } else {
            f b10 = this.f70076a.b();
            if ((b10.f70063b & 4) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f70079d = new wo.a(this, this.f70081f, qVar.getLength(), b10.f70069h + b10.f70070i, b10.f70064c, z10);
        }
        this.f70083h = 2;
        this.f70076a.f();
        return 0;
    }

    private int k(q qVar, i0 i0Var) throws IOException {
        long a10 = this.f70079d.a(qVar);
        if (a10 >= 0) {
            i0Var.f1855a = a10;
            return 1;
        }
        if (a10 < -1) {
            e(-(a10 + 2));
        }
        if (!this.f70087l) {
            j0 j0Var = (j0) cn.a.i(this.f70079d.createSeekMap());
            this.f70078c.d(j0Var);
            this.f70077b.d(j0Var.getDurationUs());
            this.f70087l = true;
        }
        if (this.f70086k <= 0 && !this.f70076a.d(qVar)) {
            this.f70083h = 3;
            return -1;
        }
        this.f70086k = 0L;
        b0 c10 = this.f70076a.c();
        long f10 = f(c10);
        if (f10 >= 0) {
            long j10 = this.f70082g;
            if (j10 + f10 >= this.f70080e) {
                long b10 = b(j10);
                this.f70077b.a(c10, c10.g());
                this.f70077b.c(b10, 1, c10.g(), 0, null);
                this.f70080e = -1L;
            }
        }
        this.f70082g += f10;
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long b(long j10) {
        return (j10 * 1000000) / this.f70084i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long c(long j10) {
        return (this.f70084i * j10) / 1000000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(r rVar, o0 o0Var) {
        this.f70078c = rVar;
        this.f70077b = o0Var;
        l(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(long j10) {
        this.f70082g = j10;
    }

    protected abstract long f(b0 b0Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int g(q qVar, i0 i0Var) throws IOException {
        a();
        int i10 = this.f70083h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return -1;
                    }
                    throw new IllegalStateException();
                }
                m0.i(this.f70079d);
                return k(qVar, i0Var);
            }
            qVar.skipFully((int) this.f70081f);
            this.f70083h = 2;
            return 0;
        }
        return j(qVar);
    }

    protected abstract boolean i(b0 b0Var, long j10, b bVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public void l(boolean z10) {
        if (z10) {
            this.f70085j = new b();
            this.f70081f = 0L;
            this.f70083h = 0;
        } else {
            this.f70083h = 1;
        }
        this.f70080e = -1L;
        this.f70082g = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(long j10, long j11) {
        this.f70076a.e();
        if (j10 == 0) {
            l(!this.f70087l);
        } else if (this.f70083h != 0) {
            this.f70080e = c(j11);
            ((g) m0.i(this.f70079d)).startSeek(this.f70080e);
            this.f70083h = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StreamReader.java */
    /* loaded from: classes8.dex */
    public static final class c implements g {
        private c() {
        }

        @Override // wo.g
        public long a(q qVar) {
            return -1L;
        }

        @Override // wo.g
        public j0 createSeekMap() {
            return new j0.b(-9223372036854775807L);
        }

        @Override // wo.g
        public void startSeek(long j10) {
        }
    }
}
