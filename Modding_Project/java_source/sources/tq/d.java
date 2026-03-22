package tq;

import androidx.annotation.NonNull;
import java.util.concurrent.TimeUnit;
/* loaded from: classes8.dex */
public interface d {
    void cancel(@NonNull Runnable runnable);

    void execute(@NonNull Runnable runnable);

    default void schedule(@NonNull Runnable runnable, long j10) {
        schedule(runnable, j10, TimeUnit.MILLISECONDS);
    }

    void schedule(@NonNull Runnable runnable, long j10, @NonNull TimeUnit timeUnit);
}
