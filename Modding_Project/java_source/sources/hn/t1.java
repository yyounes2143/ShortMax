package hn;

import android.util.Base64;
import androidx.annotation.Nullable;
import hn.a2;
import hn.b;
import io.bidmachine.media3.exoplayer.source.r;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import zm.a0;
/* compiled from: DefaultPlaybackSessionManager.java */
/* loaded from: classes8.dex */
public final class t1 implements a2 {

    /* renamed from: i  reason: collision with root package name */
    public static final h7.n<String> f53083i = new h7.n() { // from class: hn.s1
        @Override // h7.n
        public final Object get() {
            String m10;
            m10 = t1.m();
            return m10;
        }
    };

    /* renamed from: j  reason: collision with root package name */
    private static final Random f53084j = new Random();

    /* renamed from: a  reason: collision with root package name */
    private final a0.c f53085a;

    /* renamed from: b  reason: collision with root package name */
    private final a0.b f53086b;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, a> f53087c;

    /* renamed from: d  reason: collision with root package name */
    private final h7.n<String> f53088d;

    /* renamed from: e  reason: collision with root package name */
    private a2.a f53089e;

    /* renamed from: f  reason: collision with root package name */
    private zm.a0 f53090f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f53091g;

    /* renamed from: h  reason: collision with root package name */
    private long f53092h;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultPlaybackSessionManager.java */
    /* loaded from: classes8.dex */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f53093a;

        /* renamed from: b  reason: collision with root package name */
        private int f53094b;

        /* renamed from: c  reason: collision with root package name */
        private long f53095c;

        /* renamed from: d  reason: collision with root package name */
        private r.b f53096d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f53097e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f53098f;

        public a(String str, int i10, @Nullable r.b bVar) {
            long j10;
            this.f53093a = str;
            this.f53094b = i10;
            if (bVar == null) {
                j10 = -1;
            } else {
                j10 = bVar.f56993d;
            }
            this.f53095c = j10;
            if (bVar != null && bVar.b()) {
                this.f53096d = bVar;
            }
        }

        private int l(zm.a0 a0Var, zm.a0 a0Var2, int i10) {
            if (i10 >= a0Var.p()) {
                if (i10 >= a0Var2.p()) {
                    return -1;
                }
                return i10;
            }
            a0Var.n(i10, t1.this.f53085a);
            for (int i11 = t1.this.f53085a.f71770n; i11 <= t1.this.f53085a.f71771o; i11++) {
                int b10 = a0Var2.b(a0Var.m(i11));
                if (b10 != -1) {
                    return a0Var2.f(b10, t1.this.f53086b).f71742c;
                }
            }
            return -1;
        }

        public boolean i(int i10, @Nullable r.b bVar) {
            if (bVar == null) {
                if (i10 != this.f53094b) {
                    return false;
                }
                return true;
            }
            r.b bVar2 = this.f53096d;
            if (bVar2 == null) {
                if (bVar.b() || bVar.f56993d != this.f53095c) {
                    return false;
                }
                return true;
            } else if (bVar.f56993d != bVar2.f56993d || bVar.f56991b != bVar2.f56991b || bVar.f56992c != bVar2.f56992c) {
                return false;
            } else {
                return true;
            }
        }

        public boolean j(b.a aVar) {
            r.b bVar = aVar.f52930d;
            if (bVar == null) {
                if (this.f53094b != aVar.f52929c) {
                    return true;
                }
                return false;
            }
            long j10 = this.f53095c;
            if (j10 == -1) {
                return false;
            }
            if (bVar.f56993d > j10) {
                return true;
            }
            if (this.f53096d == null) {
                return false;
            }
            int b10 = aVar.f52928b.b(bVar.f56990a);
            int b11 = aVar.f52928b.b(this.f53096d.f56990a);
            r.b bVar2 = aVar.f52930d;
            if (bVar2.f56993d < this.f53096d.f56993d || b10 < b11) {
                return false;
            }
            if (b10 > b11) {
                return true;
            }
            if (bVar2.b()) {
                r.b bVar3 = aVar.f52930d;
                int i10 = bVar3.f56991b;
                int i11 = bVar3.f56992c;
                r.b bVar4 = this.f53096d;
                int i12 = bVar4.f56991b;
                if (i10 > i12) {
                    return true;
                }
                if (i10 == i12 && i11 > bVar4.f56992c) {
                    return true;
                }
                return false;
            }
            int i13 = aVar.f52930d.f56994e;
            if (i13 == -1 || i13 > this.f53096d.f56991b) {
                return true;
            }
            return false;
        }

        public void k(int i10, @Nullable r.b bVar) {
            if (this.f53095c == -1 && i10 == this.f53094b && bVar != null && bVar.f56993d >= t1.this.n()) {
                this.f53095c = bVar.f56993d;
            }
        }

        public boolean m(zm.a0 a0Var, zm.a0 a0Var2) {
            int l10 = l(a0Var, a0Var2, this.f53094b);
            this.f53094b = l10;
            if (l10 == -1) {
                return false;
            }
            r.b bVar = this.f53096d;
            if (bVar != null && a0Var2.b(bVar.f56990a) == -1) {
                return false;
            }
            return true;
        }
    }

    public t1() {
        this(f53083i);
    }

    private void l(a aVar) {
        if (aVar.f53095c != -1) {
            this.f53092h = aVar.f53095c;
        }
        this.f53091g = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String m() {
        byte[] bArr = new byte[12];
        f53084j.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long n() {
        a aVar = this.f53087c.get(this.f53091g);
        if (aVar != null && aVar.f53095c != -1) {
            return aVar.f53095c;
        }
        return this.f53092h + 1;
    }

    private a o(int i10, @Nullable r.b bVar) {
        int i11;
        a aVar = null;
        long j10 = Long.MAX_VALUE;
        for (a aVar2 : this.f53087c.values()) {
            aVar2.k(i10, bVar);
            if (aVar2.i(i10, bVar)) {
                long j11 = aVar2.f53095c;
                if (j11 != -1 && j11 >= j10) {
                    if (i11 == 0 && ((a) cn.m0.i(aVar)).f53096d != null && aVar2.f53096d != null) {
                        aVar = aVar2;
                    }
                } else {
                    aVar = aVar2;
                    j10 = j11;
                }
            }
        }
        if (aVar == null) {
            String str = this.f53088d.get();
            a aVar3 = new a(str, i10, bVar);
            this.f53087c.put(str, aVar3);
            return aVar3;
        }
        return aVar;
    }

    private void p(b.a aVar) {
        if (aVar.f52928b.q()) {
            String str = this.f53091g;
            if (str != null) {
                l((a) cn.a.e(this.f53087c.get(str)));
                return;
            }
            return;
        }
        a aVar2 = this.f53087c.get(this.f53091g);
        a o10 = o(aVar.f52929c, aVar.f52930d);
        this.f53091g = o10.f53093a;
        f(aVar);
        r.b bVar = aVar.f52930d;
        if (bVar != null && bVar.b()) {
            if (aVar2 == null || aVar2.f53095c != aVar.f52930d.f56993d || aVar2.f53096d == null || aVar2.f53096d.f56991b != aVar.f52930d.f56991b || aVar2.f53096d.f56992c != aVar.f52930d.f56992c) {
                r.b bVar2 = aVar.f52930d;
                this.f53089e.G(aVar, o(aVar.f52929c, new r.b(bVar2.f56990a, bVar2.f56993d)).f53093a, o10.f53093a);
            }
        }
    }

    @Override // hn.a2
    @Nullable
    public synchronized String a() {
        return this.f53091g;
    }

    @Override // hn.a2
    public void b(a2.a aVar) {
        this.f53089e = aVar;
    }

    @Override // hn.a2
    public synchronized void c(b.a aVar) {
        a2.a aVar2;
        try {
            String str = this.f53091g;
            if (str != null) {
                l((a) cn.a.e(this.f53087c.get(str)));
            }
            Iterator<a> it = this.f53087c.values().iterator();
            while (it.hasNext()) {
                a next = it.next();
                it.remove();
                if (next.f53097e && (aVar2 = this.f53089e) != null) {
                    aVar2.s(aVar, next.f53093a, false);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // hn.a2
    public synchronized void d(b.a aVar) {
        try {
            cn.a.e(this.f53089e);
            zm.a0 a0Var = this.f53090f;
            this.f53090f = aVar.f52928b;
            Iterator<a> it = this.f53087c.values().iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.m(a0Var, this.f53090f) && !next.j(aVar)) {
                }
                it.remove();
                if (next.f53097e) {
                    if (next.f53093a.equals(this.f53091g)) {
                        l(next);
                    }
                    this.f53089e.s(aVar, next.f53093a, false);
                }
            }
            p(aVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // hn.a2
    public synchronized void e(b.a aVar, int i10) {
        boolean z10;
        boolean z11;
        try {
            cn.a.e(this.f53089e);
            if (i10 == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            Iterator<a> it = this.f53087c.values().iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.j(aVar)) {
                    it.remove();
                    if (next.f53097e) {
                        boolean equals = next.f53093a.equals(this.f53091g);
                        if (z10 && equals && next.f53098f) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (equals) {
                            l(next);
                        }
                        this.f53089e.s(aVar, next.f53093a, z11);
                    }
                }
            }
            p(aVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00de A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:4:0x0005, B:8:0x0014, B:10:0x0018, B:15:0x0024, B:17:0x0030, B:19:0x003a, B:25:0x0047, B:27:0x0053, B:28:0x0059, B:30:0x005e, B:32:0x0064, B:34:0x007d, B:36:0x00d8, B:38:0x00de, B:40:0x00f4, B:42:0x0100, B:44:0x0106), top: B:49:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f0  */
    @Override // hn.a2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void f(hn.b.a r25) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: hn.t1.f(hn.b$a):void");
    }

    @Override // hn.a2
    public synchronized String g(zm.a0 a0Var, r.b bVar) {
        return o(a0Var.h(bVar.f56990a, this.f53086b).f71742c, bVar).f53093a;
    }

    public t1(h7.n<String> nVar) {
        this.f53088d = nVar;
        this.f53085a = new a0.c();
        this.f53086b = new a0.b();
        this.f53087c = new HashMap<>();
        this.f53090f = zm.a0.f71731a;
        this.f53092h = -1L;
    }
}
