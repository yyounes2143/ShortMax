package rq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class i implements l0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f66058a;

    public i(@NotNull String base64) {
        Intrinsics.checkNotNullParameter(base64, "base64");
        this.f66058a = base64;
    }

    @NotNull
    public final String a() {
        return this.f66058a;
    }
}
