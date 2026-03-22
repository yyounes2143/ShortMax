package com.huawei.hms.framework.common;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes5.dex */
public class ExecutorsEnhance {

    /* loaded from: classes5.dex */
    private static class DelegatedExecutorService extends AbstractExecutorService {

        /* renamed from: a  reason: collision with root package name */
        private final ExecutorService f22129a;

        DelegatedExecutorService(ExecutorService executorService) {
            this.f22129a = executorService;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
            return this.f22129a.awaitTermination(j10, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f22129a.execute(runnable);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException {
            return this.f22129a.invokeAll(collection, j10, timeUnit);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (T) this.f22129a.invokeAny(collection, j10, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            return this.f22129a.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            return this.f22129a.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            this.f22129a.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            return this.f22129a.shutdownNow();
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Runnable runnable, T t10) {
            return this.f22129a.submit(runnable, t10);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
            return this.f22129a.invokeAll(collection);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
            return (T) this.f22129a.invokeAny(collection);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Callable<T> callable) {
            return this.f22129a.submit(callable);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public Future<?> submit(Runnable runnable) {
            return this.f22129a.submit(runnable);
        }
    }

    /* loaded from: classes5.dex */
    private static class FinalizableDelegatedExecutorService extends DelegatedExecutorService {
        FinalizableDelegatedExecutorService(ExecutorService executorService) {
            super(executorService);
        }

        protected void finalize() {
            super.shutdown();
        }
    }

    public static ExecutorService newSingleThreadExecutor(ThreadFactory threadFactory) {
        ThreadPoolExcutorEnhance threadPoolExcutorEnhance = new ThreadPoolExcutorEnhance(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExcutorEnhance.allowCoreThreadTimeOut(true);
        return new FinalizableDelegatedExecutorService(threadPoolExcutorEnhance);
    }
}
