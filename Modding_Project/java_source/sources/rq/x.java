package rq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class x implements r {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final w f66137a;

    public x(@NotNull w gradient) {
        Intrinsics.checkNotNullParameter(gradient, "gradient");
        this.f66137a = gradient;
    }

    @NotNull
    public final w a() {
        return this.f66137a;
    }
}
