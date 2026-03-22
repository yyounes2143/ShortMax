package androidx.compose.foundation.shape;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CornerBasedShape.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public abstract class CornerBasedShape implements Shape {
    public static final int $stable = 0;
    @NotNull
    private final CornerSize bottomEnd;
    @NotNull
    private final CornerSize bottomStart;
    @NotNull
    private final CornerSize topEnd;
    @NotNull
    private final CornerSize topStart;

    public CornerBasedShape(@NotNull CornerSize topStart, @NotNull CornerSize topEnd, @NotNull CornerSize bottomEnd, @NotNull CornerSize bottomStart) {
        Intrinsics.checkNotNullParameter(topStart, "topStart");
        Intrinsics.checkNotNullParameter(topEnd, "topEnd");
        Intrinsics.checkNotNullParameter(bottomEnd, "bottomEnd");
        Intrinsics.checkNotNullParameter(bottomStart, "bottomStart");
        this.topStart = topStart;
        this.topEnd = topEnd;
        this.bottomEnd = bottomEnd;
        this.bottomStart = bottomStart;
    }

    public static /* synthetic */ CornerBasedShape copy$default(CornerBasedShape cornerBasedShape, CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                cornerSize = cornerBasedShape.topStart;
            }
            if ((i10 & 2) != 0) {
                cornerSize2 = cornerBasedShape.topEnd;
            }
            if ((i10 & 4) != 0) {
                cornerSize3 = cornerBasedShape.bottomEnd;
            }
            if ((i10 & 8) != 0) {
                cornerSize4 = cornerBasedShape.bottomStart;
            }
            return cornerBasedShape.copy(cornerSize, cornerSize2, cornerSize3, cornerSize4);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copy");
    }

    @NotNull
    public final CornerBasedShape copy(@NotNull CornerSize all) {
        Intrinsics.checkNotNullParameter(all, "all");
        return copy(all, all, all, all);
    }

    @NotNull
    public abstract CornerBasedShape copy(@NotNull CornerSize cornerSize, @NotNull CornerSize cornerSize2, @NotNull CornerSize cornerSize3, @NotNull CornerSize cornerSize4);

    @NotNull
    /* renamed from: createOutline-LjSzlW0 */
    public abstract Outline mo680createOutlineLjSzlW0(long j10, float f10, float f11, float f12, float f13, @NotNull LayoutDirection layoutDirection);

    @Override // androidx.compose.ui.graphics.Shape
    @NotNull
    /* renamed from: createOutline-Pq9zytI */
    public final Outline mo235createOutlinePq9zytI(long j10, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(density, "density");
        float mo688toPxTmRCtEA = this.topStart.mo688toPxTmRCtEA(j10, density);
        float mo688toPxTmRCtEA2 = this.topEnd.mo688toPxTmRCtEA(j10, density);
        float mo688toPxTmRCtEA3 = this.bottomEnd.mo688toPxTmRCtEA(j10, density);
        float mo688toPxTmRCtEA4 = this.bottomStart.mo688toPxTmRCtEA(j10, density);
        float m1674getMinDimensionimpl = Size.m1674getMinDimensionimpl(j10);
        float f10 = mo688toPxTmRCtEA + mo688toPxTmRCtEA4;
        if (f10 > m1674getMinDimensionimpl) {
            float f11 = m1674getMinDimensionimpl / f10;
            mo688toPxTmRCtEA *= f11;
            mo688toPxTmRCtEA4 *= f11;
        }
        float f12 = mo688toPxTmRCtEA4;
        float f13 = mo688toPxTmRCtEA2 + mo688toPxTmRCtEA3;
        if (f13 > m1674getMinDimensionimpl) {
            float f14 = m1674getMinDimensionimpl / f13;
            mo688toPxTmRCtEA2 *= f14;
            mo688toPxTmRCtEA3 *= f14;
        }
        if (mo688toPxTmRCtEA >= 0.0f && mo688toPxTmRCtEA2 >= 0.0f && mo688toPxTmRCtEA3 >= 0.0f && f12 >= 0.0f) {
            return mo680createOutlineLjSzlW0(j10, mo688toPxTmRCtEA, mo688toPxTmRCtEA2, mo688toPxTmRCtEA3, f12, layoutDirection);
        }
        throw new IllegalArgumentException(("Corner size in Px can't be negative(topStart = " + mo688toPxTmRCtEA + ", topEnd = " + mo688toPxTmRCtEA2 + ", bottomEnd = " + mo688toPxTmRCtEA3 + ", bottomStart = " + f12 + ")!").toString());
    }

    @NotNull
    public final CornerSize getBottomEnd() {
        return this.bottomEnd;
    }

    @NotNull
    public final CornerSize getBottomStart() {
        return this.bottomStart;
    }

    @NotNull
    public final CornerSize getTopEnd() {
        return this.topEnd;
    }

    @NotNull
    public final CornerSize getTopStart() {
        return this.topStart;
    }
}
