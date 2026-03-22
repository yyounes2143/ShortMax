package rq;

import io.bidmachine.rendering.model.ScaleType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class z {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ScaleType f66139a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final k0 f66140b;

    public z(@NotNull ScaleType scaleType, @NotNull k0 resource) {
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(resource, "resource");
        this.f66139a = scaleType;
        this.f66140b = resource;
    }

    @NotNull
    public final k0 a() {
        return this.f66140b;
    }

    @NotNull
    public final ScaleType b() {
        return this.f66139a;
    }
}
