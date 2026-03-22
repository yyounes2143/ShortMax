package com.mbridge.msdk.thrid.okhttp.internal.http1;

import com.mbridge.msdk.thrid.okhttp.internal.http.h;
import com.mbridge.msdk.thrid.okhttp.internal.http.k;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okhttp.z;
import com.mbridge.msdk.thrid.okio.i;
import com.mbridge.msdk.thrid.okio.l;
import com.mbridge.msdk.thrid.okio.r;
import com.mbridge.msdk.thrid.okio.s;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
/* compiled from: Http1Codec.java */
/* loaded from: classes6.dex */
public final class a implements com.mbridge.msdk.thrid.okhttp.internal.http.c {

    /* renamed from: a  reason: collision with root package name */
    final t f29715a;

    /* renamed from: b  reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.internal.connection.g f29716b;

    /* renamed from: c  reason: collision with root package name */
    final com.mbridge.msdk.thrid.okio.e f29717c;

    /* renamed from: d  reason: collision with root package name */
    final com.mbridge.msdk.thrid.okio.d f29718d;

    /* renamed from: e  reason: collision with root package name */
    int f29719e = 0;

    /* renamed from: f  reason: collision with root package name */
    private long f29720f = 262144;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1Codec.java */
    /* loaded from: classes6.dex */
    public abstract class b implements s {

        /* renamed from: a  reason: collision with root package name */
        protected final i f29721a;

        /* renamed from: b  reason: collision with root package name */
        protected boolean f29722b;

        /* renamed from: c  reason: collision with root package name */
        protected long f29723c;

        private b() {
            this.f29721a = new i(a.this.f29717c.b());
            this.f29723c = 0L;
        }

        protected final void a(boolean z10, IOException iOException) throws IOException {
            a aVar = a.this;
            int i10 = aVar.f29719e;
            if (i10 == 6) {
                return;
            }
            if (i10 == 5) {
                aVar.a(this.f29721a);
                a aVar2 = a.this;
                aVar2.f29719e = 6;
                com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = aVar2.f29716b;
                if (gVar != null) {
                    gVar.a(!z10, aVar2, this.f29723c, iOException);
                    return;
                }
                return;
            }
            throw new IllegalStateException("state: " + a.this.f29719e);
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public com.mbridge.msdk.thrid.okio.t b() {
            return this.f29721a;
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            try {
                long b10 = a.this.f29717c.b(cVar, j10);
                if (b10 > 0) {
                    this.f29723c += b10;
                }
                return b10;
            } catch (IOException e10) {
                a(false, e10);
                throw e10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1Codec.java */
    /* loaded from: classes6.dex */
    public final class c implements r {

        /* renamed from: a  reason: collision with root package name */
        private final i f29725a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f29726b;

        c() {
            this.f29725a = new i(a.this.f29718d.b());
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            if (!this.f29726b) {
                if (j10 == 0) {
                    return;
                }
                a.this.f29718d.a(j10);
                a.this.f29718d.a("\r\n");
                a.this.f29718d.a(cVar, j10);
                a.this.f29718d.a("\r\n");
                return;
            }
            throw new IllegalStateException("closed");
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public com.mbridge.msdk.thrid.okio.t b() {
            return this.f29725a;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            if (this.f29726b) {
                return;
            }
            this.f29726b = true;
            a.this.f29718d.a("0\r\n\r\n");
            a.this.a(this.f29725a);
            a.this.f29719e = 3;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (this.f29726b) {
                return;
            }
            a.this.f29718d.flush();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1Codec.java */
    /* loaded from: classes6.dex */
    public class d extends b {

        /* renamed from: e  reason: collision with root package name */
        private final q f29728e;

        /* renamed from: f  reason: collision with root package name */
        private long f29729f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f29730g;

        d(q qVar) {
            super();
            this.f29729f = -1L;
            this.f29730g = true;
            this.f29728e = qVar;
        }

        private void d() throws IOException {
            if (this.f29729f != -1) {
                a.this.f29717c.c();
            }
            try {
                this.f29729f = a.this.f29717c.i();
                String trim = a.this.f29717c.c().trim();
                if (this.f29729f >= 0 && (trim.isEmpty() || trim.startsWith(";"))) {
                    if (this.f29729f == 0) {
                        this.f29730g = false;
                        com.mbridge.msdk.thrid.okhttp.internal.http.e.a(a.this.f29715a.i(), this.f29728e, a.this.f());
                        a(true, null);
                        return;
                    }
                    return;
                }
                throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f29729f + trim + "\"");
            } catch (NumberFormatException e10) {
                throw new ProtocolException(e10.getMessage());
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http1.a.b, com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            if (j10 >= 0) {
                if (!this.f29722b) {
                    if (!this.f29730g) {
                        return -1L;
                    }
                    long j11 = this.f29729f;
                    if (j11 == 0 || j11 == -1) {
                        d();
                        if (!this.f29730g) {
                            return -1L;
                        }
                    }
                    long b10 = super.b(cVar, Math.min(j10, this.f29729f));
                    if (b10 != -1) {
                        this.f29729f -= b10;
                        return b10;
                    }
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    a(false, protocolException);
                    throw protocolException;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f29722b) {
                return;
            }
            if (this.f29730g && !com.mbridge.msdk.thrid.okhttp.internal.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, null);
            }
            this.f29722b = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1Codec.java */
    /* loaded from: classes6.dex */
    public final class e implements r {

        /* renamed from: a  reason: collision with root package name */
        private final i f29732a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f29733b;

        /* renamed from: c  reason: collision with root package name */
        private long f29734c;

        e(long j10) {
            this.f29732a = new i(a.this.f29718d.b());
            this.f29734c = j10;
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            if (!this.f29733b) {
                com.mbridge.msdk.thrid.okhttp.internal.c.a(cVar.size(), 0L, j10);
                if (j10 <= this.f29734c) {
                    a.this.f29718d.a(cVar, j10);
                    this.f29734c -= j10;
                    return;
                }
                throw new ProtocolException("expected " + this.f29734c + " bytes but received " + j10);
            }
            throw new IllegalStateException("closed");
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public com.mbridge.msdk.thrid.okio.t b() {
            return this.f29732a;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f29733b) {
                return;
            }
            this.f29733b = true;
            if (this.f29734c <= 0) {
                a.this.a(this.f29732a);
                a.this.f29719e = 3;
                return;
            }
            throw new ProtocolException("unexpected end of stream");
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
        public void flush() throws IOException {
            if (this.f29733b) {
                return;
            }
            a.this.f29718d.flush();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1Codec.java */
    /* loaded from: classes6.dex */
    public class f extends b {

        /* renamed from: e  reason: collision with root package name */
        private long f29736e;

        f(long j10) throws IOException {
            super();
            this.f29736e = j10;
            if (j10 == 0) {
                a(true, null);
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http1.a.b, com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            if (j10 >= 0) {
                if (!this.f29722b) {
                    long j11 = this.f29736e;
                    if (j11 == 0) {
                        return -1L;
                    }
                    long b10 = super.b(cVar, Math.min(j11, j10));
                    if (b10 != -1) {
                        long j12 = this.f29736e - b10;
                        this.f29736e = j12;
                        if (j12 == 0) {
                            a(true, null);
                        }
                        return b10;
                    }
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    a(false, protocolException);
                    throw protocolException;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f29722b) {
                return;
            }
            if (this.f29736e != 0 && !com.mbridge.msdk.thrid.okhttp.internal.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, null);
            }
            this.f29722b = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1Codec.java */
    /* loaded from: classes6.dex */
    public class g extends b {

        /* renamed from: e  reason: collision with root package name */
        private boolean f29738e;

        g() {
            super();
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http1.a.b, com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            if (j10 >= 0) {
                if (!this.f29722b) {
                    if (this.f29738e) {
                        return -1L;
                    }
                    long b10 = super.b(cVar, j10);
                    if (b10 == -1) {
                        this.f29738e = true;
                        a(true, null);
                        return -1L;
                    }
                    return b10;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f29722b) {
                return;
            }
            if (!this.f29738e) {
                a(false, null);
            }
            this.f29722b = true;
        }
    }

    public a(t tVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, com.mbridge.msdk.thrid.okio.e eVar, com.mbridge.msdk.thrid.okio.d dVar) {
        this.f29715a = tVar;
        this.f29716b = gVar;
        this.f29717c = eVar;
        this.f29718d = dVar;
    }

    private String e() throws IOException {
        String d10 = this.f29717c.d(this.f29720f);
        this.f29720f -= d10.length();
        return d10;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public r a(w wVar, long j10) {
        if ("chunked".equalsIgnoreCase(wVar.a("Transfer-Encoding"))) {
            return c();
        }
        if (j10 != -1) {
            return a(j10);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void b() throws IOException {
        this.f29718d.flush();
    }

    public r c() {
        if (this.f29719e == 1) {
            this.f29719e = 2;
            return new c();
        }
        throw new IllegalStateException("state: " + this.f29719e);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void cancel() {
        com.mbridge.msdk.thrid.okhttp.internal.connection.c c10 = this.f29716b.c();
        if (c10 != null) {
            c10.d();
        }
    }

    public s d() throws IOException {
        if (this.f29719e == 4) {
            com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = this.f29716b;
            if (gVar != null) {
                this.f29719e = 5;
                gVar.e();
                return new g();
            }
            throw new IllegalStateException("streamAllocation == null");
        }
        throw new IllegalStateException("state: " + this.f29719e);
    }

    public p f() throws IOException {
        p.a aVar = new p.a();
        while (true) {
            String e10 = e();
            if (e10.length() != 0) {
                com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(aVar, e10);
            } else {
                return aVar.a();
            }
        }
    }

    public s b(long j10) throws IOException {
        if (this.f29719e == 4) {
            this.f29719e = 5;
            return new f(j10);
        }
        throw new IllegalStateException("state: " + this.f29719e);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void a(w wVar) throws IOException {
        a(wVar.c(), com.mbridge.msdk.thrid.okhttp.internal.http.i.a(wVar, this.f29716b.c().c().b().type()));
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public z a(y yVar) throws IOException {
        com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = this.f29716b;
        gVar.f29674f.responseBodyStart(gVar.f29673e);
        String b10 = yVar.b(CommonGatewayClient.HEADER_CONTENT_TYPE);
        if (!com.mbridge.msdk.thrid.okhttp.internal.http.e.b(yVar)) {
            return new h(b10, 0L, l.a(b(0L)));
        }
        if ("chunked".equalsIgnoreCase(yVar.b("Transfer-Encoding"))) {
            return new h(b10, -1L, l.a(a(yVar.r().g())));
        }
        long a10 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(yVar);
        if (a10 != -1) {
            return new h(b10, a10, l.a(b(a10)));
        }
        return new h(b10, -1L, l.a(d()));
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void a() throws IOException {
        this.f29718d.flush();
    }

    public void a(p pVar, String str) throws IOException {
        if (this.f29719e == 0) {
            this.f29718d.a(str).a("\r\n");
            int b10 = pVar.b();
            for (int i10 = 0; i10 < b10; i10++) {
                this.f29718d.a(pVar.a(i10)).a(": ").a(pVar.b(i10)).a("\r\n");
            }
            this.f29718d.a("\r\n");
            this.f29719e = 1;
            return;
        }
        throw new IllegalStateException("state: " + this.f29719e);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public y.a a(boolean z10) throws IOException {
        int i10 = this.f29719e;
        if (i10 != 1 && i10 != 3) {
            throw new IllegalStateException("state: " + this.f29719e);
        }
        try {
            k a10 = k.a(e());
            y.a a11 = new y.a().a(a10.f29712a).a(a10.f29713b).a(a10.f29714c).a(f());
            if (z10 && a10.f29713b == 100) {
                return null;
            }
            if (a10.f29713b == 100) {
                this.f29719e = 3;
                return a11;
            }
            this.f29719e = 4;
            return a11;
        } catch (EOFException e10) {
            IOException iOException = new IOException("unexpected end of stream on " + this.f29716b);
            iOException.initCause(e10);
            throw iOException;
        }
    }

    public r a(long j10) {
        if (this.f29719e == 1) {
            this.f29719e = 2;
            return new e(j10);
        }
        throw new IllegalStateException("state: " + this.f29719e);
    }

    public s a(q qVar) throws IOException {
        if (this.f29719e == 4) {
            this.f29719e = 5;
            return new d(qVar);
        }
        throw new IllegalStateException("state: " + this.f29719e);
    }

    void a(i iVar) {
        com.mbridge.msdk.thrid.okio.t g10 = iVar.g();
        iVar.a(com.mbridge.msdk.thrid.okio.t.f30175d);
        g10.a();
        g10.b();
    }
}
