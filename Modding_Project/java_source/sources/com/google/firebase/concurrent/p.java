package com.google.firebase.concurrent;

import android.annotation.SuppressLint;
import androidx.concurrent.futures.AbstractResolvableFuture;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* compiled from: DelegatingScheduledFuture.java */
@SuppressLint({"RestrictedApi"})
/* loaded from: classes5.dex */
class p<V> extends AbstractResolvableFuture<V> implements ScheduledFuture<V> {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledFuture<?> f20666a;

    /* compiled from: DelegatingScheduledFuture.java */
    /* loaded from: classes5.dex */
    class a implements b<V> {
        a() {
        }

        @Override // com.google.firebase.concurrent.p.b
        public void a(Throwable th2) {
            p.this.setException(th2);
        }

        @Override // com.google.firebase.concurrent.p.b
        public void set(V v10) {
            p.this.set(v10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DelegatingScheduledFuture.java */
    /* loaded from: classes5.dex */
    public interface b<T> {
        void a(Throwable th2);

        void set(T t10);
    }

    /* compiled from: DelegatingScheduledFuture.java */
    /* loaded from: classes5.dex */
    interface c<T> {
        ScheduledFuture<?> a(b<T> bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(c<V> cVar) {
        this.f20666a = cVar.a(new a());
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    protected void afterDone() {
        this.f20666a.cancel(wasInterrupted());
    }

    @Override // java.lang.Comparable
    /* renamed from: c */
    public int compareTo(Delayed delayed) {
        return this.f20666a.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        return this.f20666a.getDelay(timeUnit);
    }
}
