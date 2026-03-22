package hb;

import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public class e {

    /* renamed from: b  reason: collision with root package name */
    private static e f52661b;

    /* renamed from: c  reason: collision with root package name */
    private static e f52662c;

    /* renamed from: d  reason: collision with root package name */
    private static e f52663d;

    /* renamed from: a  reason: collision with root package name */
    private ThreadPoolExecutor f52664a = new ThreadPoolExecutor(0, 1, (long) ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(5000), new b());

    /* loaded from: classes5.dex */
    private static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private Runnable f52665a;

        public a(Runnable runnable) {
            this.f52665a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = this.f52665a;
            if (runnable != null) {
                try {
                    runnable.run();
                } catch (Exception unused) {
                    f1.l("hmsSdk", "InnerTask : Exception has happened,From internal operations!");
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    static class b implements ThreadFactory {

        /* renamed from: d  reason: collision with root package name */
        private static final AtomicInteger f52666d = new AtomicInteger(1);

        /* renamed from: a  reason: collision with root package name */
        private final ThreadGroup f52667a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f52668b = new AtomicInteger(1);

        /* renamed from: c  reason: collision with root package name */
        private final String f52669c;

        b() {
            ThreadGroup threadGroup;
            SecurityManager securityManager = System.getSecurityManager();
            if (securityManager != null) {
                threadGroup = securityManager.getThreadGroup();
            } else {
                threadGroup = Thread.currentThread().getThreadGroup();
            }
            this.f52667a = threadGroup;
            this.f52669c = "FormalHASDK-base-" + f52666d.getAndIncrement();
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.f52667a;
            return new Thread(threadGroup, runnable, this.f52669c + this.f52668b.getAndIncrement(), 0L);
        }
    }

    static {
        new e();
        new e();
        f52661b = new e();
        f52662c = new e();
        f52663d = new e();
    }

    private e() {
    }

    public static e a() {
        return f52663d;
    }

    public static e c() {
        return f52662c;
    }

    public static e d() {
        return f52661b;
    }

    public void b(u uVar) {
        try {
            this.f52664a.execute(new a(uVar));
        } catch (RejectedExecutionException unused) {
            f1.l("hmsSdk", "addToQueue() Exception has happened!Form rejected execution");
        }
    }
}
