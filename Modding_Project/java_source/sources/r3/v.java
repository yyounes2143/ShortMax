package r3;

import android.graphics.Bitmap;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import r3.m;
import r3.w;
/* compiled from: LruCountingMemoryCache.java */
/* loaded from: classes3.dex */
public class v<K, V> implements m<K, V>, w<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final m.b<K> f65537a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final l<K, m.a<K, V>> f65538b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    final l<K, m.a<K, V>> f65539c;

    /* renamed from: e  reason: collision with root package name */
    private final c0<V> f65541e;

    /* renamed from: f  reason: collision with root package name */
    private final w.a f65542f;

    /* renamed from: g  reason: collision with root package name */
    private final k2.k<x> f65543g;

    /* renamed from: h  reason: collision with root package name */
    protected x f65544h;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f65546j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f65547k;
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final Map<Bitmap, Object> f65540d = new WeakHashMap();

    /* renamed from: i  reason: collision with root package name */
    private long f65545i = SystemClock.uptimeMillis();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LruCountingMemoryCache.java */
    /* loaded from: classes3.dex */
    public class a implements c0<m.a<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c0 f65548a;

        a(c0 c0Var) {
            this.f65548a = c0Var;
        }

        @Override // r3.c0
        /* renamed from: b */
        public int a(m.a<K, V> aVar) {
            if (v.this.f65546j) {
                return aVar.f65527g;
            }
            return this.f65548a.a(aVar.f65522b.s());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LruCountingMemoryCache.java */
    /* loaded from: classes3.dex */
    public class b implements o2.h<V> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ m.a f65550a;

        b(m.a aVar) {
            this.f65550a = aVar;
        }

        @Override // o2.h
        public void release(V v10) {
            v.this.x(this.f65550a);
        }
    }

    public v(c0<V> c0Var, w.a aVar, k2.k<x> kVar, m.b<K> bVar, boolean z10, boolean z11) {
        this.f65541e = c0Var;
        this.f65538b = new l<>(z(c0Var));
        this.f65539c = new l<>(z(c0Var));
        this.f65542f = aVar;
        this.f65543g = kVar;
        this.f65544h = (x) k2.h.h(kVar.get(), "mMemoryCacheParamsSupplier returned null");
        this.f65537a = bVar;
        this.f65546j = z10;
        this.f65547k = z11;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (k() <= (r3.f65544h.f65552a - r4)) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized boolean h(int r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            r3.x r0 = r3.f65544h     // Catch: java.lang.Throwable -> L1f
            int r0 = r0.f65556e     // Catch: java.lang.Throwable -> L1f
            if (r4 > r0) goto L21
            int r0 = r3.j()     // Catch: java.lang.Throwable -> L1f
            r3.x r1 = r3.f65544h     // Catch: java.lang.Throwable -> L1f
            int r1 = r1.f65553b     // Catch: java.lang.Throwable -> L1f
            r2 = 1
            int r1 = r1 - r2
            if (r0 > r1) goto L21
            int r0 = r3.k()     // Catch: java.lang.Throwable -> L1f
            r3.x r1 = r3.f65544h     // Catch: java.lang.Throwable -> L1f
            int r1 = r1.f65552a     // Catch: java.lang.Throwable -> L1f
            int r1 = r1 - r4
            if (r0 > r1) goto L21
            goto L22
        L1f:
            r4 = move-exception
            goto L24
        L21:
            r2 = 0
        L22:
            monitor-exit(r3)
            return r2
        L24:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L1f
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: r3.v.h(int):boolean");
    }

    private synchronized void i(m.a<K, V> aVar) {
        boolean z10;
        k2.h.g(aVar);
        if (aVar.f65523c > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.i(z10);
        aVar.f65523c--;
    }

    private synchronized void l(m.a<K, V> aVar) {
        k2.h.g(aVar);
        k2.h.i(!aVar.f65524d);
        aVar.f65523c++;
    }

    private synchronized void m(m.a<K, V> aVar) {
        k2.h.g(aVar);
        k2.h.i(!aVar.f65524d);
        aVar.f65524d = true;
    }

    private synchronized void n(ArrayList<m.a<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<m.a<K, V>> it = arrayList.iterator();
            while (it.hasNext()) {
                m(it.next());
            }
        }
    }

    private synchronized boolean o(m.a<K, V> aVar) {
        if (!aVar.f65524d && aVar.f65523c == 0) {
            this.f65538b.g(aVar.f65521a, aVar);
            return true;
        }
        return false;
    }

    private void p(ArrayList<m.a<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<m.a<K, V>> it = arrayList.iterator();
            while (it.hasNext()) {
                o2.a.r(w(it.next()));
            }
        }
    }

    private static <K, V> void r(m.a<K, V> aVar) {
        m.b<K> bVar;
        if (aVar != null && (bVar = aVar.f65525e) != null) {
            bVar.a(aVar.f65521a, true);
        }
    }

    private void s(ArrayList<m.a<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<m.a<K, V>> it = arrayList.iterator();
            while (it.hasNext()) {
                t(it.next());
            }
        }
    }

    private static <K, V> void t(m.a<K, V> aVar) {
        m.b<K> bVar;
        if (aVar != null && (bVar = aVar.f65525e) != null) {
            bVar.a(aVar.f65521a, false);
        }
    }

    private synchronized void u() {
        if (this.f65545i + this.f65544h.f65557f > SystemClock.uptimeMillis()) {
            return;
        }
        this.f65545i = SystemClock.uptimeMillis();
        this.f65544h = (x) k2.h.h(this.f65543g.get(), "mMemoryCacheParamsSupplier returned null");
    }

    private synchronized o2.a<V> v(m.a<K, V> aVar) {
        l(aVar);
        return o2.a.F(aVar.f65522b.s(), new b(aVar));
    }

    private synchronized o2.a<V> w(m.a<K, V> aVar) {
        o2.a<V> aVar2;
        k2.h.g(aVar);
        if (aVar.f65524d && aVar.f65523c == 0) {
            aVar2 = aVar.f65522b;
        } else {
            aVar2 = null;
        }
        return aVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(m.a<K, V> aVar) {
        boolean o10;
        o2.a<V> w10;
        k2.h.g(aVar);
        synchronized (this) {
            i(aVar);
            o10 = o(aVar);
            w10 = w(aVar);
        }
        o2.a.r(w10);
        if (!o10) {
            aVar = null;
        }
        r(aVar);
        u();
        q();
    }

    private synchronized ArrayList<m.a<K, V>> y(int i10, int i11) {
        int max = Math.max(i10, 0);
        int max2 = Math.max(i11, 0);
        if (this.f65538b.c() <= max && this.f65538b.e() <= max2) {
            return null;
        }
        ArrayList<m.a<K, V>> arrayList = new ArrayList<>();
        while (true) {
            if (this.f65538b.c() <= max && this.f65538b.e() <= max2) {
                break;
            }
            K d10 = this.f65538b.d();
            if (d10 == null) {
                if (this.f65547k) {
                    this.f65538b.j();
                } else {
                    throw new IllegalStateException(String.format("key is null, but exclusiveEntries count: %d, size: %d", Integer.valueOf(this.f65538b.c()), Integer.valueOf(this.f65538b.e())));
                }
            } else {
                this.f65538b.h(d10);
                arrayList.add(this.f65539c.h(d10));
            }
        }
        return arrayList;
    }

    private c0<m.a<K, V>> z(c0<V> c0Var) {
        return new a(c0Var);
    }

    @Override // r3.w
    public void a(K k10) {
        k2.h.g(k10);
        synchronized (this) {
            try {
                m.a<K, V> h10 = this.f65538b.h(k10);
                if (h10 != null) {
                    this.f65538b.g(k10, h10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // r3.w
    public int b(k2.i<K> iVar) {
        ArrayList<m.a<K, V>> i10;
        ArrayList<m.a<K, V>> i11;
        synchronized (this) {
            i10 = this.f65538b.i(iVar);
            i11 = this.f65539c.i(iVar);
            n(i11);
        }
        p(i11);
        s(i10);
        u();
        q();
        return i11.size();
    }

    @Override // r3.m
    public o2.a<V> c(K k10) {
        m.a<K, V> h10;
        boolean z10;
        o2.a<V> aVar;
        k2.h.g(k10);
        synchronized (this) {
            try {
                h10 = this.f65538b.h(k10);
                z10 = false;
                if (h10 != null) {
                    m.a<K, V> h11 = this.f65539c.h(k10);
                    k2.h.g(h11);
                    if (h11.f65523c == 0) {
                        z10 = true;
                    }
                    k2.h.i(z10);
                    aVar = h11.f65522b;
                    z10 = true;
                } else {
                    aVar = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            t(h10);
        }
        return aVar;
    }

    @Override // r3.w
    public synchronized boolean contains(K k10) {
        return this.f65539c.a(k10);
    }

    @Override // r3.w
    public o2.a<V> d(K k10, o2.a<V> aVar) {
        return e(k10, aVar, this.f65537a);
    }

    @Override // r3.m
    public o2.a<V> e(K k10, o2.a<V> aVar, m.b<K> bVar) {
        m.a<K, V> h10;
        o2.a<V> aVar2;
        o2.a<V> aVar3;
        m.a<K, V> b10;
        k2.h.g(k10);
        k2.h.g(aVar);
        u();
        synchronized (this) {
            try {
                h10 = this.f65538b.h(k10);
                m.a<K, V> h11 = this.f65539c.h(k10);
                aVar2 = null;
                if (h11 != null) {
                    m(h11);
                    aVar3 = w(h11);
                } else {
                    aVar3 = null;
                }
                int a10 = this.f65541e.a(aVar.s());
                if (h(a10)) {
                    if (this.f65546j) {
                        b10 = m.a.a(k10, aVar, a10, bVar);
                    } else {
                        b10 = m.a.b(k10, aVar, bVar);
                    }
                    this.f65539c.g(k10, b10);
                    aVar2 = v(b10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        o2.a.r(aVar3);
        t(h10);
        q();
        return aVar2;
    }

    @Override // r3.w
    public o2.a<V> get(K k10) {
        m.a<K, V> h10;
        o2.a<V> aVar;
        k2.h.g(k10);
        synchronized (this) {
            try {
                h10 = this.f65538b.h(k10);
                m.a<K, V> b10 = this.f65539c.b(k10);
                if (b10 != null) {
                    aVar = v(b10);
                } else {
                    aVar = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        t(h10);
        u();
        q();
        return aVar;
    }

    public synchronized int j() {
        return this.f65539c.c() - this.f65538b.c();
    }

    public synchronized int k() {
        return this.f65539c.e() - this.f65538b.e();
    }

    public void q() {
        ArrayList<m.a<K, V>> y10;
        synchronized (this) {
            x xVar = this.f65544h;
            int min = Math.min(xVar.f65555d, xVar.f65553b - j());
            x xVar2 = this.f65544h;
            y10 = y(min, Math.min(xVar2.f65554c, xVar2.f65552a - k()));
            n(y10);
        }
        p(y10);
        s(y10);
    }
}
