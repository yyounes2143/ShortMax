package rq;

import io.bidmachine.rendering.model.BrokenCreativeAlgorithmType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class k {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final BrokenCreativeAlgorithmType f66062a;

    /* renamed from: b  reason: collision with root package name */
    private final float f66063b;

    /* renamed from: c  reason: collision with root package name */
    private final float f66064c;

    public k(@NotNull BrokenCreativeAlgorithmType type, float f10, float f11) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.f66062a = type;
        this.f66063b = f10;
        this.f66064c = f11;
    }

    public final float a() {
        return this.f66063b;
    }

    @NotNull
    public final BrokenCreativeAlgorithmType b() {
        return this.f66062a;
    }

    public final float c() {
        return this.f66064c;
    }
}
