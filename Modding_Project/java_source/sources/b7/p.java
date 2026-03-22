package b7;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import b7.l;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* compiled from: ListenerSet.java */
/* loaded from: classes4.dex */
public final class p<T> {

    /* renamed from: a  reason: collision with root package name */
    private final d f2487a;

    /* renamed from: b  reason: collision with root package name */
    private final m f2488b;

    /* renamed from: c  reason: collision with root package name */
    private final b<T> f2489c;

    /* renamed from: d  reason: collision with root package name */
    private final CopyOnWriteArraySet<c<T>> f2490d;

    /* renamed from: e  reason: collision with root package name */
    private final ArrayDeque<Runnable> f2491e;

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque<Runnable> f2492f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f2493g;

    /* compiled from: ListenerSet.java */
    /* loaded from: classes4.dex */
    public interface a<T> {
        void invoke(T t10);
    }

    /* compiled from: ListenerSet.java */
    /* loaded from: classes4.dex */
    public interface b<T> {
        void a(T t10, l lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ListenerSet.java */
    /* loaded from: classes4.dex */
    public static final class c<T> {

        /* renamed from: a  reason: collision with root package name */
        public final T f2494a;

        /* renamed from: b  reason: collision with root package name */
        private l.b f2495b = new l.b();

        /* renamed from: c  reason: collision with root package name */
        private boolean f2496c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f2497d;

        public c(T t10) {
            this.f2494a = t10;
        }

        public void a(int i10, a<T> aVar) {
            if (!this.f2497d) {
                if (i10 != -1) {
                    this.f2495b.a(i10);
                }
                this.f2496c = true;
                aVar.invoke(this.f2494a);
            }
        }

        public void b(b<T> bVar) {
            if (!this.f2497d && this.f2496c) {
                l e10 = this.f2495b.e();
                this.f2495b = new l.b();
                this.f2496c = false;
                bVar.a(this.f2494a, e10);
            }
        }

        public void c(b<T> bVar) {
            this.f2497d = true;
            if (this.f2496c) {
                this.f2496c = false;
                bVar.a(this.f2494a, this.f2495b.e());
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && c.class == obj.getClass()) {
                return this.f2494a.equals(((c) obj).f2494a);
            }
            return false;
        }

        public int hashCode() {
            return this.f2494a.hashCode();
        }
    }

    public p(Looper looper, d dVar, b<T> bVar) {
        this(new CopyOnWriteArraySet(), looper, dVar, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(Message message) {
        Iterator<c<T>> it = this.f2490d.iterator();
        while (it.hasNext()) {
            it.next().b(this.f2489c);
            if (this.f2488b.a(0)) {
                return true;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(CopyOnWriteArraySet copyOnWriteArraySet, int i10, a aVar) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(i10, aVar);
        }
    }

    public void c(T t10) {
        if (this.f2493g) {
            return;
        }
        b7.a.e(t10);
        this.f2490d.add(new c<>(t10));
    }

    @CheckResult
    public p<T> d(Looper looper, d dVar, b<T> bVar) {
        return new p<>(this.f2490d, looper, dVar, bVar);
    }

    @CheckResult
    public p<T> e(Looper looper, b<T> bVar) {
        return d(looper, this.f2487a, bVar);
    }

    public void f() {
        if (this.f2492f.isEmpty()) {
            return;
        }
        if (!this.f2488b.a(0)) {
            m mVar = this.f2488b;
            mVar.b(mVar.obtainMessage(0));
        }
        boolean isEmpty = this.f2491e.isEmpty();
        this.f2491e.addAll(this.f2492f);
        this.f2492f.clear();
        if (!isEmpty) {
            return;
        }
        while (!this.f2491e.isEmpty()) {
            this.f2491e.peekFirst().run();
            this.f2491e.removeFirst();
        }
    }

    public void i(final int i10, final a<T> aVar) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f2490d);
        this.f2492f.add(new Runnable() { // from class: b7.n
            @Override // java.lang.Runnable
            public final void run() {
                p.h(copyOnWriteArraySet, i10, aVar);
            }
        });
    }

    public void j() {
        Iterator<c<T>> it = this.f2490d.iterator();
        while (it.hasNext()) {
            it.next().c(this.f2489c);
        }
        this.f2490d.clear();
        this.f2493g = true;
    }

    public void k(T t10) {
        Iterator<c<T>> it = this.f2490d.iterator();
        while (it.hasNext()) {
            c<T> next = it.next();
            if (next.f2494a.equals(t10)) {
                next.c(this.f2489c);
                this.f2490d.remove(next);
            }
        }
    }

    public void l(int i10, a<T> aVar) {
        i(i10, aVar);
        f();
    }

    private p(CopyOnWriteArraySet<c<T>> copyOnWriteArraySet, Looper looper, d dVar, b<T> bVar) {
        this.f2487a = dVar;
        this.f2490d = copyOnWriteArraySet;
        this.f2489c = bVar;
        this.f2491e = new ArrayDeque<>();
        this.f2492f = new ArrayDeque<>();
        this.f2488b = dVar.createHandler(looper, new Handler.Callback() { // from class: b7.o
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean g10;
                g10 = p.this.g(message);
                return g10;
            }
        });
    }
}
