package com.airbnb.lottie;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
/* compiled from: LottieTask.java */
/* loaded from: classes2.dex */
public class t0<T> {

    /* renamed from: e  reason: collision with root package name */
    public static Executor f4735e;

    /* renamed from: a  reason: collision with root package name */
    private final Set<n0<T>> f4736a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<n0<Throwable>> f4737b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f4738c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private volatile r0<T> f4739d;

    /* compiled from: LottieTask.java */
    /* loaded from: classes2.dex */
    private static class a<T> extends FutureTask<r0<T>> {

        /* renamed from: a  reason: collision with root package name */
        private t0<T> f4740a;

        a(t0<T> t0Var, Callable<r0<T>> callable) {
            super(callable);
            this.f4740a = t0Var;
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                if (!isCancelled()) {
                    try {
                        this.f4740a.l(get());
                    } catch (InterruptedException | ExecutionException e10) {
                        this.f4740a.l(new r0(e10));
                    }
                }
            } finally {
                this.f4740a = null;
            }
        }
    }

    static {
        if ("true".equals(System.getProperty("lottie.testing.directExecutor"))) {
            f4735e = new androidx.credentials.a();
        } else {
            f4735e = Executors.newCachedThreadPool(new d1.g());
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public t0(Callable<r0<T>> callable) {
        this(callable, false);
    }

    private synchronized void f(Throwable th2) {
        ArrayList<n0> arrayList = new ArrayList(this.f4737b);
        if (arrayList.isEmpty()) {
            d1.f.d("Lottie encountered an error but no failure listener was added:", th2);
            return;
        }
        for (n0 n0Var : arrayList) {
            n0Var.onResult(th2);
        }
    }

    private void g() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            h();
        } else {
            this.f4738c.post(new Runnable() { // from class: com.airbnb.lottie.s0
                @Override // java.lang.Runnable
                public final void run() {
                    t0.this.h();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        r0<T> r0Var = this.f4739d;
        if (r0Var == null) {
            return;
        }
        if (r0Var.b() != null) {
            i(r0Var.b());
        } else {
            f(r0Var.a());
        }
    }

    private synchronized void i(T t10) {
        for (n0 n0Var : new ArrayList(this.f4736a)) {
            n0Var.onResult(t10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(@Nullable r0<T> r0Var) {
        if (this.f4739d == null) {
            this.f4739d = r0Var;
            g();
            return;
        }
        throw new IllegalStateException("A task may only be set once.");
    }

    public synchronized t0<T> c(n0<Throwable> n0Var) {
        try {
            r0<T> r0Var = this.f4739d;
            if (r0Var != null && r0Var.a() != null) {
                n0Var.onResult(r0Var.a());
            }
            this.f4737b.add(n0Var);
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    public synchronized t0<T> d(n0<T> n0Var) {
        try {
            r0<T> r0Var = this.f4739d;
            if (r0Var != null && r0Var.b() != null) {
                n0Var.onResult(r0Var.b());
            }
            this.f4736a.add(n0Var);
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    @Nullable
    public r0<T> e() {
        return this.f4739d;
    }

    public synchronized t0<T> j(n0<Throwable> n0Var) {
        this.f4737b.remove(n0Var);
        return this;
    }

    public synchronized t0<T> k(n0<T> n0Var) {
        this.f4736a.remove(n0Var);
        return this;
    }

    public t0(T t10) {
        this.f4736a = new LinkedHashSet(1);
        this.f4737b = new LinkedHashSet(1);
        this.f4738c = new Handler(Looper.getMainLooper());
        this.f4739d = null;
        l(new r0<>(t10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public t0(Callable<r0<T>> callable, boolean z10) {
        this.f4736a = new LinkedHashSet(1);
        this.f4737b = new LinkedHashSet(1);
        this.f4738c = new Handler(Looper.getMainLooper());
        this.f4739d = null;
        if (z10) {
            try {
                l(callable.call());
                return;
            } catch (Throwable th2) {
                l(new r0<>(th2));
                return;
            }
        }
        f4735e.execute(new a(this, callable));
    }
}
