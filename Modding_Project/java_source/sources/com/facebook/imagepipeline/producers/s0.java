package com.facebook.imagepipeline.producers;

import android.util.Pair;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.util.TriState;
import com.facebook.imagepipeline.common.Priority;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
/* compiled from: MultiplexProducer.java */
/* loaded from: classes3.dex */
public abstract class s0<K, T extends Closeable> implements b1<T> {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final Map<K, s0<K, T>.a> f15929a;

    /* renamed from: b  reason: collision with root package name */
    private final b1<T> f15930b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f15931c;

    /* renamed from: d  reason: collision with root package name */
    private final String f15932d;

    /* renamed from: e  reason: collision with root package name */
    private final String f15933e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MultiplexProducer.java */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        private final K f15934a;

        /* renamed from: b  reason: collision with root package name */
        private final CopyOnWriteArraySet<Pair<n<T>, c1>> f15935b = k2.j.a();

        /* renamed from: c  reason: collision with root package name */
        private T f15936c;

        /* renamed from: d  reason: collision with root package name */
        private float f15937d;

        /* renamed from: e  reason: collision with root package name */
        private int f15938e;

        /* renamed from: f  reason: collision with root package name */
        private e f15939f;

        /* renamed from: g  reason: collision with root package name */
        private s0<K, T>.a.b f15940g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MultiplexProducer.java */
        /* renamed from: com.facebook.imagepipeline.producers.s0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0269a extends f {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Pair f15942a;

            C0269a(Pair pair) {
                this.f15942a = pair;
            }

            @Override // com.facebook.imagepipeline.producers.f, com.facebook.imagepipeline.producers.d1
            public void a() {
                e.b(a.this.r());
            }

            @Override // com.facebook.imagepipeline.producers.d1
            public void b() {
                boolean remove;
                List list;
                e eVar;
                List list2;
                List list3;
                synchronized (a.this) {
                    try {
                        remove = a.this.f15935b.remove(this.f15942a);
                        list = null;
                        if (remove) {
                            if (a.this.f15935b.isEmpty()) {
                                eVar = a.this.f15939f;
                                list2 = null;
                            } else {
                                List s10 = a.this.s();
                                list2 = a.this.t();
                                list3 = a.this.r();
                                eVar = null;
                                list = s10;
                            }
                        } else {
                            eVar = null;
                            list2 = null;
                        }
                        list3 = list2;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                e.c(list);
                e.e(list2);
                e.b(list3);
                if (eVar != null) {
                    if (s0.this.f15931c && !eVar.u()) {
                        e.e(eVar.n(Priority.LOW));
                    } else {
                        eVar.g();
                    }
                }
                if (remove) {
                    ((n) this.f15942a.first).a();
                }
            }

            @Override // com.facebook.imagepipeline.producers.f, com.facebook.imagepipeline.producers.d1
            public void c() {
                e.c(a.this.s());
            }

            @Override // com.facebook.imagepipeline.producers.f, com.facebook.imagepipeline.producers.d1
            public void d() {
                e.e(a.this.t());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MultiplexProducer.java */
        /* loaded from: classes3.dex */
        public class b extends c<T> {
            @Override // com.facebook.imagepipeline.producers.c
            protected void f() {
                try {
                    if (f4.b.d()) {
                        f4.b.a("MultiplexProducer#onCancellation");
                    }
                    a.this.m(this);
                    if (f4.b.d()) {
                        f4.b.b();
                    }
                } catch (Throwable th2) {
                    if (f4.b.d()) {
                        f4.b.b();
                    }
                    throw th2;
                }
            }

            @Override // com.facebook.imagepipeline.producers.c
            protected void g(Throwable th2) {
                try {
                    if (f4.b.d()) {
                        f4.b.a("MultiplexProducer#onFailure");
                    }
                    a.this.n(this, th2);
                    if (f4.b.d()) {
                        f4.b.b();
                    }
                } catch (Throwable th3) {
                    if (f4.b.d()) {
                        f4.b.b();
                    }
                    throw th3;
                }
            }

            @Override // com.facebook.imagepipeline.producers.c
            protected void i(float f10) {
                try {
                    if (f4.b.d()) {
                        f4.b.a("MultiplexProducer#onProgressUpdate");
                    }
                    a.this.p(this, f10);
                    if (f4.b.d()) {
                        f4.b.b();
                    }
                } catch (Throwable th2) {
                    if (f4.b.d()) {
                        f4.b.b();
                    }
                    throw th2;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.facebook.imagepipeline.producers.c
            /* renamed from: o */
            public void h(T t10, int i10) {
                try {
                    if (f4.b.d()) {
                        f4.b.a("MultiplexProducer#onNewResult");
                    }
                    a.this.o(this, t10, i10);
                    if (f4.b.d()) {
                        f4.b.b();
                    }
                } catch (Throwable th2) {
                    if (f4.b.d()) {
                        f4.b.b();
                    }
                    throw th2;
                }
            }

            private b() {
            }
        }

        public a(K k10) {
            this.f15934a = k10;
        }

        private void g(Pair<n<T>, c1> pair, c1 c1Var) {
            c1Var.p(new C0269a(pair));
        }

        private void i(Closeable closeable) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            }
        }

        private synchronized boolean j() {
            Iterator<Pair<n<T>, c1>> it = this.f15935b.iterator();
            while (it.hasNext()) {
                if (((c1) it.next().second).t()) {
                    return true;
                }
            }
            return false;
        }

        private synchronized boolean k() {
            Iterator<Pair<n<T>, c1>> it = this.f15935b.iterator();
            while (it.hasNext()) {
                if (!((c1) it.next().second).u()) {
                    return false;
                }
            }
            return true;
        }

        private synchronized Priority l() {
            Priority priority;
            priority = Priority.LOW;
            Iterator<Pair<n<T>, c1>> it = this.f15935b.iterator();
            while (it.hasNext()) {
                priority = Priority.getHigherPriority(priority, ((c1) it.next().second).m());
            }
            return priority;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q(TriState triState) {
            boolean z10;
            synchronized (this) {
                try {
                    boolean z11 = false;
                    if (this.f15939f == null) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    k2.h.b(Boolean.valueOf(z10));
                    if (this.f15940g == null) {
                        z11 = true;
                    }
                    k2.h.b(Boolean.valueOf(z11));
                    if (this.f15935b.isEmpty()) {
                        s0.this.k(this.f15934a, this);
                        return;
                    }
                    c1 c1Var = (c1) this.f15935b.iterator().next().second;
                    e eVar = new e(c1Var.o(), c1Var.getId(), c1Var.l(), c1Var.d(), c1Var.v(), k(), j(), l(), c1Var.k());
                    this.f15939f = eVar;
                    eVar.putExtras(c1Var.getExtras());
                    if (triState.isSet()) {
                        this.f15939f.putExtra("started_as_prefetch", Boolean.valueOf(triState.asBoolean()));
                    }
                    s0<K, T>.a.b bVar = new b();
                    this.f15940g = bVar;
                    s0.this.f15930b.b(bVar, this.f15939f);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized List<d1> r() {
            e eVar = this.f15939f;
            if (eVar == null) {
                return null;
            }
            return eVar.i(j());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized List<d1> s() {
            e eVar = this.f15939f;
            if (eVar == null) {
                return null;
            }
            return eVar.j(k());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized List<d1> t() {
            e eVar = this.f15939f;
            if (eVar == null) {
                return null;
            }
            return eVar.n(l());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean h(n<T> nVar, c1 c1Var) {
            Pair<n<T>, c1> create = Pair.create(nVar, c1Var);
            synchronized (this) {
                try {
                    if (s0.this.i(this.f15934a) != this) {
                        return false;
                    }
                    this.f15935b.add(create);
                    List<d1> s10 = s();
                    List<d1> t10 = t();
                    List<d1> r10 = r();
                    Closeable closeable = this.f15936c;
                    float f10 = this.f15937d;
                    int i10 = this.f15938e;
                    e.c(s10);
                    e.e(t10);
                    e.b(r10);
                    synchronized (create) {
                        try {
                            synchronized (this) {
                                if (closeable != this.f15936c) {
                                    closeable = null;
                                } else if (closeable != null) {
                                    closeable = s0.this.g(closeable);
                                }
                            }
                            if (closeable != null) {
                                if (f10 > 0.0f) {
                                    nVar.c(f10);
                                }
                                nVar.b(closeable, i10);
                                i(closeable);
                            }
                        } finally {
                        }
                    }
                    g(create, c1Var);
                    return true;
                } finally {
                }
            }
        }

        public void m(s0<K, T>.a.b bVar) {
            synchronized (this) {
                try {
                    if (this.f15940g != bVar) {
                        return;
                    }
                    this.f15940g = null;
                    this.f15939f = null;
                    i(this.f15936c);
                    this.f15936c = null;
                    q(TriState.UNSET);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void n(s0<K, T>.a.b bVar, Throwable th2) {
            synchronized (this) {
                try {
                    if (this.f15940g != bVar) {
                        return;
                    }
                    Iterator<Pair<n<T>, c1>> it = this.f15935b.iterator();
                    this.f15935b.clear();
                    s0.this.k(this.f15934a, this);
                    i(this.f15936c);
                    this.f15936c = null;
                    while (it.hasNext()) {
                        Pair<n<T>, c1> next = it.next();
                        synchronized (next) {
                            try {
                                ((c1) next.second).l().k((c1) next.second, s0.this.f15932d, th2, null);
                                e eVar = this.f15939f;
                                if (eVar != null) {
                                    ((c1) next.second).putExtras(eVar.getExtras());
                                }
                                ((n) next.first).onFailure(th2);
                            } finally {
                            }
                        }
                    }
                } finally {
                }
            }
        }

        public void o(s0<K, T>.a.b bVar, T t10, int i10) {
            synchronized (this) {
                try {
                    if (this.f15940g != bVar) {
                        return;
                    }
                    i(this.f15936c);
                    this.f15936c = null;
                    Iterator<Pair<n<T>, c1>> it = this.f15935b.iterator();
                    int size = this.f15935b.size();
                    if (c.e(i10)) {
                        this.f15936c = (T) s0.this.g(t10);
                        this.f15938e = i10;
                    } else {
                        this.f15935b.clear();
                        s0.this.k(this.f15934a, this);
                    }
                    while (it.hasNext()) {
                        Pair<n<T>, c1> next = it.next();
                        synchronized (next) {
                            try {
                                if (c.d(i10)) {
                                    ((c1) next.second).l().j((c1) next.second, s0.this.f15932d, null);
                                    e eVar = this.f15939f;
                                    if (eVar != null) {
                                        ((c1) next.second).putExtras(eVar.getExtras());
                                    }
                                    ((c1) next.second).putExtra(s0.this.f15933e, Integer.valueOf(size));
                                }
                                ((n) next.first).b(t10, i10);
                            } finally {
                            }
                        }
                    }
                } finally {
                }
            }
        }

        public void p(s0<K, T>.a.b bVar, float f10) {
            synchronized (this) {
                try {
                    if (this.f15940g != bVar) {
                        return;
                    }
                    this.f15937d = f10;
                    Iterator<Pair<n<T>, c1>> it = this.f15935b.iterator();
                    while (it.hasNext()) {
                        Pair<n<T>, c1> next = it.next();
                        synchronized (next) {
                            ((n) next.first).c(f10);
                        }
                    }
                } finally {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public s0(b1<T> b1Var, String str, String str2) {
        this(b1Var, str, str2, false);
    }

    private synchronized s0<K, T>.a h(K k10) {
        s0<K, T>.a aVar;
        aVar = new a(k10);
        this.f15929a.put(k10, aVar);
        return aVar;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<T> nVar, c1 c1Var) {
        s0<K, T>.a i10;
        boolean z10;
        try {
            if (f4.b.d()) {
                f4.b.a("MultiplexProducer#produceResults");
            }
            c1Var.l().b(c1Var, this.f15932d);
            K j10 = j(c1Var);
            do {
                synchronized (this) {
                    i10 = i(j10);
                    if (i10 == null) {
                        i10 = h(j10);
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
            } while (!i10.h(nVar, c1Var));
            if (z10) {
                i10.q(TriState.valueOf(c1Var.u()));
            }
            if (f4.b.d()) {
                f4.b.b();
            }
        } catch (Throwable th2) {
            if (f4.b.d()) {
                f4.b.b();
            }
            throw th2;
        }
    }

    protected abstract T g(T t10);

    protected synchronized s0<K, T>.a i(K k10) {
        return this.f15929a.get(k10);
    }

    protected abstract K j(c1 c1Var);

    protected synchronized void k(K k10, s0<K, T>.a aVar) {
        if (this.f15929a.get(k10) == aVar) {
            this.f15929a.remove(k10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public s0(b1<T> b1Var, String str, String str2, boolean z10) {
        this.f15930b = b1Var;
        this.f15929a = new HashMap();
        this.f15931c = z10;
        this.f15932d = str;
        this.f15933e = str2;
    }
}
