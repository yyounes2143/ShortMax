package fu;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* compiled from: AndroidMainExecutor.java */
/* loaded from: classes8.dex */
final class a implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f51940a = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f51940a.post(runnable);
    }
}
