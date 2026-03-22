package c5;

import java.util.concurrent.Executor;
/* compiled from: SafeLoggingExecutor.java */
/* loaded from: classes4.dex */
class n implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f3128a;

    /* compiled from: SafeLoggingExecutor.java */
    /* loaded from: classes4.dex */
    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f3129a;

        a(Runnable runnable) {
            this.f3129a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f3129a.run();
            } catch (Exception e10) {
                g5.a.d("Executor", "Background execution failure.", e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Executor executor) {
        this.f3128a = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f3128a.execute(new a(runnable));
    }
}
