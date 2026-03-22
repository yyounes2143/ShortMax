package w7;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazySet.java */
/* loaded from: classes5.dex */
public class u<T> implements w8.b<Set<T>> {

    /* renamed from: b  reason: collision with root package name */
    private volatile Set<T> f69793b = null;

    /* renamed from: a  reason: collision with root package name */
    private volatile Set<w8.b<T>> f69792a = Collections.newSetFromMap(new ConcurrentHashMap());

    u(Collection<w8.b<T>> collection) {
        this.f69792a.addAll(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u<?> b(Collection<w8.b<?>> collection) {
        return new u<>((Set) collection);
    }

    private synchronized void d() {
        try {
            for (w8.b<T> bVar : this.f69792a) {
                this.f69793b.add(bVar.get());
            }
            this.f69792a = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(w8.b<T> bVar) {
        try {
            if (this.f69793b == null) {
                this.f69792a.add(bVar);
            } else {
                this.f69793b.add(bVar.get());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // w8.b
    /* renamed from: c */
    public Set<T> get() {
        if (this.f69793b == null) {
            synchronized (this) {
                try {
                    if (this.f69793b == null) {
                        this.f69793b = Collections.newSetFromMap(new ConcurrentHashMap());
                        d();
                    }
                } finally {
                }
            }
        }
        return Collections.unmodifiableSet(this.f69793b);
    }
}
