package io.bidmachine.media3.exoplayer.dash;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.Nullable;
import ao.o0;
import cn.b0;
import cn.m0;
import gn.c0;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.exoplayer.source.f0;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import zm.h;
import zm.t;
/* compiled from: PlayerEmsgHandler.java */
/* loaded from: classes8.dex */
public final class f implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final wn.b f55753a;

    /* renamed from: b  reason: collision with root package name */
    private final b f55754b;

    /* renamed from: f  reason: collision with root package name */
    private kn.c f55758f;

    /* renamed from: g  reason: collision with root package name */
    private long f55759g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f55760h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f55761i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f55762j;

    /* renamed from: e  reason: collision with root package name */
    private final TreeMap<Long, Long> f55757e = new TreeMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final Handler f55756d = m0.B(this);

    /* renamed from: c  reason: collision with root package name */
    private final mo.b f55755c = new mo.b();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PlayerEmsgHandler.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f55763a;

        /* renamed from: b  reason: collision with root package name */
        public final long f55764b;

        public a(long j10, long j11) {
            this.f55763a = j10;
            this.f55764b = j11;
        }
    }

    /* compiled from: PlayerEmsgHandler.java */
    /* loaded from: classes8.dex */
    public interface b {
        void a(long j10);

        void b();
    }

    /* compiled from: PlayerEmsgHandler.java */
    /* loaded from: classes8.dex */
    public final class c implements o0 {

        /* renamed from: a  reason: collision with root package name */
        private final f0 f55765a;

        /* renamed from: b  reason: collision with root package name */
        private final c0 f55766b = new c0();

        /* renamed from: c  reason: collision with root package name */
        private final ko.b f55767c = new ko.b();

        /* renamed from: d  reason: collision with root package name */
        private long f55768d = -9223372036854775807L;

        c(wn.b bVar) {
            this.f55765a = f0.m(bVar);
        }

        @Nullable
        private ko.b h() {
            this.f55767c.b();
            if (this.f55765a.V(this.f55766b, this.f55767c, 0, false) == -4) {
                this.f55767c.n();
                return this.f55767c;
            }
            return null;
        }

        private void l(long j10, long j11) {
            f.this.f55756d.sendMessage(f.this.f55756d.obtainMessage(1, new a(j10, j11)));
        }

        private void m() {
            while (this.f55765a.N(false)) {
                ko.b h10 = h();
                if (h10 != null) {
                    long j10 = h10.f55347f;
                    t a10 = f.this.f55755c.a(h10);
                    if (a10 != null) {
                        mo.a aVar = (mo.a) a10.d(0);
                        if (f.h(aVar.f62564a, aVar.f62565b)) {
                            n(j10, aVar);
                        }
                    }
                }
            }
            this.f55765a.t();
        }

        private void n(long j10, mo.a aVar) {
            long f10 = f.f(aVar);
            if (f10 == -9223372036854775807L) {
                return;
            }
            l(j10, f10);
        }

        @Override // ao.o0
        public void c(long j10, int i10, int i11, int i12, @Nullable o0.a aVar) {
            this.f55765a.c(j10, i10, i11, i12, aVar);
            m();
        }

        @Override // ao.o0
        public int e(h hVar, int i10, boolean z10, int i11) throws IOException {
            return this.f55765a.b(hVar, i10, z10);
        }

        @Override // ao.o0
        public void f(b0 b0Var, int i10, int i11) {
            this.f55765a.a(b0Var, i10);
        }

        @Override // ao.o0
        public void g(io.bidmachine.media3.common.a aVar) {
            this.f55765a.g(aVar);
        }

        public boolean i(long j10) {
            return f.this.j(j10);
        }

        public void j(tn.e eVar) {
            long j10 = this.f55768d;
            if (j10 == -9223372036854775807L || eVar.f67467h > j10) {
                this.f55768d = eVar.f67467h;
            }
            f.this.m(eVar);
        }

        public boolean k(tn.e eVar) {
            boolean z10;
            long j10 = this.f55768d;
            if (j10 != -9223372036854775807L && j10 < eVar.f67466g) {
                z10 = true;
            } else {
                z10 = false;
            }
            return f.this.n(z10);
        }

        public void o() {
            this.f55765a.W();
        }
    }

    public f(kn.c cVar, b bVar, wn.b bVar2) {
        this.f55758f = cVar;
        this.f55754b = bVar;
        this.f55753a = bVar2;
    }

    @Nullable
    private Map.Entry<Long, Long> e(long j10) {
        return this.f55757e.ceilingEntry(Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long f(mo.a aVar) {
        try {
            return m0.a1(m0.H(aVar.f62568e));
        } catch (ParserException unused) {
            return -9223372036854775807L;
        }
    }

    private void g(long j10, long j11) {
        Long l10 = this.f55757e.get(Long.valueOf(j11));
        if (l10 == null) {
            this.f55757e.put(Long.valueOf(j11), Long.valueOf(j10));
        } else if (l10.longValue() > j10) {
            this.f55757e.put(Long.valueOf(j11), Long.valueOf(j10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean h(String str, String str2) {
        if ("urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || "2".equals(str2) || "3".equals(str2))) {
            return true;
        }
        return false;
    }

    private void i() {
        if (!this.f55760h) {
            return;
        }
        this.f55761i = true;
        this.f55760h = false;
        this.f55754b.b();
    }

    private void l() {
        this.f55754b.a(this.f55759g);
    }

    private void p() {
        Iterator<Map.Entry<Long, Long>> it = this.f55757e.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getKey().longValue() < this.f55758f.f60812h) {
                it.remove();
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (this.f55762j) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        a aVar = (a) message.obj;
        g(aVar.f55763a, aVar.f55764b);
        return true;
    }

    boolean j(long j10) {
        kn.c cVar = this.f55758f;
        boolean z10 = false;
        if (!cVar.f60808d) {
            return false;
        }
        if (this.f55761i) {
            return true;
        }
        Map.Entry<Long, Long> e10 = e(cVar.f60812h);
        if (e10 != null && e10.getValue().longValue() < j10) {
            this.f55759g = e10.getKey().longValue();
            l();
            z10 = true;
        }
        if (z10) {
            i();
        }
        return z10;
    }

    public c k() {
        return new c(this.f55753a);
    }

    void m(tn.e eVar) {
        this.f55760h = true;
    }

    boolean n(boolean z10) {
        if (!this.f55758f.f60808d) {
            return false;
        }
        if (this.f55761i) {
            return true;
        }
        if (!z10) {
            return false;
        }
        i();
        return true;
    }

    public void o() {
        this.f55762j = true;
        this.f55756d.removeCallbacksAndMessages(null);
    }

    public void q(kn.c cVar) {
        this.f55761i = false;
        this.f55759g = -9223372036854775807L;
        this.f55758f = cVar;
        p();
    }
}
