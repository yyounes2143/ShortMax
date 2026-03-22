package cr;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TaskManager.kt */
@Metadata
/* loaded from: classes8.dex */
public interface c {
    default boolean a(@NotNull Runnable task, long j10) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(task, "task");
        try {
            schedule(task, j10);
            bool = Boolean.TRUE;
        } catch (Throwable unused) {
            bool = null;
        }
        return Intrinsics.areEqual(bool, Boolean.TRUE);
    }

    default boolean b(@NotNull Runnable task) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(task, "task");
        try {
            execute(task);
            bool = Boolean.TRUE;
        } catch (Throwable unused) {
            bool = null;
        }
        return Intrinsics.areEqual(bool, Boolean.TRUE);
    }

    void cancel(@NotNull Runnable runnable);

    default void execute(@NotNull Runnable task) throws Throwable {
        Intrinsics.checkNotNullParameter(task, "task");
        schedule(task, 0L);
    }

    void schedule(@NotNull Runnable runnable, long j10) throws Throwable;
}
