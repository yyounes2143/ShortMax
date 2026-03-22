package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.TransformOrigin;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EnterExitTransition.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Scale {
    @NotNull
    private final FiniteAnimationSpec<Float> animationSpec;
    private final float scale;
    private final long transformOrigin;

    public /* synthetic */ Scale(float f10, long j10, FiniteAnimationSpec finiteAnimationSpec, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, j10, finiteAnimationSpec);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: copy-bnNdC4k$default  reason: not valid java name */
    public static /* synthetic */ Scale m111copybnNdC4k$default(Scale scale, float f10, long j10, FiniteAnimationSpec finiteAnimationSpec, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = scale.scale;
        }
        if ((i10 & 2) != 0) {
            j10 = scale.transformOrigin;
        }
        if ((i10 & 4) != 0) {
            finiteAnimationSpec = scale.animationSpec;
        }
        return scale.m113copybnNdC4k(f10, j10, finiteAnimationSpec);
    }

    public final float component1() {
        return this.scale;
    }

    /* renamed from: component2-SzJe1aQ  reason: not valid java name */
    public final long m112component2SzJe1aQ() {
        return this.transformOrigin;
    }

    @NotNull
    public final FiniteAnimationSpec<Float> component3() {
        return this.animationSpec;
    }

    @NotNull
    /* renamed from: copy-bnNdC4k  reason: not valid java name */
    public final Scale m113copybnNdC4k(float f10, long j10, @NotNull FiniteAnimationSpec<Float> animationSpec) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        return new Scale(f10, j10, animationSpec, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scale)) {
            return false;
        }
        Scale scale = (Scale) obj;
        if (Intrinsics.areEqual((Object) Float.valueOf(this.scale), (Object) Float.valueOf(scale.scale)) && TransformOrigin.m2178equalsimpl0(this.transformOrigin, scale.transformOrigin) && Intrinsics.areEqual(this.animationSpec, scale.animationSpec)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final FiniteAnimationSpec<Float> getAnimationSpec() {
        return this.animationSpec;
    }

    public final float getScale() {
        return this.scale;
    }

    /* renamed from: getTransformOrigin-SzJe1aQ  reason: not valid java name */
    public final long m114getTransformOriginSzJe1aQ() {
        return this.transformOrigin;
    }

    public int hashCode() {
        return (((Float.hashCode(this.scale) * 31) + TransformOrigin.m2181hashCodeimpl(this.transformOrigin)) * 31) + this.animationSpec.hashCode();
    }

    @NotNull
    public String toString() {
        return "Scale(scale=" + this.scale + ", transformOrigin=" + ((Object) TransformOrigin.m2182toStringimpl(this.transformOrigin)) + ", animationSpec=" + this.animationSpec + ')';
    }

    private Scale(float f10, long j10, FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.scale = f10;
        this.transformOrigin = j10;
        this.animationSpec = finiteAnimationSpec;
    }
}
