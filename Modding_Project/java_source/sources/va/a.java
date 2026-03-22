package va;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final a f68842b = new a();

    /* renamed from: c  reason: collision with root package name */
    private static final int f68843c;

    /* renamed from: d  reason: collision with root package name */
    private static final int f68844d;

    /* renamed from: e  reason: collision with root package name */
    private static final int f68845e;

    /* renamed from: a  reason: collision with root package name */
    private final Executor f68846a = new ExecutorC0949a((byte) 0);

    /* renamed from: va.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static class ExecutorC0949a implements Executor {
        private ExecutorC0949a() {
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            new Handler(Looper.getMainLooper()).post(runnable);
        }

        /* synthetic */ ExecutorC0949a(byte b10) {
            this();
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f68843c = availableProcessors;
        f68844d = availableProcessors + 1;
        f68845e = (availableProcessors * 2) + 1;
    }

    public static ExecutorService a() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f68844d, f68845e, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    public static Executor b() {
        return f68842b.f68846a;
    }
}
