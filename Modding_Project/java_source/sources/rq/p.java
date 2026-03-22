package rq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class p implements g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final o f66086a;

    public p(@NotNull o color) {
        Intrinsics.checkNotNullParameter(color, "color");
        this.f66086a = color;
    }

    @NotNull
    public final o a() {
        return this.f66086a;
    }
}
