package gt;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: EventLoop.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d extends v0 {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Thread f52531g;

    public d(@NotNull Thread thread) {
        this.f52531g = thread;
    }

    @Override // gt.w0
    @NotNull
    protected Thread Y() {
        return this.f52531g;
    }
}
