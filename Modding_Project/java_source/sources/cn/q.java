package cn;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import zm.n;
/* compiled from: ListenerSet.java */
/* loaded from: classes8.dex */
public final class q<T> {

    /* renamed from: a  reason: collision with root package name */
    private final h f3635a;

    /* renamed from: b  reason: collision with root package name */
    private final n f3636b;

    /* renamed from: c  reason: collision with root package name */
    private final b<T> f3637c;

    /* renamed from: d  reason: collision with root package name */
    private final CopyOnWriteArraySet<c<T>> f3638d;

    /* renamed from: e  reason: collision with root package name */
    private final ArrayDeque<Runnable> f3639e;

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque<Runnable> f3640f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f3641g;
    @GuardedBy("releasedLock")

    /* renamed from: h  reason: collision with root package name */
    private boolean f3642h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f3643i;

    /* compiled from: ListenerSet.java */
    /* loaded from: classes8.dex */
    public interface a<T> {
        void invoke(T t10);
    }

    /* compiled from: ListenerSet.java */
    /* loaded from: classes8.dex */
    public interface b<T> {
        void a(T t10, zm.n nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ListenerSet.java */
    /* loaded from: classes8.dex */
    public static final class c<T> {

        /* renamed from: a  reason: collision with root package name */
        public final T f3644a;

        /* renamed from: b  reason: collision with root package name */
        private n.b f3645b = new n.b();

        /* renamed from: c  reason: collision with root package name */
        private boolean f3646c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f3647d;

        public c(T t10) {
            this.f3644a = t10;
        }

        public void a(int i10, a<T> aVar) {
            if (!this.f3647d) {
                if (i10 != -1) {
                    this.f3645b.a(i10);
                }
                this.f3646c = true;
                aVar.invoke(this.f3644a);
            }
        }

        public void b(b<T> bVar) {
            if (!this.f3647d && this.f3646c) {
                zm.n e10 = this.f3645b.e();
                this.f3645b = new n.b();
                this.f3646c = false;
                bVar.a(this.f3644a, e10);
            }
        }

        public void c(b<T> bVar) {
            this.f3647d = true;
            if (this.f3646c) {
                this.f3646c = false;
                bVar.a(this.f3644a, this.f3645b.e());
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && c.class == obj.getClass()) {
                return this.f3644a.equals(((c) obj).f3644a);
            }
            return false;
        }

        public int hashCode() {
            return this.f3644a.hashCode();
        }
    }

    public q(Looper looper, h hVar, b<T> bVar) {
        this(new CopyOnWriteArraySet(), looper, hVar, bVar, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(Message message) {
        Iterator<c<T>> it = this.f3638d.iterator();
        while (it.hasNext()) {
            it.next().b(this.f3637c);
            if (this.f3636b.a(1)) {
                break;
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

    private void m() {
        boolean z10;
        if (!this.f3643i) {
            return;
        }
        if (Thread.currentThread() == this.f3636b.getLooper().getThread()) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
    }

    public void c(T t10) {
        cn.a.e(t10);
        synchronized (this.f3641g) {
            try {
                if (this.f3642h) {
                    return;
                }
                this.f3638d.add(new c<>(t10));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @CheckResult
    public q<T> d(Looper looper, h hVar, b<T> bVar) {
        return new q<>(this.f3638d, looper, hVar, bVar, this.f3643i);
    }

    @CheckResult
    public q<T> e(Looper looper, b<T> bVar) {
        return d(looper, this.f3635a, bVar);
    }

    public void f() {
        m();
        if (this.f3640f.isEmpty()) {
            return;
        }
        if (!this.f3636b.a(1)) {
            n nVar = this.f3636b;
            nVar.b(nVar.obtainMessage(1));
        }
        boolean isEmpty = this.f3639e.isEmpty();
        this.f3639e.addAll(this.f3640f);
        this.f3640f.clear();
        if (!isEmpty) {
            return;
        }
        while (!this.f3639e.isEmpty()) {
            this.f3639e.peekFirst().run();
            this.f3639e.removeFirst();
        }
    }

    public void i(final int i10, final a<T> aVar) {
        m();
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f3638d);
        this.f3640f.add(new Runnable() { // from class: cn.p
            @Override // java.lang.Runnable
            public final void run() {
                q.h(copyOnWriteArraySet, i10, aVar);
            }
        });
    }

    public void j() {
        m();
        synchronized (this.f3641g) {
            this.f3642h = true;
        }
        Iterator<c<T>> it = this.f3638d.iterator();
        while (it.hasNext()) {
            it.next().c(this.f3637c);
        }
        this.f3638d.clear();
    }

    public void k(T t10) {
        m();
        Iterator<c<T>> it = this.f3638d.iterator();
        while (it.hasNext()) {
            c<T> next = it.next();
            if (next.f3644a.equals(t10)) {
                next.c(this.f3637c);
                this.f3638d.remove(next);
            }
        }
    }

    public void l(int i10, a<T> aVar) {
        i(i10, aVar);
        f();
    }

    private q(CopyOnWriteArraySet<c<T>> copyOnWriteArraySet, Looper looper, h hVar, b<T> bVar, boolean z10) {
        this.f3635a = hVar;
        this.f3638d = copyOnWriteArraySet;
        this.f3637c = bVar;
        this.f3641g = new Object();
        this.f3639e = new ArrayDeque<>();
        this.f3640f = new ArrayDeque<>();
        this.f3636b = hVar.createHandler(looper, new Handler.Callback() { // from class: cn.o
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean g10;
                g10 = q.this.g(message);
                return g10;
            }
        });
        this.f3643i = z10;
    }
}
