package rq;

import io.bidmachine.rendering.model.GradientDirection;
import io.bidmachine.rendering.model.GradientType;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class w {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final GradientType f66134a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final GradientDirection f66135b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<Integer> f66136c;

    public w(@NotNull GradientType type, @NotNull GradientDirection direction, @NotNull List<Integer> colors) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(colors, "colors");
        this.f66134a = type;
        this.f66135b = direction;
        this.f66136c = colors;
    }

    @NotNull
    public final List<Integer> a() {
        return this.f66136c;
    }

    @NotNull
    public final GradientDirection b() {
        return this.f66135b;
    }

    @NotNull
    public final GradientType c() {
        return this.f66134a;
    }
}
