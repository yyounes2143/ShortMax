package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes7.dex */
public class BidTokenTaskManager {
    @Nullable
    private static volatile jr.a instance;

    public static void cancel(@NonNull jr.b bVar) {
        get().b(bVar);
    }

    public static void execute(@NonNull Runnable runnable) {
        get().execute(runnable);
    }

    @NonNull
    private static jr.a get() {
        jr.a aVar = instance;
        if (aVar == null) {
            synchronized (jr.a.class) {
                try {
                    aVar = instance;
                    if (aVar == null) {
                        aVar = new jr.a();
                        instance = aVar;
                    }
                } finally {
                }
            }
        }
        return aVar;
    }

    public static void schedule(@NonNull jr.b bVar, long j10, @NonNull TimeUnit timeUnit) {
        get().d(bVar, j10, timeUnit);
    }
}
