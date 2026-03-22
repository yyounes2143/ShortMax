package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimationVectors.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class AnimationVector4D extends AnimationVector {
    public static final int $stable = 8;
    private final int size;

    /* renamed from: v1  reason: collision with root package name */
    private float f894v1;

    /* renamed from: v2  reason: collision with root package name */
    private float f895v2;

    /* renamed from: v3  reason: collision with root package name */
    private float f896v3;

    /* renamed from: v4  reason: collision with root package name */
    private float f897v4;

    public AnimationVector4D(float f10, float f11, float f12, float f13) {
        super(null);
        this.f894v1 = f10;
        this.f895v2 = f11;
        this.f896v3 = f12;
        this.f897v4 = f13;
        this.size = 4;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof AnimationVector4D) {
            AnimationVector4D animationVector4D = (AnimationVector4D) obj;
            if (animationVector4D.f894v1 == this.f894v1 && animationVector4D.f895v2 == this.f895v2 && animationVector4D.f896v3 == this.f896v3 && animationVector4D.f897v4 == this.f897v4) {
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
                    if (i10 != 3) {
                        return 0.0f;
                    }
                    return this.f897v4;
                }
                return this.f896v3;
            }
            return this.f895v2;
        }
        return this.f894v1;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public int getSize$animation_core_release() {
        return this.size;
    }

    public final float getV1() {
        return this.f894v1;
    }

    public final float getV2() {
        return this.f895v2;
    }

    public final float getV3() {
        return this.f896v3;
    }

    public final float getV4() {
        return this.f897v4;
    }

    public int hashCode() {
        return (((((Float.hashCode(this.f894v1) * 31) + Float.hashCode(this.f895v2)) * 31) + Float.hashCode(this.f896v3)) * 31) + Float.hashCode(this.f897v4);
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void reset$animation_core_release() {
        this.f894v1 = 0.0f;
        this.f895v2 = 0.0f;
        this.f896v3 = 0.0f;
        this.f897v4 = 0.0f;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void set$animation_core_release(int i10, float f10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        this.f897v4 = f10;
                        return;
                    }
                    return;
                }
                this.f896v3 = f10;
                return;
            }
            this.f895v2 = f10;
            return;
        }
        this.f894v1 = f10;
    }

    public final void setV1$animation_core_release(float f10) {
        this.f894v1 = f10;
    }

    public final void setV2$animation_core_release(float f10) {
        this.f895v2 = f10;
    }

    public final void setV3$animation_core_release(float f10) {
        this.f896v3 = f10;
    }

    public final void setV4$animation_core_release(float f10) {
        this.f897v4 = f10;
    }

    @NotNull
    public String toString() {
        return "AnimationVector4D: v1 = " + this.f894v1 + ", v2 = " + this.f895v2 + ", v3 = " + this.f896v3 + ", v4 = " + this.f897v4;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    @NotNull
    public AnimationVector4D newVector$animation_core_release() {
        return new AnimationVector4D(0.0f, 0.0f, 0.0f, 0.0f);
    }
}
