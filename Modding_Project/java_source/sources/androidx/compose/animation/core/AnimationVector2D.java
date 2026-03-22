package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimationVectors.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class AnimationVector2D extends AnimationVector {
    public static final int $stable = 8;
    private final int size;

    /* renamed from: v1  reason: collision with root package name */
    private float f889v1;

    /* renamed from: v2  reason: collision with root package name */
    private float f890v2;

    public AnimationVector2D(float f10, float f11) {
        super(null);
        this.f889v1 = f10;
        this.f890v2 = f11;
        this.size = 2;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof AnimationVector2D) {
            AnimationVector2D animationVector2D = (AnimationVector2D) obj;
            if (animationVector2D.f889v1 == this.f889v1 && animationVector2D.f890v2 == this.f890v2) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public float get$animation_core_release(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                return 0.0f;
            }
            return this.f890v2;
        }
        return this.f889v1;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public int getSize$animation_core_release() {
        return this.size;
    }

    public final float getV1() {
        return this.f889v1;
    }

    public final float getV2() {
        return this.f890v2;
    }

    public int hashCode() {
        return (Float.hashCode(this.f889v1) * 31) + Float.hashCode(this.f890v2);
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void reset$animation_core_release() {
        this.f889v1 = 0.0f;
        this.f890v2 = 0.0f;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void set$animation_core_release(int i10, float f10) {
        if (i10 != 0) {
            if (i10 == 1) {
                this.f890v2 = f10;
                return;
            }
            return;
        }
        this.f889v1 = f10;
    }

    public final void setV1$animation_core_release(float f10) {
        this.f889v1 = f10;
    }

    public final void setV2$animation_core_release(float f10) {
        this.f890v2 = f10;
    }

    @NotNull
    public String toString() {
        return "AnimationVector2D: v1 = " + this.f889v1 + ", v2 = " + this.f890v2;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    @NotNull
    public AnimationVector2D newVector$animation_core_release() {
        return new AnimationVector2D(0.0f, 0.0f);
    }
}
