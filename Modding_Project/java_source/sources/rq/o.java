package rq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class o {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final r f66083a;

    public o(@NotNull r source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.f66083a = source;
    }

    @NotNull
    public final r a() {
        return this.f66083a;
    }
}
