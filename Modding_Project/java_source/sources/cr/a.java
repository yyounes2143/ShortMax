package cr;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BaseTaskManager.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class a implements c {
    private final void c(Runnable runnable, boolean z10) {
        yq.a aVar;
        if (runnable instanceof yq.a) {
            aVar = (yq.a) runnable;
        } else {
            aVar = null;
        }
        if (aVar != null) {
            try {
                aVar.a(z10);
                Unit unit = Unit.f60915a;
            } catch (Throwable unused) {
            }
        }
        try {
            d(runnable);
            Unit unit2 = Unit.f60915a;
        } catch (Throwable unused2) {
        }
    }

    @Override // cr.c
    public void cancel(@NotNull Runnable task) {
        Intrinsics.checkNotNullParameter(task, "task");
        c(task, true);
    }

    protected abstract void d(@NotNull Runnable runnable) throws Throwable;

    protected abstract void e(@NotNull Runnable runnable, long j10) throws Throwable;

    @Override // cr.c
    public void schedule(@NotNull Runnable task, long j10) throws Throwable {
        Intrinsics.checkNotNullParameter(task, "task");
        c(task, false);
        e(task, j10);
    }
}
