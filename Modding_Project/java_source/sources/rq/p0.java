package rq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class p0 implements l0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f66087a;

    public p0(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f66087a = url;
    }

    @NotNull
    public final String a() {
        return this.f66087a;
    }
}
