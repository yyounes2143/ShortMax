package i2;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: DefaultSerialExecutorService.java */
/* loaded from: classes3.dex */
public class d extends b implements g {
    public d(Executor executor) {
        super("SerialExecutor", 1, executor, new LinkedBlockingQueue());
    }

    @Override // i2.b, java.util.concurrent.Executor
    public synchronized void execute(Runnable runnable) {
        super.execute(runnable);
    }
}
