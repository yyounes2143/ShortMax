package c6;

import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.v0;
import java.io.IOException;
import t5.b0;
import t5.l;
import t5.m;
import t5.y;
import t5.z;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StreamReader.java */
/* loaded from: classes4.dex */
public abstract class i {

    /* renamed from: b  reason: collision with root package name */
    private b0 f3191b;

    /* renamed from: c  reason: collision with root package name */
    private m f3192c;

    /* renamed from: d  reason: collision with root package name */
    private g f3193d;

    /* renamed from: e  reason: collision with root package name */
    private long f3194e;

    /* renamed from: f  reason: collision with root package name */
    private long f3195f;

    /* renamed from: g  reason: collision with root package name */
    private long f3196g;

    /* renamed from: h  reason: collision with root package name */
    private int f3197h;

    /* renamed from: i  reason: collision with root package name */
    private int f3198i;

    /* renamed from: k  reason: collision with root package name */
    private long f3200k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f3201l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f3202m;

    /* renamed from: a  reason: collision with root package name */
    private final e f3190a = new e();

    /* renamed from: j  reason: collision with root package name */
    private b f3199j = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StreamReader.java */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        v0 f3203a;

        /* renamed from: b  reason: collision with root package name */
        g f3204b;

        b() {
        }
    }

    private void a() {
        b7.a.i(this.f3191b);
        s0.j(this.f3192c);
    }

    private boolean i(l lVar) throws IOException {
        while (this.f3190a.d(lVar)) {
            this.f3200k = lVar.getPosition() - this.f3195f;
            if (h(this.f3190a.c(), this.f3195f, this.f3199j)) {
                this.f3195f = lVar.getPosition();
            } else {
                return true;
            }
        }
        this.f3197h = 3;
        return false;
    }

    private int j(l lVar) throws IOException {
        boolean z10;
        if (!i(lVar)) {
            return -1;
        }
        v0 v0Var = this.f3199j.f3203a;
        this.f3198i = v0Var.f19171z;
        if (!this.f3202m) {
            this.f3191b.b(v0Var);
            this.f3202m = true;
        }
        g gVar = this.f3199j.f3204b;
        if (gVar != null) {
            this.f3193d = gVar;
        } else if (lVar.getLength() == -1) {
            this.f3193d = new c();
        } else {
            f b10 = this.f3190a.b();
            if ((b10.f3177b & 4) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f3193d = new c6.a(this, this.f3195f, lVar.getLength(), b10.f3183h + b10.f3184i, b10.f3178c, z10);
        }
        this.f3197h = 2;
        this.f3190a.f();
        return 0;
    }

    private int k(l lVar, y yVar) throws IOException {
        long a10 = this.f3193d.a(lVar);
        if (a10 >= 0) {
            yVar.f67204a = a10;
            return 1;
        }
        if (a10 < -1) {
            e(-(a10 + 2));
        }
        if (!this.f3201l) {
            this.f3192c.c((z) b7.a.i(this.f3193d.createSeekMap()));
            this.f3201l = true;
        }
        if (this.f3200k <= 0 && !this.f3190a.d(lVar)) {
            this.f3197h = 3;
            return -1;
        }
        this.f3200k = 0L;
        g0 c10 = this.f3190a.c();
        long f10 = f(c10);
        if (f10 >= 0) {
            long j10 = this.f3196g;
            if (j10 + f10 >= this.f3194e) {
                long b10 = b(j10);
                this.f3191b.a(c10, c10.f());
                this.f3191b.e(b10, 1, c10.f(), 0, null);
                this.f3194e = -1L;
            }
        }
        this.f3196g += f10;
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long b(long j10) {
        return (j10 * 1000000) / this.f3198i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long c(long j10) {
        return (this.f3198i * j10) / 1000000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(m mVar, b0 b0Var) {
        this.f3192c = mVar;
        this.f3191b = b0Var;
        l(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(long j10) {
        this.f3196g = j10;
    }

    protected abstract long f(g0 g0Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int g(l lVar, y yVar) throws IOException {
        a();
        int i10 = this.f3197h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return -1;
                    }
                    throw new IllegalStateException();
                }
                s0.j(this.f3193d);
                return k(lVar, yVar);
            }
            lVar.skipFully((int) this.f3195f);
            this.f3197h = 2;
            return 0;
        }
        return j(lVar);
    }

    protected abstract boolean h(g0 g0Var, long j10, b bVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public void l(boolean z10) {
        if (z10) {
            this.f3199j = new b();
            this.f3195f = 0L;
            this.f3197h = 0;
        } else {
            this.f3197h = 1;
        }
        this.f3194e = -1L;
        this.f3196g = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(long j10, long j11) {
        this.f3190a.e();
        if (j10 == 0) {
            l(!this.f3201l);
        } else if (this.f3197h != 0) {
            this.f3194e = c(j11);
            ((g) s0.j(this.f3193d)).startSeek(this.f3194e);
            this.f3197h = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StreamReader.java */
    /* loaded from: classes4.dex */
    public static final class c implements g {
        private c() {
        }

        @Override // c6.g
        public long a(l lVar) {
            return -1L;
        }

        @Override // c6.g
        public z createSeekMap() {
            return new z.b(-9223372036854775807L);
        }

        @Override // c6.g
        public void startSeek(long j10) {
        }
    }
}
