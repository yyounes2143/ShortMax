package cn;

import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
/* compiled from: BackgroundExecutor.java */
/* loaded from: classes8.dex */
public final class b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static Executor f3563a;

    public static synchronized Executor a() {
        Executor executor;
        synchronized (b.class) {
            try {
                if (f3563a == null) {
                    f3563a = m0.T0("ExoPlayer:BackgroundExecutor");
                }
                executor = f3563a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return executor;
    }
}
