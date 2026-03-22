package tp;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes8.dex */
public class i {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicBoolean f67631a = new AtomicBoolean(false);
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicBoolean f67632b = new AtomicBoolean(false);
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private static final Object f67633c = new Object();

    private static void a(@NonNull Context context) {
        new sq.d().b(sq.e.d(context));
    }

    public static void b(@NonNull Context context) {
        AtomicBoolean atomicBoolean = f67632b;
        if (atomicBoolean.get()) {
            return;
        }
        synchronized (f67633c) {
            try {
                if (!f67631a.compareAndSet(false, true)) {
                    return;
                }
                a(context);
                c(context);
                atomicBoolean.set(true);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void c(@NonNull Context context) {
        sq.e.a(context);
    }
}
