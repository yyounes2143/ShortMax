package com.huawei.hms.framework.common;

import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RunnableScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes5.dex */
public class RunnableScheduledFutureEnhance<T> implements RunnableScheduledFuture<T> {

    /* renamed from: a  reason: collision with root package name */
    private RunnableScheduledFuture<T> f22145a;

    /* renamed from: b  reason: collision with root package name */
    private String f22146b = Thread.currentThread().getName();

    public RunnableScheduledFutureEnhance(RunnableScheduledFuture<T> runnableScheduledFuture) {
        this.f22145a = runnableScheduledFuture;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        return this.f22145a.cancel(z10);
    }

    public boolean equals(Object obj) {
        return this.f22145a.equals(obj);
    }

    @Override // java.util.concurrent.Future
    public T get() throws ExecutionException, InterruptedException {
        return this.f22145a.get();
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        return this.f22145a.getDelay(timeUnit);
    }

    public String getParentName() {
        return this.f22146b;
    }

    public int hashCode() {
        return this.f22145a.hashCode();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f22145a.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f22145a.isDone();
    }

    @Override // java.util.concurrent.RunnableScheduledFuture
    public boolean isPeriodic() {
        return this.f22145a.isPeriodic();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        this.f22145a.run();
    }

    @Override // java.lang.Comparable
    public int compareTo(Delayed delayed) {
        return this.f22145a.compareTo(delayed);
    }

    @Override // java.util.concurrent.Future
    public T get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.f22145a.get(j10, timeUnit);
    }
}
