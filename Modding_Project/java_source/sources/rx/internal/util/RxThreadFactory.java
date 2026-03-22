package rx.internal.util;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes8.dex */
public final class RxThreadFactory extends AtomicLong implements ThreadFactory {

    /* renamed from: b  reason: collision with root package name */
    public static final ThreadFactory f66173b = new a();

    /* renamed from: a  reason: collision with root package name */
    final String f66174a;

    /* loaded from: classes8.dex */
    static class a implements ThreadFactory {
        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            throw new AssertionError("No threads allowed.");
        }
    }

    public RxThreadFactory(String str) {
        this.f66174a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.f66174a + incrementAndGet());
        thread.setDaemon(true);
        return thread;
    }
}
