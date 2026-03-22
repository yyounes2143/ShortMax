package p5;

import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import p5.b;
import p5.s3;
/* compiled from: DefaultPlaybackSessionManager.java */
/* loaded from: classes4.dex */
public final class p1 implements s3 {

    /* renamed from: h  reason: collision with root package name */
    public static final h7.n<String> f64634h = new h7.n() { // from class: p5.o1
        @Override // h7.n
        public final Object get() {
            String k10;
            k10 = p1.k();
            return k10;
        }
    };

    /* renamed from: i  reason: collision with root package name */
    private static final Random f64635i = new Random();

    /* renamed from: a  reason: collision with root package name */
    private final u1.d f64636a;

    /* renamed from: b  reason: collision with root package name */
    private final u1.b f64637b;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, a> f64638c;

    /* renamed from: d  reason: collision with root package name */
    private final h7.n<String> f64639d;

    /* renamed from: e  reason: collision with root package name */
    private s3.a f64640e;

    /* renamed from: f  reason: collision with root package name */
    private com.google.android.exoplayer2.u1 f64641f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f64642g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultPlaybackSessionManager.java */
    /* loaded from: classes4.dex */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f64643a;

        /* renamed from: b  reason: collision with root package name */
        private int f64644b;

        /* renamed from: c  reason: collision with root package name */
        private long f64645c;

        /* renamed from: d  reason: collision with root package name */
        private o.b f64646d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f64647e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f64648f;

        public a(String str, int i10, @Nullable o.b bVar) {
            long j10;
            this.f64643a = str;
            this.f64644b = i10;
            if (bVar == null) {
                j10 = -1;
            } else {
                j10 = bVar.f62790d;
            }
            this.f64645c = j10;
            if (bVar != null && bVar.b()) {
                this.f64646d = bVar;
            }
        }

        private int l(com.google.android.exoplayer2.u1 u1Var, com.google.android.exoplayer2.u1 u1Var2, int i10) {
            if (i10 >= u1Var.t()) {
                if (i10 >= u1Var2.t()) {
                    return -1;
                }
                return i10;
            }
            u1Var.r(i10, p1.this.f64636a);
            for (int i11 = p1.this.f64636a.f18564o; i11 <= p1.this.f64636a.f18565p; i11++) {
                int f10 = u1Var2.f(u1Var.q(i11));
                if (f10 != -1) {
                    return u1Var2.j(f10, p1.this.f64637b).f18537c;
                }
            }
            return -1;
        }

        public boolean i(int i10, @Nullable o.b bVar) {
            if (bVar == null) {
                if (i10 != this.f64644b) {
                    return false;
                }
                return true;
            }
            o.b bVar2 = this.f64646d;
            if (bVar2 == null) {
                if (bVar.b() || bVar.f62790d != this.f64645c) {
                    return false;
                }
                return true;
            } else if (bVar.f62790d != bVar2.f62790d || bVar.f62788b != bVar2.f62788b || bVar.f62789c != bVar2.f62789c) {
                return false;
            } else {
                return true;
            }
        }

        public boolean j(b.a aVar) {
            o.b bVar = aVar.f64520d;
            if (bVar == null) {
                if (this.f64644b != aVar.f64519c) {
                    return true;
                }
                return false;
            }
            long j10 = this.f64645c;
            if (j10 == -1) {
                return false;
            }
            if (bVar.f62790d > j10) {
                return true;
            }
            if (this.f64646d == null) {
                return false;
            }
            int f10 = aVar.f64518b.f(bVar.f62787a);
            int f11 = aVar.f64518b.f(this.f64646d.f62787a);
            o.b bVar2 = aVar.f64520d;
            if (bVar2.f62790d < this.f64646d.f62790d || f10 < f11) {
                return false;
            }
            if (f10 > f11) {
                return true;
            }
            if (bVar2.b()) {
                o.b bVar3 = aVar.f64520d;
                int i10 = bVar3.f62788b;
                int i11 = bVar3.f62789c;
                o.b bVar4 = this.f64646d;
                int i12 = bVar4.f62788b;
                if (i10 > i12) {
                    return true;
                }
                if (i10 == i12 && i11 > bVar4.f62789c) {
                    return true;
                }
                return false;
            }
            int i13 = aVar.f64520d.f62791e;
            if (i13 == -1 || i13 > this.f64646d.f62788b) {
                return true;
            }
            return false;
        }

        public void k(int i10, @Nullable o.b bVar) {
            if (this.f64645c == -1 && i10 == this.f64644b && bVar != null) {
                this.f64645c = bVar.f62790d;
            }
        }

        public boolean m(com.google.android.exoplayer2.u1 u1Var, com.google.android.exoplayer2.u1 u1Var2) {
            int l10 = l(u1Var, u1Var2, this.f64644b);
            this.f64644b = l10;
            if (l10 == -1) {
                return false;
            }
            o.b bVar = this.f64646d;
            if (bVar != null && u1Var2.f(bVar.f62787a) == -1) {
                return false;
            }
            return true;
        }
    }

    public p1() {
        this(f64634h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String k() {
        byte[] bArr = new byte[12];
        f64635i.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    private a l(int i10, @Nullable o.b bVar) {
        int i11;
        a aVar = null;
        long j10 = Long.MAX_VALUE;
        for (a aVar2 : this.f64638c.values()) {
            aVar2.k(i10, bVar);
            if (aVar2.i(i10, bVar)) {
                long j11 = aVar2.f64645c;
                if (j11 != -1 && j11 >= j10) {
                    if (i11 == 0 && ((a) b7.s0.j(aVar)).f64646d != null && aVar2.f64646d != null) {
                        aVar = aVar2;
                    }
                } else {
                    aVar = aVar2;
                    j10 = j11;
                }
            }
        }
        if (aVar == null) {
            String str = this.f64639d.get();
            a aVar3 = new a(str, i10, bVar);
            this.f64638c.put(str, aVar3);
            return aVar3;
        }
        return aVar;
    }

    private void m(b.a aVar) {
        if (aVar.f64518b.u()) {
            this.f64642g = null;
            return;
        }
        a aVar2 = this.f64638c.get(this.f64642g);
        a l10 = l(aVar.f64519c, aVar.f64520d);
        this.f64642g = l10.f64643a;
        g(aVar);
        o.b bVar = aVar.f64520d;
        if (bVar != null && bVar.b()) {
            if (aVar2 == null || aVar2.f64645c != aVar.f64520d.f62790d || aVar2.f64646d == null || aVar2.f64646d.f62788b != aVar.f64520d.f62788b || aVar2.f64646d.f62789c != aVar.f64520d.f62789c) {
                o.b bVar2 = aVar.f64520d;
                this.f64640e.u0(aVar, l(aVar.f64519c, new o.b(bVar2.f62787a, bVar2.f62790d)).f64643a, l10.f64643a);
            }
        }
    }

    @Override // p5.s3
    @Nullable
    public synchronized String a() {
        return this.f64642g;
    }

    @Override // p5.s3
    public synchronized void b(b.a aVar) {
        try {
            b7.a.e(this.f64640e);
            com.google.android.exoplayer2.u1 u1Var = this.f64641f;
            this.f64641f = aVar.f64518b;
            Iterator<a> it = this.f64638c.values().iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.m(u1Var, this.f64641f) && !next.j(aVar)) {
                }
                it.remove();
                if (next.f64647e) {
                    if (next.f64643a.equals(this.f64642g)) {
                        this.f64642g = null;
                    }
                    this.f64640e.f(aVar, next.f64643a, false);
                }
            }
            m(aVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // p5.s3
    public void c(s3.a aVar) {
        this.f64640e = aVar;
    }

    @Override // p5.s3
    public synchronized void d(b.a aVar, int i10) {
        boolean z10;
        boolean z11;
        try {
            b7.a.e(this.f64640e);
            if (i10 == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            Iterator<a> it = this.f64638c.values().iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.j(aVar)) {
                    it.remove();
                    if (next.f64647e) {
                        boolean equals = next.f64643a.equals(this.f64642g);
                        if (z10 && equals && next.f64648f) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (equals) {
                            this.f64642g = null;
                        }
                        this.f64640e.f(aVar, next.f64643a, z11);
                    }
                }
            }
            m(aVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // p5.s3
    public synchronized void e(b.a aVar) {
        s3.a aVar2;
        this.f64642g = null;
        Iterator<a> it = this.f64638c.values().iterator();
        while (it.hasNext()) {
            a next = it.next();
            it.remove();
            if (next.f64647e && (aVar2 = this.f64640e) != null) {
                aVar2.f(aVar, next.f64643a, false);
            }
        }
    }

    @Override // p5.s3
    public synchronized String f(com.google.android.exoplayer2.u1 u1Var, o.b bVar) {
        return l(u1Var.l(bVar.f62787a, this.f64637b).f18537c, bVar).f64643a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
        if (r25.f64520d.f62790d < r2.f64645c) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00df A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:4:0x0005, B:8:0x0014, B:11:0x0024, B:13:0x002e, B:18:0x003a, B:23:0x0048, B:25:0x0054, B:26:0x005a, B:28:0x005f, B:30:0x0065, B:32:0x007e, B:34:0x00d9, B:36:0x00df, B:38:0x00f5, B:40:0x0101, B:42:0x0107), top: B:47:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f1  */
    @Override // p5.s3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void g(p5.b.a r25) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p5.p1.g(p5.b$a):void");
    }

    public p1(h7.n<String> nVar) {
        this.f64639d = nVar;
        this.f64636a = new u1.d();
        this.f64637b = new u1.b();
        this.f64638c = new HashMap<>();
        this.f64641f = com.google.android.exoplayer2.u1.f18532a;
    }
}
