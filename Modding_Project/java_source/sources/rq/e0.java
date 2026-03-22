package rq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class e0 implements j0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f66047a;

    public e0(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f66047a = name;
    }

    @NotNull
    public final String a() {
        return this.f66047a;
    }
}
