package op;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: NativeNetworkExecutor.java */
/* loaded from: classes8.dex */
public class b implements Executor {

    /* renamed from: b  reason: collision with root package name */
    private static b f64345b;

    /* renamed from: a  reason: collision with root package name */
    private final ThreadPoolExecutor f64346a;

    private b() {
        int availableProcessors = Runtime.getRuntime().availableProcessors() * 2;
        this.f64346a = new ThreadPoolExecutor(availableProcessors, availableProcessors, 0L, TimeUnit.MICROSECONDS, new LinkedBlockingQueue());
    }

    public static b a() {
        if (f64345b == null) {
            f64345b = new b();
        }
        return f64345b;
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        this.f64346a.execute(runnable);
    }
}
