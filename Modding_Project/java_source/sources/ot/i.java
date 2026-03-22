package ot;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import mt.b0;
import mt.d0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Tasks.kt */
@Metadata
/* loaded from: classes8.dex */
public final class i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final String f64398a = b0.e("kotlinx.coroutines.scheduler.default.name", "DefaultDispatcher");

    /* renamed from: b  reason: collision with root package name */
    public static final long f64399b;

    /* renamed from: c  reason: collision with root package name */
    public static final int f64400c;

    /* renamed from: d  reason: collision with root package name */
    public static final int f64401d;

    /* renamed from: e  reason: collision with root package name */
    public static final long f64402e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static f f64403f;

    static {
        long f10;
        int e10;
        int e11;
        long f11;
        f10 = d0.f("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 0L, 0L, 12, null);
        f64399b = f10;
        e10 = d0.e("kotlinx.coroutines.scheduler.core.pool.size", kotlin.ranges.e.e(b0.a(), 2), 1, 0, 8, null);
        f64400c = e10;
        e11 = d0.e("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4, null);
        f64401d = e11;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f11 = d0.f("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 0L, 0L, 12, null);
        f64402e = timeUnit.toNanos(f11);
        f64403f = d.f64389a;
    }

    @NotNull
    public static final g b(@NotNull Runnable runnable, long j10, boolean z10) {
        return new h(runnable, j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String c(boolean z10) {
        if (z10) {
            return "Blocking";
        }
        return "Non-blocking";
    }
}
