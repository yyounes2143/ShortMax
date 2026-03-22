package kotlin.time;

import kotlin.Metadata;
import kotlin.time.h;
import org.jetbrains.annotations.NotNull;
/* compiled from: MonoTimeSource.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g implements et.b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f61255a = new g();

    /* renamed from: b  reason: collision with root package name */
    private static final long f61256b = System.nanoTime();

    private g() {
    }

    private final long e() {
        return System.nanoTime() - f61256b;
    }

    @Override // et.b
    public /* bridge */ /* synthetic */ a a() {
        return h.a.b(d());
    }

    public final long b(long j10, long j11) {
        return f.d(j10, j11, DurationUnit.NANOSECONDS);
    }

    public final long c(long j10) {
        return f.b(e(), j10, DurationUnit.NANOSECONDS);
    }

    public long d() {
        return h.a.e(e());
    }

    @NotNull
    public String toString() {
        return "TimeSource(System.nanoTime())";
    }
}
