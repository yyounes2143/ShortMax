package er;

import android.os.Handler;
import android.os.Looper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HandlerTaskManager.kt */
@Metadata
/* loaded from: classes8.dex */
public class a extends cr.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Handler f51547a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Looper looper) {
        this(new Handler(looper));
        Intrinsics.checkNotNullParameter(looper, "looper");
    }

    private final boolean g() {
        return Intrinsics.areEqual(Looper.myLooper(), this.f51547a.getLooper());
    }

    @Override // cr.a
    protected void d(@NotNull Runnable task) throws Throwable {
        Intrinsics.checkNotNullParameter(task, "task");
        this.f51547a.removeCallbacks(task);
    }

    @Override // cr.a
    protected void e(@NotNull Runnable task, long j10) throws Throwable {
        Intrinsics.checkNotNullParameter(task, "task");
        if (j10 > 0) {
            this.f51547a.postDelayed(task, j10);
        } else if (g()) {
            task.run();
        } else {
            this.f51547a.post(task);
        }
    }

    @NotNull
    public final Handler f() {
        return this.f51547a;
    }

    public a(@NotNull Handler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.f51547a = handler;
    }
}
