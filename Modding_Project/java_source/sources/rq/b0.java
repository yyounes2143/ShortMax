package rq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class b0 implements j0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final z f65999a;

    public b0(@NotNull z image) {
        Intrinsics.checkNotNullParameter(image, "image");
        this.f65999a = image;
    }

    @NotNull
    public final z a() {
        return this.f65999a;
    }
}
