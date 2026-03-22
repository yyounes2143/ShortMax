package gt;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: EventLoop.common.kt */
@Metadata
/* loaded from: classes8.dex */
public final class y0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final mt.a0 f52577a = new mt.a0("REMOVED_TASK");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final mt.a0 f52578b = new mt.a0("CLOSED_EMPTY");

    public static final long c(long j10) {
        if (j10 <= 0) {
            return 0L;
        }
        if (j10 >= 9223372036854L) {
            return Long.MAX_VALUE;
        }
        return 1000000 * j10;
    }
}
