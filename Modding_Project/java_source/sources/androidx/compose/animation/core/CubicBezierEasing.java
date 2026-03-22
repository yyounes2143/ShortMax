package androidx.compose.animation.core;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: Easing.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class CubicBezierEasing implements Easing {

    /* renamed from: a  reason: collision with root package name */
    private final float f898a;

    /* renamed from: b  reason: collision with root package name */
    private final float f899b;

    /* renamed from: c  reason: collision with root package name */
    private final float f900c;

    /* renamed from: d  reason: collision with root package name */
    private final float f901d;

    public CubicBezierEasing(float f10, float f11, float f12, float f13) {
        this.f898a = f10;
        this.f899b = f11;
        this.f900c = f12;
        this.f901d = f13;
    }

    private final float evaluateCubic(float f10, float f11, float f12) {
        float f13 = 3;
        float f14 = 1 - f12;
        return (f10 * f13 * f14 * f14 * f12) + (f13 * f11 * f14 * f12 * f12) + (f12 * f12 * f12);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof CubicBezierEasing) {
            CubicBezierEasing cubicBezierEasing = (CubicBezierEasing) obj;
            if (this.f898a == cubicBezierEasing.f898a && this.f899b == cubicBezierEasing.f899b && this.f900c == cubicBezierEasing.f900c && this.f901d == cubicBezierEasing.f901d) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((((Float.hashCode(this.f898a) * 31) + Float.hashCode(this.f899b)) * 31) + Float.hashCode(this.f900c)) * 31) + Float.hashCode(this.f901d);
    }

    @Override // androidx.compose.animation.core.Easing
    public float transform(float f10) {
        float f11 = 0.0f;
        if (f10 > 0.0f) {
            float f12 = 1.0f;
            if (f10 < 1.0f) {
                while (true) {
                    float f13 = (f11 + f12) / 2;
                    float evaluateCubic = evaluateCubic(this.f898a, this.f900c, f13);
                    if (Math.abs(f10 - evaluateCubic) < 0.001f) {
                        return evaluateCubic(this.f899b, this.f901d, f13);
                    }
                    if (evaluateCubic < f10) {
                        f11 = f13;
                    } else {
                        f12 = f13;
                    }
                }
            }
        }
        return f10;
    }
}
