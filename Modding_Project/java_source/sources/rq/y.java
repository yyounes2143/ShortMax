package rq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class y implements l0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f66138a;

    public y(@NotNull String html) {
        Intrinsics.checkNotNullParameter(html, "html");
        this.f66138a = html;
    }

    @NotNull
    public final String a() {
        return this.f66138a;
    }
}
