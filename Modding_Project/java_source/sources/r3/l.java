package r3;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* compiled from: CountingLruMap.java */
/* loaded from: classes3.dex */
public class l<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final c0<V> f65518a;

    /* renamed from: b  reason: collision with root package name */
    private final LinkedHashMap<K, V> f65519b = new LinkedHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private int f65520c = 0;

    public l(c0<V> c0Var) {
        this.f65518a = c0Var;
    }

    private int f(V v10) {
        if (v10 == null) {
            return 0;
        }
        return this.f65518a.a(v10);
    }

    public synchronized boolean a(K k10) {
        return this.f65519b.containsKey(k10);
    }

    public synchronized V b(K k10) {
        return this.f65519b.get(k10);
    }

    public synchronized int c() {
        return this.f65519b.size();
    }

    public synchronized K d() {
        K next;
        if (this.f65519b.isEmpty()) {
            next = null;
        } else {
            next = this.f65519b.keySet().iterator().next();
        }
        return next;
    }

    public synchronized int e() {
        return this.f65520c;
    }

    public synchronized V g(K k10, V v10) {
        V remove;
        remove = this.f65519b.remove(k10);
        this.f65520c -= f(remove);
        this.f65519b.put(k10, v10);
        this.f65520c += f(v10);
        return remove;
    }

    public synchronized V h(K k10) {
        V remove;
        remove = this.f65519b.remove(k10);
        this.f65520c -= f(remove);
        return remove;
    }

    public synchronized ArrayList<V> i(k2.i<K> iVar) {
        ArrayList<V> arrayList;
        try {
            arrayList = new ArrayList<>();
            Iterator<Map.Entry<K, V>> it = this.f65519b.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (iVar != null && !iVar.apply(next.getKey())) {
                }
                arrayList.add(next.getValue());
                this.f65520c -= f(next.getValue());
                it.remove();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return arrayList;
    }

    public synchronized void j() {
        if (this.f65519b.isEmpty()) {
            this.f65520c = 0;
        }
    }
}
