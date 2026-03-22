package com.mbridge.msdk.thrid.okhttp;

import androidx.browser.trusted.sharing.ShareTarget;
import com.mbridge.msdk.thrid.okhttp.p;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* compiled from: Request.java */
/* loaded from: classes6.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    final q f30077a;

    /* renamed from: b  reason: collision with root package name */
    final String f30078b;

    /* renamed from: c  reason: collision with root package name */
    final p f30079c;

    /* renamed from: d  reason: collision with root package name */
    final x f30080d;

    /* renamed from: e  reason: collision with root package name */
    final Map<Class<?>, Object> f30081e;

    /* renamed from: f  reason: collision with root package name */
    private volatile c f30082f;

    /* compiled from: Request.java */
    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        q f30083a;

        /* renamed from: b  reason: collision with root package name */
        String f30084b;

        /* renamed from: c  reason: collision with root package name */
        p.a f30085c;

        /* renamed from: d  reason: collision with root package name */
        x f30086d;

        /* renamed from: e  reason: collision with root package name */
        Map<Class<?>, Object> f30087e;

        public a() {
            this.f30087e = Collections.emptyMap();
            this.f30084b = ShareTarget.METHOD_GET;
            this.f30085c = new p.a();
        }

        public a a(q qVar) {
            if (qVar != null) {
                this.f30083a = qVar;
                return this;
            }
            throw new NullPointerException("url == null");
        }

        public a b(String str) {
            if (str != null) {
                if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                    str = "http:" + str.substring(3);
                } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                    str = "https:" + str.substring(4);
                }
                return a(q.b(str));
            }
            throw new NullPointerException("url == null");
        }

        public a c() {
            return a(ShareTarget.METHOD_GET, (x) null);
        }

        public a d() {
            return a("HEAD", (x) null);
        }

        public a c(x xVar) {
            return a(ShareTarget.METHOD_POST, xVar);
        }

        public a d(x xVar) {
            return a("PUT", xVar);
        }

        public a a(String str, String str2) {
            this.f30085c.a(str, str2);
            return this;
        }

        public a a(String str) {
            this.f30085c.b(str);
            return this;
        }

        a(w wVar) {
            this.f30087e = Collections.emptyMap();
            this.f30083a = wVar.f30077a;
            this.f30084b = wVar.f30078b;
            this.f30086d = wVar.f30080d;
            this.f30087e = wVar.f30081e.isEmpty() ? Collections.emptyMap() : new LinkedHashMap<>(wVar.f30081e);
            this.f30085c = wVar.f30079c.a();
        }

        public a a(p pVar) {
            this.f30085c = pVar.a();
            return this;
        }

        public a a(c cVar) {
            String cVar2 = cVar.toString();
            return cVar2.isEmpty() ? a("Cache-Control") : b("Cache-Control", cVar2);
        }

        public a b(String str, String str2) {
            this.f30085c.c(str, str2);
            return this;
        }

        public a b() {
            return a(com.mbridge.msdk.thrid.okhttp.internal.c.f29604d);
        }

        public a a(x xVar) {
            return a("DELETE", xVar);
        }

        public a b(x xVar) {
            return a("PATCH", xVar);
        }

        public a a(String str, x xVar) {
            if (str != null) {
                if (str.length() != 0) {
                    if (xVar != null && !com.mbridge.msdk.thrid.okhttp.internal.http.f.a(str)) {
                        throw new IllegalArgumentException("method " + str + " must not have a request body.");
                    } else if (xVar == null && com.mbridge.msdk.thrid.okhttp.internal.http.f.d(str)) {
                        throw new IllegalArgumentException("method " + str + " must have a request body.");
                    } else {
                        this.f30084b = str;
                        this.f30086d = xVar;
                        return this;
                    }
                }
                throw new IllegalArgumentException("method.length() == 0");
            }
            throw new NullPointerException("method == null");
        }

        public w a() {
            if (this.f30083a != null) {
                return new w(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    w(a aVar) {
        this.f30077a = aVar.f30083a;
        this.f30078b = aVar.f30084b;
        this.f30079c = aVar.f30085c.a();
        this.f30080d = aVar.f30086d;
        this.f30081e = com.mbridge.msdk.thrid.okhttp.internal.c.a(aVar.f30087e);
    }

    public String a(String str) {
        return this.f30079c.b(str);
    }

    public c b() {
        c cVar = this.f30082f;
        if (cVar == null) {
            c a10 = c.a(this.f30079c);
            this.f30082f = a10;
            return a10;
        }
        return cVar;
    }

    public p c() {
        return this.f30079c;
    }

    public boolean d() {
        return this.f30077a.h();
    }

    public String e() {
        return this.f30078b;
    }

    public a f() {
        return new a(this);
    }

    public q g() {
        return this.f30077a;
    }

    public String toString() {
        return "Request{method=" + this.f30078b + ", url=" + this.f30077a + ", tags=" + this.f30081e + '}';
    }

    public x a() {
        return this.f30080d;
    }
}
