package com.vungle.ads.internal.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HandlerScheduler.kt */
@Metadata
/* loaded from: classes7.dex */
public final class HandlerScheduler {
    @NotNull
    private final Handler handler = new Handler(Looper.getMainLooper());

    private final long calculateTime(long j10) {
        return SystemClock.uptimeMillis() + j10;
    }

    public final void cancel(@NotNull String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.handler.removeCallbacksAndMessages(tag);
    }

    public final void cancelAll() {
        this.handler.removeCallbacksAndMessages(null);
    }

    public final void schedule(@NotNull Runnable runnable, @NotNull String tag, long j10) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.handler.postAtTime(runnable, tag, calculateTime(j10));
    }

    public final void schedule(@NotNull Runnable runnable, long j10) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        this.handler.postAtTime(runnable, calculateTime(j10));
    }
}
