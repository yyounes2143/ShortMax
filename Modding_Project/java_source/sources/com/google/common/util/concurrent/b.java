package com.google.common.util.concurrent;

import h7.k;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* compiled from: Futures.java */
/* loaded from: classes5.dex */
public final class b extends c {

    /* compiled from: Futures.java */
    /* loaded from: classes5.dex */
    private static final class a<V> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final Future<V> f20310a;

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.util.concurrent.a<? super V> f20311b;

        a(Future<V> future, com.google.common.util.concurrent.a<? super V> aVar) {
            this.f20310a = future;
            this.f20311b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable a10;
            Future<V> future = this.f20310a;
            if ((future instanceof k7.a) && (a10 = k7.b.a((k7.a) future)) != null) {
                this.f20311b.onFailure(a10);
                return;
            }
            try {
                this.f20311b.onSuccess(b.b(this.f20310a));
            } catch (ExecutionException e10) {
                this.f20311b.onFailure(e10.getCause());
            } catch (Throwable th2) {
                this.f20311b.onFailure(th2);
            }
        }

        public String toString() {
            return h7.g.b(this).h(this.f20311b).toString();
        }
    }

    public static <V> void a(e<V> eVar, com.google.common.util.concurrent.a<? super V> aVar, Executor executor) {
        k.j(aVar);
        eVar.addListener(new a(eVar, aVar), executor);
    }

    public static <V> V b(Future<V> future) throws ExecutionException {
        k.r(future.isDone(), "Future was expected to be done: %s", future);
        return (V) g.a(future);
    }
}
