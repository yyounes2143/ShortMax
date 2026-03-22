package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EnterExitTransition.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Fade {
    private final float alpha;
    @NotNull
    private final FiniteAnimationSpec<Float> animationSpec;

    public Fade(float f10, @NotNull FiniteAnimationSpec<Float> animationSpec) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        this.alpha = f10;
        this.animationSpec = animationSpec;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Fade copy$default(Fade fade, float f10, FiniteAnimationSpec finiteAnimationSpec, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = fade.alpha;
        }
        if ((i10 & 2) != 0) {
            finiteAnimationSpec = fade.animationSpec;
        }
        return fade.copy(f10, finiteAnimationSpec);
    }

    public final float component1() {
        return this.alpha;
    }

    @NotNull
    public final FiniteAnimationSpec<Float> component2() {
        return this.animationSpec;
    }

    @NotNull
    public final Fade copy(float f10, @NotNull FiniteAnimationSpec<Float> animationSpec) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        return new Fade(f10, animationSpec);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Fade)) {
            return false;
        }
        Fade fade = (Fade) obj;
        if (Intrinsics.areEqual((Object) Float.valueOf(this.alpha), (Object) Float.valueOf(fade.alpha)) && Intrinsics.areEqual(this.animationSpec, fade.animationSpec)) {
            return true;
        }
        return false;
    }

    public final float getAlpha() {
        return this.alpha;
    }

    @NotNull
    public final FiniteAnimationSpec<Float> getAnimationSpec() {
        return this.animationSpec;
    }

    public int hashCode() {
        return (Float.hashCode(this.alpha) * 31) + this.animationSpec.hashCode();
    }

    @NotNull
    public String toString() {
        return "Fade(alpha=" + this.alpha + ", animationSpec=" + this.animationSpec + ')';
    }
}
