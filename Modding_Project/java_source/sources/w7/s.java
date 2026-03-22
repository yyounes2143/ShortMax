package w7;

import androidx.annotation.GuardedBy;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* compiled from: EventBus.java */
/* loaded from: classes5.dex */
class s implements t8.d, t8.c {
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, ConcurrentHashMap<t8.b<Object>, Executor>> f69786a = new HashMap();
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private Queue<t8.a<?>> f69787b = new ArrayDeque();

    /* renamed from: c  reason: collision with root package name */
    private final Executor f69788c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(Executor executor) {
        this.f69788c = executor;
    }

    private synchronized Set<Map.Entry<t8.b<Object>, Executor>> e(t8.a<?> aVar) {
        Set<Map.Entry<t8.b<Object>, Executor>> entrySet;
        try {
            ConcurrentHashMap<t8.b<Object>, Executor> concurrentHashMap = this.f69786a.get(aVar.b());
            if (concurrentHashMap == null) {
                entrySet = Collections.emptySet();
            } else {
                entrySet = concurrentHashMap.entrySet();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return entrySet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(Map.Entry entry, t8.a aVar) {
        ((t8.b) entry.getKey()).a(aVar);
    }

    @Override // t8.d
    public synchronized <T> void a(Class<T> cls, Executor executor, t8.b<? super T> bVar) {
        try {
            z.b(cls);
            z.b(bVar);
            z.b(executor);
            if (!this.f69786a.containsKey(cls)) {
                this.f69786a.put(cls, new ConcurrentHashMap<>());
            }
            this.f69786a.get(cls).put(bVar, executor);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // t8.d
    public <T> void b(Class<T> cls, t8.b<? super T> bVar) {
        a(cls, this.f69788c, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        Queue<t8.a<?>> queue;
        synchronized (this) {
            try {
                queue = this.f69787b;
                if (queue != null) {
                    this.f69787b = null;
                } else {
                    queue = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (queue != null) {
            for (t8.a<?> aVar : queue) {
                g(aVar);
            }
        }
    }

    public void g(final t8.a<?> aVar) {
        z.b(aVar);
        synchronized (this) {
            try {
                Queue<t8.a<?>> queue = this.f69787b;
                if (queue != null) {
                    queue.add(aVar);
                    return;
                }
                for (final Map.Entry<t8.b<Object>, Executor> entry : e(aVar)) {
                    entry.getValue().execute(new Runnable() { // from class: w7.r
                        @Override // java.lang.Runnable
                        public final void run() {
                            s.f(entry, aVar);
                        }
                    });
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
