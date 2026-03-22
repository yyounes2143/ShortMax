package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimationVectors.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public abstract class AnimationVector {
    public static final int $stable = 0;

    public /* synthetic */ AnimationVector(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract float get$animation_core_release(int i10);

    public abstract int getSize$animation_core_release();

    @NotNull
    public abstract AnimationVector newVector$animation_core_release();

    public abstract void reset$animation_core_release();

    public abstract void set$animation_core_release(int i10, float f10);

    private AnimationVector() {
    }
}
