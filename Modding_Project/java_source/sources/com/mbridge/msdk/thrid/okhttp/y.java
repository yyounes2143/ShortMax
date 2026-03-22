package com.mbridge.msdk.thrid.okhttp;

import com.mbridge.msdk.thrid.okhttp.p;
import java.io.Closeable;
/* compiled from: Response.java */
/* loaded from: classes6.dex */
public final class y implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    final w f30091a;

    /* renamed from: b  reason: collision with root package name */
    final u f30092b;

    /* renamed from: c  reason: collision with root package name */
    final int f30093c;

    /* renamed from: d  reason: collision with root package name */
    final String f30094d;

    /* renamed from: e  reason: collision with root package name */
    final o f30095e;

    /* renamed from: f  reason: collision with root package name */
    final p f30096f;

    /* renamed from: g  reason: collision with root package name */
    final z f30097g;

    /* renamed from: h  reason: collision with root package name */
    final y f30098h;

    /* renamed from: i  reason: collision with root package name */
    final y f30099i;

    /* renamed from: j  reason: collision with root package name */
    final y f30100j;

    /* renamed from: k  reason: collision with root package name */
    final long f30101k;

    /* renamed from: l  reason: collision with root package name */
    final long f30102l;

    /* renamed from: m  reason: collision with root package name */
    private volatile c f30103m;

    /* compiled from: Response.java */
    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        w f30104a;

        /* renamed from: b  reason: collision with root package name */
        u f30105b;

        /* renamed from: c  reason: collision with root package name */
        int f30106c;

        /* renamed from: d  reason: collision with root package name */
        String f30107d;

        /* renamed from: e  reason: collision with root package name */
        o f30108e;

        /* renamed from: f  reason: collision with root package name */
        p.a f30109f;

        /* renamed from: g  reason: collision with root package name */
        z f30110g;

        /* renamed from: h  reason: collision with root package name */
        y f30111h;

        /* renamed from: i  reason: collision with root package name */
        y f30112i;

        /* renamed from: j  reason: collision with root package name */
        y f30113j;

        /* renamed from: k  reason: collision with root package name */
        long f30114k;

        /* renamed from: l  reason: collision with root package name */
        long f30115l;

        public a() {
            this.f30106c = -1;
            this.f30109f = new p.a();
        }

        public a a(w wVar) {
            this.f30104a = wVar;
            return this;
        }

        public a b(String str, String str2) {
            this.f30109f.c(str, str2);
            return this;
        }

        public a c(y yVar) {
            if (yVar != null) {
                a("networkResponse", yVar);
            }
            this.f30111h = yVar;
            return this;
        }

        public a d(y yVar) {
            if (yVar != null) {
                b(yVar);
            }
            this.f30113j = yVar;
            return this;
        }

        private void b(y yVar) {
            if (yVar.f30097g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public a a(u uVar) {
            this.f30105b = uVar;
            return this;
        }

        public a a(int i10) {
            this.f30106c = i10;
            return this;
        }

        a(y yVar) {
            this.f30106c = -1;
            this.f30104a = yVar.f30091a;
            this.f30105b = yVar.f30092b;
            this.f30106c = yVar.f30093c;
            this.f30107d = yVar.f30094d;
            this.f30108e = yVar.f30095e;
            this.f30109f = yVar.f30096f.a();
            this.f30110g = yVar.f30097g;
            this.f30111h = yVar.f30098h;
            this.f30112i = yVar.f30099i;
            this.f30113j = yVar.f30100j;
            this.f30114k = yVar.f30101k;
            this.f30115l = yVar.f30102l;
        }

        public a a(String str) {
            this.f30107d = str;
            return this;
        }

        public a b(long j10) {
            this.f30114k = j10;
            return this;
        }

        public a a(o oVar) {
            this.f30108e = oVar;
            return this;
        }

        public a a(String str, String str2) {
            this.f30109f.a(str, str2);
            return this;
        }

        public a a(p pVar) {
            this.f30109f = pVar.a();
            return this;
        }

        public a a(z zVar) {
            this.f30110g = zVar;
            return this;
        }

        public a a(y yVar) {
            if (yVar != null) {
                a("cacheResponse", yVar);
            }
            this.f30112i = yVar;
            return this;
        }

        private void a(String str, y yVar) {
            if (yVar.f30097g == null) {
                if (yVar.f30098h == null) {
                    if (yVar.f30099i == null) {
                        if (yVar.f30100j == null) {
                            return;
                        }
                        throw new IllegalArgumentException(str + ".priorResponse != null");
                    }
                    throw new IllegalArgumentException(str + ".cacheResponse != null");
                }
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            throw new IllegalArgumentException(str + ".body != null");
        }

        public a a(long j10) {
            this.f30115l = j10;
            return this;
        }

        public y a() {
            if (this.f30104a != null) {
                if (this.f30105b != null) {
                    if (this.f30106c >= 0) {
                        if (this.f30107d != null) {
                            return new y(this);
                        }
                        throw new IllegalStateException("message == null");
                    }
                    throw new IllegalStateException("code < 0: " + this.f30106c);
                }
                throw new IllegalStateException("protocol == null");
            }
            throw new IllegalStateException("request == null");
        }
    }

    y(a aVar) {
        this.f30091a = aVar.f30104a;
        this.f30092b = aVar.f30105b;
        this.f30093c = aVar.f30106c;
        this.f30094d = aVar.f30107d;
        this.f30095e = aVar.f30108e;
        this.f30096f = aVar.f30109f.a();
        this.f30097g = aVar.f30110g;
        this.f30098h = aVar.f30111h;
        this.f30099i = aVar.f30112i;
        this.f30100j = aVar.f30113j;
        this.f30101k = aVar.f30114k;
        this.f30102l = aVar.f30115l;
    }

    public String a(String str, String str2) {
        String b10 = this.f30096f.b(str);
        if (b10 != null) {
            return b10;
        }
        return str2;
    }

    public String b(String str) {
        return a(str, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        z zVar = this.f30097g;
        if (zVar != null) {
            zVar.close();
            return;
        }
        throw new IllegalStateException("response is not eligible for a body and must not be closed");
    }

    public z d() {
        return this.f30097g;
    }

    public c h() {
        c cVar = this.f30103m;
        if (cVar == null) {
            c a10 = c.a(this.f30096f);
            this.f30103m = a10;
            return a10;
        }
        return cVar;
    }

    public int k() {
        return this.f30093c;
    }

    public o l() {
        return this.f30095e;
    }

    public p m() {
        return this.f30096f;
    }

    public boolean n() {
        int i10 = this.f30093c;
        if (i10 >= 200 && i10 < 300) {
            return true;
        }
        return false;
    }

    public a o() {
        return new a(this);
    }

    public y p() {
        return this.f30100j;
    }

    public long q() {
        return this.f30102l;
    }

    public w r() {
        return this.f30091a;
    }

    public long s() {
        return this.f30101k;
    }

    public String toString() {
        return "Response{protocol=" + this.f30092b + ", code=" + this.f30093c + ", message=" + this.f30094d + ", url=" + this.f30091a.g() + '}';
    }
}
