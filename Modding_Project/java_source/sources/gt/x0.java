package gt;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: EventLoop.kt */
@Metadata
/* loaded from: classes8.dex */
public final class x0 {
    @NotNull
    public static final u0 a() {
        return new d(Thread.currentThread());
    }

    public static final long b() {
        u0 a10 = u1.f52561a.a();
        if (a10 != null) {
            return a10.R();
        }
        return Long.MAX_VALUE;
    }
}
