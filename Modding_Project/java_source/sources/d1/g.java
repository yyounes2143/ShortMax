package d1;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: LottieThreadFactory.java */
/* loaded from: classes2.dex */
public class g implements ThreadFactory {

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicInteger f49769d = new AtomicInteger(1);

    /* renamed from: a  reason: collision with root package name */
    private final ThreadGroup f49770a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f49771b = new AtomicInteger(1);

    /* renamed from: c  reason: collision with root package name */
    private final String f49772c;

    public g() {
        ThreadGroup threadGroup;
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager == null) {
            threadGroup = Thread.currentThread().getThreadGroup();
        } else {
            threadGroup = securityManager.getThreadGroup();
        }
        this.f49770a = threadGroup;
        this.f49772c = "lottie-" + f49769d.getAndIncrement() + "-thread-";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        ThreadGroup threadGroup = this.f49770a;
        Thread thread = new Thread(threadGroup, runnable, this.f49772c + this.f49771b.getAndIncrement(), 0L);
        thread.setDaemon(false);
        thread.setPriority(10);
        return thread;
    }
}
