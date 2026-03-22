package i2;

import android.os.Handler;
import android.os.Looper;
/* compiled from: UiThreadImmediateExecutorService.java */
/* loaded from: classes3.dex */
public class i extends e {

    /* renamed from: b  reason: collision with root package name */
    private static i f53290b;

    private i() {
        super(new Handler(Looper.getMainLooper()));
    }

    public static i g() {
        if (f53290b == null) {
            f53290b = new i();
        }
        return f53290b;
    }

    @Override // i2.e, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (a()) {
            runnable.run();
        } else {
            super.execute(runnable);
        }
    }
}
