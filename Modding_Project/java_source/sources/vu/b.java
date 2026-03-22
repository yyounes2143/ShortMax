package vu;

import android.os.Handler;
import android.os.Looper;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f69559a = new b();

    /* renamed from: b  reason: collision with root package name */
    public static Handler f69560b;

    public static final void b(Runnable runnable) {
        runnable.run();
    }

    public final void a(final Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            runnable.run();
            return;
        }
        synchronized (this) {
            if (f69560b == null) {
                f69560b = new Handler(Looper.getMainLooper());
            }
        }
        Handler handler = f69560b;
        if (handler != null) {
            handler.post(new Runnable() { // from class: vu.a
                @Override // java.lang.Runnable
                public final void run() {
                    b.b(runnable);
                }
            });
        }
    }
}
