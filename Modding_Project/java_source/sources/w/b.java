package w;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: BoltsExecutors.java */
/* loaded from: classes2.dex */
final class b {

    /* renamed from: d  reason: collision with root package name */
    private static final b f69566d = new b();

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f69567a;

    /* renamed from: b  reason: collision with root package name */
    private final ScheduledExecutorService f69568b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f69569c;

    /* compiled from: BoltsExecutors.java */
    /* renamed from: w.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class ExecutorC0956b implements Executor {

        /* renamed from: a  reason: collision with root package name */
        private ThreadLocal<Integer> f69570a;

        private ExecutorC0956b() {
            this.f69570a = new ThreadLocal<>();
        }

        private int a() {
            Integer num = this.f69570a.get();
            if (num == null) {
                num = 0;
            }
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                this.f69570a.remove();
            } else {
                this.f69570a.set(Integer.valueOf(intValue));
            }
            return intValue;
        }

        private int b() {
            Integer num = this.f69570a.get();
            if (num == null) {
                num = 0;
            }
            int intValue = num.intValue() + 1;
            this.f69570a.set(Integer.valueOf(intValue));
            return intValue;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                if (b() <= 15) {
                    runnable.run();
                } else {
                    b.a().execute(runnable);
                }
                a();
            } catch (Throwable th2) {
                a();
                throw th2;
            }
        }
    }

    private b() {
        ExecutorService b10;
        if (!c()) {
            b10 = Executors.newCachedThreadPool();
        } else {
            b10 = w.a.b();
        }
        this.f69567a = b10;
        this.f69568b = Executors.newSingleThreadScheduledExecutor();
        this.f69569c = new ExecutorC0956b();
    }

    public static ExecutorService a() {
        return f69566d.f69567a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor b() {
        return f69566d.f69569c;
    }

    private static boolean c() {
        String property = System.getProperty("java.runtime.name");
        if (property == null) {
            return false;
        }
        return property.toLowerCase(Locale.US).contains("android");
    }
}
