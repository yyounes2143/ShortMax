package rq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class i0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final j0 f66059a;

    public i0(@NotNull j0 source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.f66059a = source;
    }

    @NotNull
    public final j0 a() {
        return this.f66059a;
    }
}
