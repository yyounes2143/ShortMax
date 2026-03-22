package w;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: AndroidExecutors.java */
/* loaded from: classes2.dex */
final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final a f69561b = new a();

    /* renamed from: c  reason: collision with root package name */
    private static final int f69562c;

    /* renamed from: d  reason: collision with root package name */
    static final int f69563d;

    /* renamed from: e  reason: collision with root package name */
    static final int f69564e;

    /* renamed from: a  reason: collision with root package name */
    private final Executor f69565a = new b();

    /* compiled from: AndroidExecutors.java */
    /* loaded from: classes2.dex */
    private static class b implements Executor {
        private b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f69562c = availableProcessors;
        f69563d = availableProcessors + 1;
        f69564e = (availableProcessors * 2) + 1;
    }

    private a() {
    }

    @SuppressLint({"NewApi"})
    public static void a(ThreadPoolExecutor threadPoolExecutor, boolean z10) {
        threadPoolExecutor.allowCoreThreadTimeOut(z10);
    }

    public static ExecutorService b() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f69563d, f69564e, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        a(threadPoolExecutor, true);
        return threadPoolExecutor;
    }

    public static Executor c() {
        return f69561b.f69565a;
    }
}
