package io.bidmachine;

import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes7.dex */
public class ExpirationHandler {
    private final long expirationTimeMs;
    @NonNull
    private final c expiredTask;
    @NonNull
    private final AtomicBoolean isExpireTrackerSubscribed;
    @NonNull
    private final TaskScheduler taskScheduler;

    /* loaded from: classes7.dex */
    public interface Listener {
        void onExpired();
    }

    /* loaded from: classes7.dex */
    public interface TaskScheduler {
        void cancelTask(@NonNull jr.b bVar);

        void scheduleTask(@NonNull jr.b bVar, long j10);
    }

    /* loaded from: classes7.dex */
    private static class b implements TaskScheduler {
        private b() {
        }

        @Override // io.bidmachine.ExpirationHandler.TaskScheduler
        public void cancelTask(@NonNull jr.b bVar) {
            bVar.d(true);
            io.bidmachine.core.g.g(bVar);
        }

        @Override // io.bidmachine.ExpirationHandler.TaskScheduler
        public void scheduleTask(@NonNull jr.b bVar, long j10) {
            bVar.d(false);
            io.bidmachine.core.g.Y(bVar, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class c extends jr.b {
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<Listener> f53571b;

        public c(@NonNull Listener listener) {
            this.f53571b = new WeakReference<>(listener);
        }

        @Override // jr.b
        public void c() {
            Listener listener = this.f53571b.get();
            if (listener != null) {
                listener.onExpired();
            }
        }
    }

    public ExpirationHandler(long j10, @NonNull Listener listener) {
        this(j10, listener, new b());
    }

    @NonNull
    TaskScheduler getTaskScheduler() {
        return this.taskScheduler;
    }

    public void start() {
        if (this.expirationTimeMs > 0 && this.isExpireTrackerSubscribed.compareAndSet(false, true)) {
            this.taskScheduler.scheduleTask(this.expiredTask, this.expirationTimeMs);
        }
    }

    public void stop() {
        this.isExpireTrackerSubscribed.set(false);
        this.taskScheduler.cancelTask(this.expiredTask);
    }

    public ExpirationHandler(long j10, @NonNull Listener listener, @NonNull TaskScheduler taskScheduler) {
        this.expiredTask = new c(listener);
        this.expirationTimeMs = j10;
        this.taskScheduler = taskScheduler;
        this.isExpireTrackerSubscribed = new AtomicBoolean(false);
    }
}
