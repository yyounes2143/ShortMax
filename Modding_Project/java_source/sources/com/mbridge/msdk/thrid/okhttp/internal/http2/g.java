package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.mbridge.msdk.thrid.okhttp.internal.http2.h;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Http2Connection.java */
/* loaded from: classes6.dex */
public final class g implements Closeable {
    static final /* synthetic */ boolean A = true;

    /* renamed from: z  reason: collision with root package name */
    private static final ExecutorService f29796z = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp Http2Connection", true));

    /* renamed from: a  reason: collision with root package name */
    final boolean f29797a;

    /* renamed from: b  reason: collision with root package name */
    final j f29798b;

    /* renamed from: d  reason: collision with root package name */
    final String f29800d;

    /* renamed from: e  reason: collision with root package name */
    int f29801e;

    /* renamed from: f  reason: collision with root package name */
    int f29802f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f29803g;

    /* renamed from: h  reason: collision with root package name */
    private final ScheduledExecutorService f29804h;

    /* renamed from: i  reason: collision with root package name */
    private final ExecutorService f29805i;

    /* renamed from: j  reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.internal.http2.l f29806j;

    /* renamed from: s  reason: collision with root package name */
    long f29815s;

    /* renamed from: u  reason: collision with root package name */
    final m f29817u;

    /* renamed from: v  reason: collision with root package name */
    final Socket f29818v;

    /* renamed from: w  reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.internal.http2.j f29819w;

    /* renamed from: x  reason: collision with root package name */
    final l f29820x;

    /* renamed from: y  reason: collision with root package name */
    final Set<Integer> f29821y;

    /* renamed from: c  reason: collision with root package name */
    final Map<Integer, com.mbridge.msdk.thrid.okhttp.internal.http2.i> f29799c = new LinkedHashMap();

    /* renamed from: k  reason: collision with root package name */
    private long f29807k = 0;

    /* renamed from: l  reason: collision with root package name */
    private long f29808l = 0;

    /* renamed from: m  reason: collision with root package name */
    private long f29809m = 0;

    /* renamed from: n  reason: collision with root package name */
    private long f29810n = 0;

    /* renamed from: o  reason: collision with root package name */
    private long f29811o = 0;

    /* renamed from: p  reason: collision with root package name */
    private long f29812p = 0;

    /* renamed from: q  reason: collision with root package name */
    private long f29813q = 0;

    /* renamed from: r  reason: collision with root package name */
    long f29814r = 0;

    /* renamed from: t  reason: collision with root package name */
    m f29816t = new m();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* loaded from: classes6.dex */
    public class a extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29822b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.thrid.okhttp.internal.http2.b f29823c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, Object[] objArr, int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
            super(str, objArr);
            this.f29822b = i10;
            this.f29823c = bVar;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            try {
                g.this.b(this.f29822b, this.f29823c);
            } catch (IOException unused) {
                g.this.h();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* loaded from: classes6.dex */
    public class b extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29825b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f29826c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, Object[] objArr, int i10, long j10) {
            super(str, objArr);
            this.f29825b = i10;
            this.f29826c = j10;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            try {
                g.this.f29819w.a(this.f29825b, this.f29826c);
            } catch (IOException unused) {
                g.this.h();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* loaded from: classes6.dex */
    public class c extends com.mbridge.msdk.thrid.okhttp.internal.b {
        c(String str, Object... objArr) {
            super(str, objArr);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            g.this.a(false, 2, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* loaded from: classes6.dex */
    public class d extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29829b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f29830c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, Object[] objArr, int i10, List list) {
            super(str, objArr);
            this.f29829b = i10;
            this.f29830c = list;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            if (g.this.f29806j.a(this.f29829b, this.f29830c)) {
                try {
                    g.this.f29819w.a(this.f29829b, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                    synchronized (g.this) {
                        g.this.f29821y.remove(Integer.valueOf(this.f29829b));
                    }
                } catch (IOException unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* loaded from: classes6.dex */
    public class e extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29832b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f29833c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f29834d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, Object[] objArr, int i10, List list, boolean z10) {
            super(str, objArr);
            this.f29832b = i10;
            this.f29833c = list;
            this.f29834d = z10;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            boolean a10 = g.this.f29806j.a(this.f29832b, this.f29833c, this.f29834d);
            if (a10) {
                try {
                    g.this.f29819w.a(this.f29832b, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                } catch (IOException unused) {
                    return;
                }
            }
            if (a10 || this.f29834d) {
                synchronized (g.this) {
                    g.this.f29821y.remove(Integer.valueOf(this.f29832b));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* loaded from: classes6.dex */
    public class f extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29836b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.thrid.okio.c f29837c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f29838d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ boolean f29839e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, Object[] objArr, int i10, com.mbridge.msdk.thrid.okio.c cVar, int i11, boolean z10) {
            super(str, objArr);
            this.f29836b = i10;
            this.f29837c = cVar;
            this.f29838d = i11;
            this.f29839e = z10;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            try {
                boolean a10 = g.this.f29806j.a(this.f29836b, this.f29837c, this.f29838d, this.f29839e);
                if (a10) {
                    g.this.f29819w.a(this.f29836b, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                }
                if (a10 || this.f29839e) {
                    synchronized (g.this) {
                        g.this.f29821y.remove(Integer.valueOf(this.f29836b));
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* renamed from: com.mbridge.msdk.thrid.okhttp.internal.http2.g$g  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0433g extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29841b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.thrid.okhttp.internal.http2.b f29842c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0433g(String str, Object[] objArr, int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
            super(str, objArr);
            this.f29841b = i10;
            this.f29842c = bVar;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            g.this.f29806j.a(this.f29841b, this.f29842c);
            synchronized (g.this) {
                g.this.f29821y.remove(Integer.valueOf(this.f29841b));
            }
        }
    }

    /* compiled from: Http2Connection.java */
    /* loaded from: classes6.dex */
    final class i extends com.mbridge.msdk.thrid.okhttp.internal.b {
        i() {
            super("OkHttp %s ping", g.this.f29800d);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            boolean z10;
            synchronized (g.this) {
                if (g.this.f29808l < g.this.f29807k) {
                    z10 = true;
                } else {
                    g.e(g.this);
                    z10 = false;
                }
            }
            if (z10) {
                g.this.h();
            } else {
                g.this.a(false, 1, 0);
            }
        }
    }

    /* compiled from: Http2Connection.java */
    /* loaded from: classes6.dex */
    public static abstract class j {

        /* renamed from: a  reason: collision with root package name */
        public static final j f29853a = new a();

        /* compiled from: Http2Connection.java */
        /* loaded from: classes6.dex */
        static class a extends j {
            a() {
            }

            @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.g.j
            public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) throws IOException {
                iVar.a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM);
            }
        }

        public void a(g gVar) {
        }

        public abstract void a(com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) throws IOException;
    }

    /* compiled from: Http2Connection.java */
    /* loaded from: classes6.dex */
    final class k extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* renamed from: b  reason: collision with root package name */
        final boolean f29854b;

        /* renamed from: c  reason: collision with root package name */
        final int f29855c;

        /* renamed from: d  reason: collision with root package name */
        final int f29856d;

        k(boolean z10, int i10, int i11) {
            super("OkHttp %s ping %08x%08x", g.this.f29800d, Integer.valueOf(i10), Integer.valueOf(i11));
            this.f29854b = z10;
            this.f29855c = i10;
            this.f29856d = i11;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            g.this.a(this.f29854b, this.f29855c, this.f29856d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* loaded from: classes6.dex */
    public class l extends com.mbridge.msdk.thrid.okhttp.internal.b implements h.b {

        /* renamed from: b  reason: collision with root package name */
        final com.mbridge.msdk.thrid.okhttp.internal.http2.h f29858b;

        /* compiled from: Http2Connection.java */
        /* loaded from: classes6.dex */
        class a extends com.mbridge.msdk.thrid.okhttp.internal.b {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ com.mbridge.msdk.thrid.okhttp.internal.http2.i f29860b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(String str, Object[] objArr, com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) {
                super(str, objArr);
                this.f29860b = iVar;
            }

            @Override // com.mbridge.msdk.thrid.okhttp.internal.b
            public void b() {
                try {
                    g.this.f29798b.a(this.f29860b);
                } catch (IOException e10) {
                    com.mbridge.msdk.thrid.okhttp.internal.platform.g d10 = com.mbridge.msdk.thrid.okhttp.internal.platform.g.d();
                    d10.a(4, "Http2Connection.Listener failure for " + g.this.f29800d, e10);
                    try {
                        this.f29860b.a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        /* compiled from: Http2Connection.java */
        /* loaded from: classes6.dex */
        class b extends com.mbridge.msdk.thrid.okhttp.internal.b {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ boolean f29862b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ m f29863c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(String str, Object[] objArr, boolean z10, m mVar) {
                super(str, objArr);
                this.f29862b = z10;
                this.f29863c = mVar;
            }

            @Override // com.mbridge.msdk.thrid.okhttp.internal.b
            public void b() {
                l.this.b(this.f29862b, this.f29863c);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Http2Connection.java */
        /* loaded from: classes6.dex */
        public class c extends com.mbridge.msdk.thrid.okhttp.internal.b {
            c(String str, Object... objArr) {
                super(str, objArr);
            }

            @Override // com.mbridge.msdk.thrid.okhttp.internal.b
            public void b() {
                g gVar = g.this;
                gVar.f29798b.a(gVar);
            }
        }

        l(com.mbridge.msdk.thrid.okhttp.internal.http2.h hVar) {
            super("OkHttp %s", g.this.f29800d);
            this.f29858b = hVar;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a() {
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        protected void b() {
            Throwable th2;
            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar;
            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar2 = com.mbridge.msdk.thrid.okhttp.internal.http2.b.INTERNAL_ERROR;
            try {
                try {
                    this.f29858b.a(this);
                    while (this.f29858b.a(false, (h.b) this)) {
                    }
                    bVar = com.mbridge.msdk.thrid.okhttp.internal.http2.b.NO_ERROR;
                    try {
                        try {
                            g.this.a(bVar, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                        } catch (IOException unused) {
                            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar3 = com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR;
                            g.this.a(bVar3, bVar3);
                            com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29858b);
                        }
                    } catch (Throwable th3) {
                        th2 = th3;
                        try {
                            g.this.a(bVar, bVar2);
                        } catch (IOException unused2) {
                        }
                        com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29858b);
                        throw th2;
                    }
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
                bVar = bVar2;
            } catch (Throwable th4) {
                th2 = th4;
                bVar = bVar2;
                g.this.a(bVar, bVar2);
                com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29858b);
                throw th2;
            }
            com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29858b);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i10, int i11, int i12, boolean z10) {
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(boolean z10, int i10, com.mbridge.msdk.thrid.okio.e eVar, int i11) throws IOException {
            if (g.this.b(i10)) {
                g.this.a(i10, eVar, i11, z10);
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.http2.i a10 = g.this.a(i10);
            if (a10 == null) {
                g.this.c(i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR);
                long j10 = i11;
                g.this.g(j10);
                eVar.skip(j10);
                return;
            }
            a10.a(eVar, i11);
            if (z10) {
                a10.i();
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(boolean z10, int i10, int i11, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
            if (g.this.b(i10)) {
                g.this.b(i10, list, z10);
                return;
            }
            synchronized (g.this) {
                try {
                    com.mbridge.msdk.thrid.okhttp.internal.http2.i a10 = g.this.a(i10);
                    if (a10 == null) {
                        if (g.this.f29803g) {
                            return;
                        }
                        g gVar = g.this;
                        if (i10 <= gVar.f29801e) {
                            return;
                        }
                        if (i10 % 2 == gVar.f29802f % 2) {
                            return;
                        }
                        com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar = new com.mbridge.msdk.thrid.okhttp.internal.http2.i(i10, g.this, false, z10, com.mbridge.msdk.thrid.okhttp.internal.c.b(list));
                        g gVar2 = g.this;
                        gVar2.f29801e = i10;
                        gVar2.f29799c.put(Integer.valueOf(i10), iVar);
                        g.f29796z.execute(new a("OkHttp %s stream %d", new Object[]{g.this.f29800d, Integer.valueOf(i10)}, iVar));
                        return;
                    }
                    a10.a(list);
                    if (z10) {
                        a10.i();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        void b(boolean z10, m mVar) {
            com.mbridge.msdk.thrid.okhttp.internal.http2.i[] iVarArr;
            long j10;
            synchronized (g.this.f29819w) {
                synchronized (g.this) {
                    int c10 = g.this.f29817u.c();
                    if (z10) {
                        g.this.f29817u.a();
                    }
                    g.this.f29817u.a(mVar);
                    int c11 = g.this.f29817u.c();
                    iVarArr = null;
                    if (c11 == -1 || c11 == c10) {
                        j10 = 0;
                    } else {
                        j10 = c11 - c10;
                        if (!g.this.f29799c.isEmpty()) {
                            iVarArr = (com.mbridge.msdk.thrid.okhttp.internal.http2.i[]) g.this.f29799c.values().toArray(new com.mbridge.msdk.thrid.okhttp.internal.http2.i[g.this.f29799c.size()]);
                        }
                    }
                }
                try {
                    g gVar = g.this;
                    gVar.f29819w.a(gVar.f29817u);
                } catch (IOException unused) {
                    g.this.h();
                }
            }
            if (iVarArr != null) {
                for (com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar : iVarArr) {
                    synchronized (iVar) {
                        iVar.a(j10);
                    }
                }
            }
            g.f29796z.execute(new c("OkHttp %s settings", g.this.f29800d));
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
            if (g.this.b(i10)) {
                g.this.a(i10, bVar);
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.http2.i c10 = g.this.c(i10);
            if (c10 != null) {
                c10.d(bVar);
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(boolean z10, m mVar) {
            try {
                g.this.f29804h.execute(new b("OkHttp %s ACK Settings", new Object[]{g.this.f29800d}, z10, mVar));
            } catch (RejectedExecutionException unused) {
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(boolean z10, int i10, int i11) {
            if (!z10) {
                try {
                    g.this.f29804h.execute(new k(true, i10, i11));
                    return;
                } catch (RejectedExecutionException unused) {
                    return;
                }
            }
            synchronized (g.this) {
                try {
                    if (i10 == 1) {
                        g.c(g.this);
                    } else if (i10 == 2) {
                        g.h(g.this);
                    } else if (i10 == 3) {
                        g.i(g.this);
                        g.this.notifyAll();
                    }
                } finally {
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar, com.mbridge.msdk.thrid.okio.f fVar) {
            com.mbridge.msdk.thrid.okhttp.internal.http2.i[] iVarArr;
            fVar.e();
            synchronized (g.this) {
                iVarArr = (com.mbridge.msdk.thrid.okhttp.internal.http2.i[]) g.this.f29799c.values().toArray(new com.mbridge.msdk.thrid.okhttp.internal.http2.i[g.this.f29799c.size()]);
                g.this.f29803g = true;
            }
            for (com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar : iVarArr) {
                if (iVar.c() > i10 && iVar.f()) {
                    iVar.d(com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM);
                    g.this.c(iVar.c());
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i10, long j10) {
            if (i10 == 0) {
                synchronized (g.this) {
                    g gVar = g.this;
                    gVar.f29815s += j10;
                    gVar.notifyAll();
                }
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.http2.i a10 = g.this.a(i10);
            if (a10 != null) {
                synchronized (a10) {
                    a10.a(j10);
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i10, int i11, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
            g.this.a(i11, list);
        }
    }

    g(h hVar) {
        int i10;
        m mVar = new m();
        this.f29817u = mVar;
        this.f29821y = new LinkedHashSet();
        this.f29806j = hVar.f29849f;
        boolean z10 = hVar.f29850g;
        this.f29797a = z10;
        this.f29798b = hVar.f29848e;
        if (z10) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        this.f29802f = i10;
        if (z10) {
            this.f29802f = i10 + 2;
        }
        if (z10) {
            this.f29816t.a(7, 16777216);
        }
        String str = hVar.f29845b;
        this.f29800d = str;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, com.mbridge.msdk.thrid.okhttp.internal.c.a(com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp %s Writer", str), false));
        this.f29804h = scheduledThreadPoolExecutor;
        if (hVar.f29851h != 0) {
            i iVar = new i();
            long j10 = hVar.f29851h;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(iVar, j10, j10, TimeUnit.MILLISECONDS);
        }
        this.f29805i = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), com.mbridge.msdk.thrid.okhttp.internal.c.a(com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp %s Push Observer", str), true));
        mVar.a(7, 65535);
        mVar.a(5, 16384);
        this.f29815s = mVar.c();
        this.f29818v = hVar.f29844a;
        this.f29819w = new com.mbridge.msdk.thrid.okhttp.internal.http2.j(hVar.f29847d, z10);
        this.f29820x = new l(new com.mbridge.msdk.thrid.okhttp.internal.http2.h(hVar.f29846c, z10));
    }

    static /* synthetic */ long c(g gVar) {
        long j10 = gVar.f29808l;
        gVar.f29808l = 1 + j10;
        return j10;
    }

    static /* synthetic */ long e(g gVar) {
        long j10 = gVar.f29807k;
        gVar.f29807k = 1 + j10;
        return j10;
    }

    static /* synthetic */ long h(g gVar) {
        long j10 = gVar.f29810n;
        gVar.f29810n = 1 + j10;
        return j10;
    }

    static /* synthetic */ long i(g gVar) {
        long j10 = gVar.f29812p;
        gVar.f29812p = 1 + j10;
        return j10;
    }

    boolean b(int i10) {
        return i10 != 0 && (i10 & 1) == 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.NO_ERROR, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
    }

    public void flush() throws IOException {
        this.f29819w.flush();
    }

    public synchronized int k() {
        return this.f29817u.b(Integer.MAX_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        synchronized (this) {
            try {
                long j10 = this.f29810n;
                long j11 = this.f29809m;
                if (j10 < j11) {
                    return;
                }
                this.f29809m = j11 + 1;
                this.f29813q = System.nanoTime() + 1000000000;
                try {
                    this.f29804h.execute(new c("OkHttp %s ping", this.f29800d));
                } catch (RejectedExecutionException unused) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void m() throws IOException {
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        try {
            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar = com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR;
            a(bVar, bVar);
        } catch (IOException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized com.mbridge.msdk.thrid.okhttp.internal.http2.i c(int i10) {
        com.mbridge.msdk.thrid.okhttp.internal.http2.i remove;
        remove = this.f29799c.remove(Integer.valueOf(i10));
        notifyAll();
        return remove;
    }

    public synchronized boolean f(long j10) {
        if (this.f29803g) {
            return false;
        }
        if (this.f29810n < this.f29809m) {
            if (j10 >= this.f29813q) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void g(long j10) {
        long j11 = this.f29814r + j10;
        this.f29814r = j11;
        if (j11 >= this.f29816t.c() / 2) {
            a(0, this.f29814r);
            this.f29814r = 0L;
        }
    }

    synchronized com.mbridge.msdk.thrid.okhttp.internal.http2.i a(int i10) {
        return this.f29799c.get(Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) throws IOException {
        this.f29819w.a(i10, bVar);
    }

    /* compiled from: Http2Connection.java */
    /* loaded from: classes6.dex */
    public static class h {

        /* renamed from: a  reason: collision with root package name */
        Socket f29844a;

        /* renamed from: b  reason: collision with root package name */
        String f29845b;

        /* renamed from: c  reason: collision with root package name */
        com.mbridge.msdk.thrid.okio.e f29846c;

        /* renamed from: d  reason: collision with root package name */
        com.mbridge.msdk.thrid.okio.d f29847d;

        /* renamed from: e  reason: collision with root package name */
        j f29848e = j.f29853a;

        /* renamed from: f  reason: collision with root package name */
        com.mbridge.msdk.thrid.okhttp.internal.http2.l f29849f = com.mbridge.msdk.thrid.okhttp.internal.http2.l.f29916a;

        /* renamed from: g  reason: collision with root package name */
        boolean f29850g;

        /* renamed from: h  reason: collision with root package name */
        int f29851h;

        public h(boolean z10) {
            this.f29850g = z10;
        }

        public h a(Socket socket, String str, com.mbridge.msdk.thrid.okio.e eVar, com.mbridge.msdk.thrid.okio.d dVar) {
            this.f29844a = socket;
            this.f29845b = str;
            this.f29846c = eVar;
            this.f29847d = dVar;
            return this;
        }

        public h a(j jVar) {
            this.f29848e = jVar;
            return this;
        }

        public h a(int i10) {
            this.f29851h = i10;
            return this;
        }

        public g a() {
            return new g(this);
        }
    }

    public com.mbridge.msdk.thrid.okhttp.internal.http2.i a(List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list, boolean z10) throws IOException {
        return a(0, list, z10);
    }

    void b(int i10, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list, boolean z10) {
        try {
            a(new e("OkHttp %s Push Headers[%s]", new Object[]{this.f29800d, Integer.valueOf(i10)}, i10, list, z10));
        } catch (RejectedExecutionException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        try {
            this.f29804h.execute(new a("OkHttp %s stream %d", new Object[]{this.f29800d, Integer.valueOf(i10)}, i10, bVar));
        } catch (RejectedExecutionException unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0044 A[Catch: all -> 0x0013, TryCatch #1 {all -> 0x0056, blocks: (B:4:0x0005, B:26:0x0050, B:32:0x0061, B:29:0x0058, B:31:0x005c, B:36:0x006a, B:37:0x0071, B:5:0x0006, B:7:0x000d, B:10:0x0015, B:12:0x0019, B:14:0x002c, B:16:0x0034, B:21:0x003e, B:23:0x0044, B:24:0x004d, B:38:0x0072, B:39:0x0077), top: B:44:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.mbridge.msdk.thrid.okhttp.internal.http2.i a(int r11, java.util.List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> r12, boolean r13) throws java.io.IOException {
        /*
            r10 = this;
            r6 = r13 ^ 1
            com.mbridge.msdk.thrid.okhttp.internal.http2.j r7 = r10.f29819w
            monitor-enter(r7)
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L56
            int r0 = r10.f29802f     // Catch: java.lang.Throwable -> L13
            r1 = 1073741823(0x3fffffff, float:1.9999999)
            if (r0 <= r1) goto L15
            com.mbridge.msdk.thrid.okhttp.internal.http2.b r0 = com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM     // Catch: java.lang.Throwable -> L13
            r10.a(r0)     // Catch: java.lang.Throwable -> L13
            goto L15
        L13:
            r11 = move-exception
            goto L78
        L15:
            boolean r0 = r10.f29803g     // Catch: java.lang.Throwable -> L13
            if (r0 != 0) goto L72
            int r8 = r10.f29802f     // Catch: java.lang.Throwable -> L13
            int r0 = r8 + 2
            r10.f29802f = r0     // Catch: java.lang.Throwable -> L13
            com.mbridge.msdk.thrid.okhttp.internal.http2.i r9 = new com.mbridge.msdk.thrid.okhttp.internal.http2.i     // Catch: java.lang.Throwable -> L13
            r5 = 0
            r4 = 0
            r0 = r9
            r1 = r8
            r2 = r10
            r3 = r6
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L13
            if (r13 == 0) goto L3d
            long r0 = r10.f29815s     // Catch: java.lang.Throwable -> L13
            r2 = 0
            int r13 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r13 == 0) goto L3d
            long r0 = r9.f29879b     // Catch: java.lang.Throwable -> L13
            int r13 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r13 != 0) goto L3b
            goto L3d
        L3b:
            r13 = 0
            goto L3e
        L3d:
            r13 = 1
        L3e:
            boolean r0 = r9.g()     // Catch: java.lang.Throwable -> L13
            if (r0 == 0) goto L4d
            java.util.Map<java.lang.Integer, com.mbridge.msdk.thrid.okhttp.internal.http2.i> r0 = r10.f29799c     // Catch: java.lang.Throwable -> L13
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L13
            r0.put(r1, r9)     // Catch: java.lang.Throwable -> L13
        L4d:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L13
            if (r11 != 0) goto L58
            com.mbridge.msdk.thrid.okhttp.internal.http2.j r0 = r10.f29819w     // Catch: java.lang.Throwable -> L56
            r0.a(r6, r8, r11, r12)     // Catch: java.lang.Throwable -> L56
            goto L61
        L56:
            r11 = move-exception
            goto L7a
        L58:
            boolean r0 = r10.f29797a     // Catch: java.lang.Throwable -> L56
            if (r0 != 0) goto L6a
            com.mbridge.msdk.thrid.okhttp.internal.http2.j r0 = r10.f29819w     // Catch: java.lang.Throwable -> L56
            r0.a(r11, r8, r12)     // Catch: java.lang.Throwable -> L56
        L61:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L56
            if (r13 == 0) goto L69
            com.mbridge.msdk.thrid.okhttp.internal.http2.j r11 = r10.f29819w
            r11.flush()
        L69:
            return r9
        L6a:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L56
            java.lang.String r12 = "client streams shouldn't have associated stream IDs"
            r11.<init>(r12)     // Catch: java.lang.Throwable -> L56
            throw r11     // Catch: java.lang.Throwable -> L56
        L72:
            com.mbridge.msdk.thrid.okhttp.internal.http2.a r11 = new com.mbridge.msdk.thrid.okhttp.internal.http2.a     // Catch: java.lang.Throwable -> L13
            r11.<init>()     // Catch: java.lang.Throwable -> L13
            throw r11     // Catch: java.lang.Throwable -> L13
        L78:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L13
            throw r11     // Catch: java.lang.Throwable -> L56
        L7a:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L56
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okhttp.internal.http2.g.a(int, java.util.List, boolean):com.mbridge.msdk.thrid.okhttp.internal.http2.i");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0032, code lost:
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0033, code lost:
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r4), r8.f29819w.h());
        r6 = r2;
        r8.f29815s -= r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r9, boolean r10, com.mbridge.msdk.thrid.okio.c r11, long r12) throws java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto Ld
            com.mbridge.msdk.thrid.okhttp.internal.http2.j r12 = r8.f29819w
            r12.a(r10, r9, r11, r3)
            return
        Ld:
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 <= 0) goto L68
            monitor-enter(r8)
        L12:
            long r4 = r8.f29815s     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L59
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 > 0) goto L33
            java.util.Map<java.lang.Integer, com.mbridge.msdk.thrid.okhttp.internal.http2.i> r2 = r8.f29799c     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L59
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L59
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L59
            if (r2 == 0) goto L2a
            r8.wait()     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L59
            goto L12
        L28:
            r9 = move-exception
            goto L66
        L2a:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L59
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L59
            throw r9     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L59
        L33:
            long r4 = java.lang.Math.min(r12, r4)     // Catch: java.lang.Throwable -> L28
            int r2 = (int) r4     // Catch: java.lang.Throwable -> L28
            com.mbridge.msdk.thrid.okhttp.internal.http2.j r4 = r8.f29819w     // Catch: java.lang.Throwable -> L28
            int r4 = r4.h()     // Catch: java.lang.Throwable -> L28
            int r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L28
            long r4 = r8.f29815s     // Catch: java.lang.Throwable -> L28
            long r6 = (long) r2     // Catch: java.lang.Throwable -> L28
            long r4 = r4 - r6
            r8.f29815s = r4     // Catch: java.lang.Throwable -> L28
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L28
            long r12 = r12 - r6
            com.mbridge.msdk.thrid.okhttp.internal.http2.j r4 = r8.f29819w
            if (r10 == 0) goto L54
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L54
            r5 = 1
            goto L55
        L54:
            r5 = r3
        L55:
            r4.a(r5, r9, r11, r2)
            goto Ld
        L59:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L28
            r9.interrupt()     // Catch: java.lang.Throwable -> L28
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L28
            r9.<init>()     // Catch: java.lang.Throwable -> L28
            throw r9     // Catch: java.lang.Throwable -> L28
        L66:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L28
            throw r9
        L68:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okhttp.internal.http2.g.a(int, boolean, com.mbridge.msdk.thrid.okio.c, long):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i10, long j10) {
        try {
            this.f29804h.execute(new b("OkHttp Window Update %s stream %d", new Object[]{this.f29800d, Integer.valueOf(i10)}, i10, j10));
        } catch (RejectedExecutionException unused) {
        }
    }

    void a(boolean z10, int i10, int i11) {
        try {
            this.f29819w.a(z10, i10, i11);
        } catch (IOException unused) {
            h();
        }
    }

    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) throws IOException {
        synchronized (this.f29819w) {
            synchronized (this) {
                if (this.f29803g) {
                    return;
                }
                this.f29803g = true;
                this.f29819w.a(this.f29801e, bVar, com.mbridge.msdk.thrid.okhttp.internal.c.f29601a);
            }
        }
    }

    void a(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar2) throws IOException {
        if (!A && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        com.mbridge.msdk.thrid.okhttp.internal.http2.i[] iVarArr = null;
        try {
            a(bVar);
            e = null;
        } catch (IOException e10) {
            e = e10;
        }
        synchronized (this) {
            try {
                if (!this.f29799c.isEmpty()) {
                    iVarArr = (com.mbridge.msdk.thrid.okhttp.internal.http2.i[]) this.f29799c.values().toArray(new com.mbridge.msdk.thrid.okhttp.internal.http2.i[this.f29799c.size()]);
                    this.f29799c.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (iVarArr != null) {
            for (com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar : iVarArr) {
                try {
                    iVar.a(bVar2);
                } catch (IOException e11) {
                    if (e != null) {
                        e = e11;
                    }
                }
            }
        }
        try {
            this.f29819w.close();
        } catch (IOException e12) {
            if (e == null) {
                e = e12;
            }
        }
        try {
            this.f29818v.close();
        } catch (IOException e13) {
            e = e13;
        }
        this.f29804h.shutdown();
        this.f29805i.shutdown();
        if (e != null) {
            throw e;
        }
    }

    void a(boolean z10) throws IOException {
        if (z10) {
            this.f29819w.d();
            this.f29819w.b(this.f29816t);
            int c10 = this.f29816t.c();
            if (c10 != 65535) {
                this.f29819w.a(0, c10 - 65535);
            }
        }
        new Thread(this.f29820x).start();
    }

    void a(int i10, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
        synchronized (this) {
            try {
                if (this.f29821y.contains(Integer.valueOf(i10))) {
                    c(i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR);
                    return;
                }
                this.f29821y.add(Integer.valueOf(i10));
                try {
                    a(new d("OkHttp %s Push Request[%s]", new Object[]{this.f29800d, Integer.valueOf(i10)}, i10, list));
                } catch (RejectedExecutionException unused) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void a(int i10, com.mbridge.msdk.thrid.okio.e eVar, int i11, boolean z10) throws IOException {
        com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
        long j10 = i11;
        eVar.e(j10);
        eVar.b(cVar, j10);
        if (cVar.size() == j10) {
            a(new f("OkHttp %s Push Data[%s]", new Object[]{this.f29800d, Integer.valueOf(i10)}, i10, cVar, i11, z10));
            return;
        }
        throw new IOException(cVar.size() + " != " + i11);
    }

    void a(int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        a(new C0433g("OkHttp %s Push Reset[%s]", new Object[]{this.f29800d, Integer.valueOf(i10)}, i10, bVar));
    }

    private synchronized void a(com.mbridge.msdk.thrid.okhttp.internal.b bVar) {
        if (!this.f29803g) {
            this.f29805i.execute(bVar);
        }
    }
}
