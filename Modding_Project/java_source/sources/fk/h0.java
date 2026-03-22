package fk;

import android.os.Handler;
import android.os.Looper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UIHandler.kt */
@Metadata
/* loaded from: classes7.dex */
public final class h0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final h0 f51735a = new h0();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Object f51736b = new Object();
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static Handler f51737c;

    private h0() {
    }

    private final void b() {
        synchronized (f51736b) {
            try {
                if (f51737c == null) {
                    f51737c = new Handler(Looper.getMainLooper());
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(Runnable runnable) {
        runnable.run();
    }

    public final boolean c() {
        return Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper());
    }

    public final void d(@NotNull Runnable runnable, long j10) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        b();
        Handler handler = f51737c;
        if (handler != null) {
            handler.postDelayed(runnable, j10);
        }
    }

    public final void e(@NotNull final Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        if (c()) {
            runnable.run();
            return;
        }
        b();
        Handler handler = f51737c;
        if (handler != null) {
            handler.post(new Runnable() { // from class: fk.g0
                @Override // java.lang.Runnable
                public final void run() {
                    h0.f(runnable);
                }
            });
        }
    }
}
