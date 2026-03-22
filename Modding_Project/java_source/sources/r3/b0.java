package r3;

import com.facebook.common.memory.PooledByteBuffer;
import java.util.HashMap;
import java.util.Map;
/* compiled from: StagingArea.java */
/* loaded from: classes3.dex */
public class b0 {

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?> f65490b = b0.class;

    /* renamed from: a  reason: collision with root package name */
    private Map<f2.a, y3.k> f65491a = new HashMap();

    private b0() {
    }

    public static b0 c() {
        return new b0();
    }

    private synchronized void d() {
        l2.a.p(f65490b, "Count = %d", Integer.valueOf(this.f65491a.size()));
    }

    public synchronized boolean a(f2.a aVar) {
        k2.h.g(aVar);
        if (!this.f65491a.containsKey(aVar)) {
            return false;
        }
        y3.k kVar = this.f65491a.get(aVar);
        synchronized (kVar) {
            if (!y3.k.T(kVar)) {
                this.f65491a.remove(aVar);
                l2.a.x(f65490b, "Found closed reference %d for key %s (%d)", Integer.valueOf(System.identityHashCode(kVar)), aVar.getUriString(), Integer.valueOf(System.identityHashCode(aVar)));
                return false;
            }
            return true;
        }
    }

    public synchronized y3.k b(f2.a aVar) {
        k2.h.g(aVar);
        y3.k kVar = this.f65491a.get(aVar);
        if (kVar != null) {
            synchronized (kVar) {
                if (!y3.k.T(kVar)) {
                    this.f65491a.remove(aVar);
                    l2.a.x(f65490b, "Found closed reference %d for key %s (%d)", Integer.valueOf(System.identityHashCode(kVar)), aVar.getUriString(), Integer.valueOf(System.identityHashCode(aVar)));
                    return null;
                }
                kVar = y3.k.g(kVar);
            }
        }
        return kVar;
    }

    public synchronized void e(f2.a aVar, y3.k kVar) {
        k2.h.g(aVar);
        k2.h.b(Boolean.valueOf(y3.k.T(kVar)));
        y3.k.i(this.f65491a.put(aVar, y3.k.g(kVar)));
        d();
    }

    public boolean f(f2.a aVar) {
        y3.k remove;
        k2.h.g(aVar);
        synchronized (this) {
            remove = this.f65491a.remove(aVar);
        }
        if (remove == null) {
            return false;
        }
        try {
            return remove.R();
        } finally {
            remove.close();
        }
    }

    public synchronized boolean g(f2.a aVar, y3.k kVar) {
        k2.h.g(aVar);
        k2.h.g(kVar);
        k2.h.b(Boolean.valueOf(y3.k.T(kVar)));
        y3.k kVar2 = this.f65491a.get(aVar);
        if (kVar2 == null) {
            return false;
        }
        o2.a<PooledByteBuffer> l10 = kVar2.l();
        o2.a<PooledByteBuffer> l11 = kVar.l();
        if (l10 != null && l11 != null && l10.s() == l11.s()) {
            this.f65491a.remove(aVar);
            o2.a.r(l11);
            o2.a.r(l10);
            y3.k.i(kVar2);
            d();
            return true;
        }
        o2.a.r(l11);
        o2.a.r(l10);
        y3.k.i(kVar2);
        return false;
    }
}
