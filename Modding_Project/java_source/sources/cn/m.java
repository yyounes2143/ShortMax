package cn;

import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: CopyOnWriteMultiset.java */
/* loaded from: classes8.dex */
public final class m<E> implements Iterable<E> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f3610a = new Object();
    @GuardedBy("lock")

    /* renamed from: b  reason: collision with root package name */
    private final Map<E, Integer> f3611b = new HashMap();
    @GuardedBy("lock")

    /* renamed from: c  reason: collision with root package name */
    private Set<E> f3612c = Collections.emptySet();
    @GuardedBy("lock")

    /* renamed from: d  reason: collision with root package name */
    private List<E> f3613d = Collections.emptyList();

    public void a(E e10) {
        synchronized (this.f3610a) {
            try {
                ArrayList arrayList = new ArrayList(this.f3613d);
                arrayList.add(e10);
                this.f3613d = Collections.unmodifiableList(arrayList);
                Integer num = this.f3611b.get(e10);
                if (num == null) {
                    HashSet hashSet = new HashSet(this.f3612c);
                    hashSet.add(e10);
                    this.f3612c = Collections.unmodifiableSet(hashSet);
                }
                Map<E, Integer> map = this.f3611b;
                int i10 = 1;
                if (num != null) {
                    i10 = 1 + num.intValue();
                }
                map.put(e10, Integer.valueOf(i10));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int c(E e10) {
        int i10;
        synchronized (this.f3610a) {
            try {
                if (this.f3611b.containsKey(e10)) {
                    i10 = this.f3611b.get(e10).intValue();
                } else {
                    i10 = 0;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i10;
    }

    public void d(E e10) {
        synchronized (this.f3610a) {
            try {
                Integer num = this.f3611b.get(e10);
                if (num == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList(this.f3613d);
                arrayList.remove(e10);
                this.f3613d = Collections.unmodifiableList(arrayList);
                if (num.intValue() == 1) {
                    this.f3611b.remove(e10);
                    HashSet hashSet = new HashSet(this.f3612c);
                    hashSet.remove(e10);
                    this.f3612c = Collections.unmodifiableSet(hashSet);
                } else {
                    this.f3611b.put(e10, Integer.valueOf(num.intValue() - 1));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        Iterator<E> it;
        synchronized (this.f3610a) {
            it = this.f3613d.iterator();
        }
        return it;
    }

    public Set<E> k() {
        Set<E> set;
        synchronized (this.f3610a) {
            set = this.f3612c;
        }
        return set;
    }
}
