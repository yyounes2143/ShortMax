package androidx.compose.ui.graphics.colorspace;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WhitePoint.kt */
@Metadata
/* loaded from: classes.dex */
public final class WhitePoint {

    /* renamed from: x  reason: collision with root package name */
    private final float f1249x;

    /* renamed from: y  reason: collision with root package name */
    private final float f1250y;

    public WhitePoint(float f10, float f11) {
        this.f1249x = f10;
        this.f1250y = f11;
    }

    public static /* synthetic */ WhitePoint copy$default(WhitePoint whitePoint, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = whitePoint.f1249x;
        }
        if ((i10 & 2) != 0) {
            f11 = whitePoint.f1250y;
        }
        return whitePoint.copy(f10, f11);
    }

    public final float component1() {
        return this.f1249x;
    }

    public final float component2() {
        return this.f1250y;
    }

    @NotNull
    public final WhitePoint copy(float f10, float f11) {
        return new WhitePoint(f10, f11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WhitePoint)) {
            return false;
        }
        WhitePoint whitePoint = (WhitePoint) obj;
        if (Intrinsics.areEqual((Object) Float.valueOf(this.f1249x), (Object) Float.valueOf(whitePoint.f1249x)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1250y), (Object) Float.valueOf(whitePoint.f1250y))) {
            return true;
        }
        return false;
    }

    public final float getX() {
        return this.f1249x;
    }

    public final float getY() {
        return this.f1250y;
    }

    public int hashCode() {
        return (Float.hashCode(this.f1249x) * 31) + Float.hashCode(this.f1250y);
    }

    @NotNull
    public String toString() {
        return "WhitePoint(x=" + this.f1249x + ", y=" + this.f1250y + ')';
    }

    @NotNull
    public final float[] toXyz$ui_graphics_release() {
        float f10 = this.f1249x;
        float f11 = this.f1250y;
        return new float[]{f10 / f11, 1.0f, ((1.0f - f10) - f11) / f11};
    }

    public WhitePoint(float f10, float f11, float f12) {
        this(f10, f11, f12, f10 + f11 + f12);
    }

    private WhitePoint(float f10, float f11, float f12, float f13) {
        this(f10 / f13, f11 / f13);
    }
}
