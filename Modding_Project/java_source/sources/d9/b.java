package d9;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import com.google.firebase.messaging.threads.ThreadPriority;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: PoolableExecutors.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final d9.a f50271a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile d9.a f50272b;

    /* compiled from: PoolableExecutors.java */
    /* renamed from: d9.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static class C0705b implements d9.a {
        private C0705b() {
        }

        @Override // d9.a
        @NonNull
        public ExecutorService a(ThreadFactory threadFactory, ThreadPriority threadPriority) {
            return b(1, threadFactory, threadPriority);
        }

        @NonNull
        @SuppressLint({"ThreadPoolCreation"})
        public ExecutorService b(int i10, ThreadFactory threadFactory, ThreadPriority threadPriority) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i10, i10, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            return Executors.unconfigurableExecutorService(threadPoolExecutor);
        }
    }

    static {
        C0705b c0705b = new C0705b();
        f50271a = c0705b;
        f50272b = c0705b;
    }

    public static d9.a a() {
        return f50272b;
    }
}
