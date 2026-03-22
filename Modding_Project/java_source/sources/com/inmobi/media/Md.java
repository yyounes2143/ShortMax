package com.inmobi.media;

import android.os.Handler;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes5.dex */
public abstract class Md {

    /* renamed from: a  reason: collision with root package name */
    public static final ms.i f23861a = kotlin.c.b(Ld.f23819a);

    public static final void a(@NotNull Runnable runnable, long j10) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        ((Handler) f23861a.getValue()).postDelayed(runnable, j10);
    }

    public static final void a(@NotNull Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        ((Handler) f23861a.getValue()).post(runnable);
    }
}
