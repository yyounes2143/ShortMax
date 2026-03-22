package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimationVectors.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class AnimationVector3D extends AnimationVector {
    public static final int $stable = 8;
    private final int size;

    /* renamed from: v1  reason: collision with root package name */
    private float f891v1;

    /* renamed from: v2  reason: collision with root package name */
    private float f892v2;

    /* renamed from: v3  reason: collision with root package name */
    private float f893v3;

    public AnimationVector3D(float f10, float f11, float f12) {
        super(null);
        this.f891v1 = f10;
        this.f892v2 = f11;
        this.f893v3 = f12;
        this.size = 3;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof AnimationVector3D) {
            AnimationVector3D animationVector3D = (AnimationVector3D) obj;
            if (animationVector3D.f891v1 == this.f891v1 && animationVector3D.f892v2 == this.f892v2 && animationVector3D.f893v3 == this.f893v3) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public float get$animation_core_release(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return 0.0f;
                }
                return this.f893v3;
            }
            return this.f892v2;
        }
        return this.f891v1;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public int getSize$animation_core_release() {
        return this.size;
    }

    public final float getV1() {
        return this.f891v1;
    }

    public final float getV2() {
        return this.f892v2;
    }

    public final float getV3() {
        return this.f893v3;
    }

    public int hashCode() {
        return (((Float.hashCode(this.f891v1) * 31) + Float.hashCode(this.f892v2)) * 31) + Float.hashCode(this.f893v3);
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void reset$animation_core_release() {
        this.f891v1 = 0.0f;
        this.f892v2 = 0.0f;
        this.f893v3 = 0.0f;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void set$animation_core_release(int i10, float f10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    this.f893v3 = f10;
                    return;
                }
                return;
            }
            this.f892v2 = f10;
            return;
        }
        this.f891v1 = f10;
    }

    public final void setV1$animation_core_release(float f10) {
        this.f891v1 = f10;
    }

    public final void setV2$animation_core_release(float f10) {
        this.f892v2 = f10;
    }

    public final void setV3$animation_core_release(float f10) {
        this.f893v3 = f10;
    }

    @NotNull
    public String toString() {
        return "AnimationVector3D: v1 = " + this.f891v1 + ", v2 = " + this.f892v2 + ", v3 = " + this.f893v3;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    @NotNull
    public AnimationVector3D newVector$animation_core_release() {
        return new AnimationVector3D(0.0f, 0.0f, 0.0f);
    }
}
