package com.applovin.impl.sdk;

import com.applovin.impl.v2;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final k f9655a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f9656b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Object f9657c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final Map f9658d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private final Object f9659e = new Object();

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f9660a;

        /* renamed from: b  reason: collision with root package name */
        private final String f9661b;

        /* renamed from: c  reason: collision with root package name */
        private final String f9662c;

        /* renamed from: d  reason: collision with root package name */
        private final String f9663d;

        /* renamed from: e  reason: collision with root package name */
        private final String f9664e;

        /* renamed from: f  reason: collision with root package name */
        private final String f9665f;

        /* renamed from: g  reason: collision with root package name */
        private final String f9666g;

        /* renamed from: h  reason: collision with root package name */
        private long f9667h;

        /* renamed from: i  reason: collision with root package name */
        private final ArrayDeque f9668i;

        public String b() {
            return this.f9663d;
        }

        public String c() {
            return this.f9662c;
        }

        public String d() {
            return this.f9664e;
        }

        public String e() {
            return this.f9665f;
        }

        public String f() {
            return this.f9666g;
        }

        public String g() {
            return this.f9661b;
        }

        public String h() {
            return this.f9665f;
        }

        public c i() {
            return (c) this.f9668i.getLast();
        }

        public String toString() {
            return "AdInfo{state='" + i() + "', adUnitId='" + this.f9660a + "', format='" + this.f9661b + "', adapterName='" + this.f9662c + "', adapterClass='" + this.f9663d + "', adapterVersion='" + this.f9664e + "', bCode='" + this.f9665f + "', creativeId='" + this.f9666g + "', updated=" + this.f9667h + '}';
        }

        private b(v2 v2Var, c cVar) {
            this.f9668i = new ArrayDeque();
            this.f9660a = v2Var.getAdUnitId();
            this.f9661b = v2Var.getFormat().getLabel();
            this.f9662c = v2Var.c();
            this.f9663d = v2Var.b();
            this.f9664e = v2Var.z();
            this.f9665f = v2Var.C();
            this.f9666g = v2Var.getCreativeId();
            a(cVar);
        }

        public String a() {
            return this.f9660a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(c cVar) {
            this.f9667h = System.currentTimeMillis();
            this.f9668i.add(cVar);
        }
    }

    /* loaded from: classes2.dex */
    public enum c {
        LOADING("loading"),
        LOAD("load"),
        SHOW("show"),
        HIDE("hide"),
        CLICK("click"),
        DESTROY("destroy"),
        SHOW_ERROR("show_error");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f9677a;

        c(String str) {
            this.f9677a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f9677a;
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(b bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(k kVar) {
        this.f9655a = kVar;
        a();
    }

    public void a(v2 v2Var, c cVar) {
        synchronized (this.f9659e) {
            try {
                String C = v2Var.C();
                b bVar = (b) this.f9658d.get(C);
                if (bVar == null) {
                    if (cVar == c.DESTROY) {
                        return;
                    }
                    bVar = new b(v2Var, cVar);
                    this.f9658d.put(C, bVar);
                } else if (bVar.i() == cVar) {
                    return;
                } else {
                    bVar.a(cVar);
                }
                if (cVar == c.DESTROY) {
                    this.f9658d.remove(C);
                }
                a(bVar, cVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a() {
        synchronized (this.f9657c) {
            try {
                for (c cVar : c.values()) {
                    this.f9656b.put(cVar, new HashSet());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a(d dVar, Set set) {
        synchronized (this.f9657c) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    a((c) it.next()).add(dVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a(d dVar) {
        synchronized (this.f9657c) {
            try {
                for (c cVar : this.f9656b.keySet()) {
                    a(cVar).remove(dVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private Set a(c cVar) {
        synchronized (this.f9657c) {
            try {
                Set set = (Set) this.f9656b.get(cVar);
                if (com.applovin.impl.k1.a(set)) {
                    return set;
                }
                return new HashSet();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void a(b bVar, c cVar) {
        synchronized (this.f9657c) {
            try {
                for (d dVar : a(cVar)) {
                    dVar.a(bVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
