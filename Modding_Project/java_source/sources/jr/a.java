package jr;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: BackgroundTaskManager.java */
/* loaded from: classes8.dex */
public class a implements c {

    /* renamed from: c  reason: collision with root package name */
    private static final int f60536c;

    /* renamed from: d  reason: collision with root package name */
    private static final int f60537d;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledThreadPoolExecutor f60538a = new ScheduledThreadPoolExecutor(f60537d);
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Map<Runnable, Future<?>> f60539b = new ConcurrentHashMap();

    /* compiled from: BackgroundTaskManager.java */
    /* renamed from: jr.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    private class RunnableC0839a implements Runnable {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f60540a;

        public RunnableC0839a(@NonNull Runnable runnable) {
            this.f60540a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.c(this.f60540a);
            this.f60540a.run();
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f60536c = availableProcessors;
        f60537d = Math.max(2, Math.min(availableProcessors - 1, 4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public Future<?> c(@NonNull Runnable runnable) {
        try {
            return this.f60539b.remove(runnable);
        } catch (Throwable unused) {
            return null;
        }
    }

    public void b(@NonNull b bVar) {
        try {
            bVar.d(true);
            Future<?> c10 = c(bVar);
            if (c10 == null) {
                return;
            }
            c10.cancel(false);
        } catch (Throwable unused) {
        }
    }

    public void d(@NonNull b bVar, long j10, @NonNull TimeUnit timeUnit) {
        try {
            bVar.d(false);
            this.f60539b.put(bVar, this.f60538a.schedule(new RunnableC0839a(bVar), j10, timeUnit));
        } catch (Throwable unused) {
        }
    }

    @Override // jr.c
    public void execute(@NonNull Runnable runnable) {
        try {
            this.f60538a.execute(runnable);
        } catch (Throwable unused) {
        }
    }
}
