package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DrawScope.kt */
@Metadata
/* loaded from: classes.dex */
public final class Stroke extends DrawStyle {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int DefaultCap = StrokeCap.Companion.m2146getButtKaPHkGw();
    private static final int DefaultJoin = StrokeJoin.Companion.m2157getMiterLxFBmk8();
    public static final float DefaultMiter = 4.0f;
    public static final float HairlineWidth = 0.0f;
    private final int cap;
    private final int join;
    private final float miter;
    @Nullable
    private final PathEffect pathEffect;
    private final float width;

    /* compiled from: DrawScope.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getDefaultCap-KaPHkGw  reason: not valid java name */
        public final int m2401getDefaultCapKaPHkGw() {
            return Stroke.DefaultCap;
        }

        /* renamed from: getDefaultJoin-LxFBmk8  reason: not valid java name */
        public final int m2402getDefaultJoinLxFBmk8() {
            return Stroke.DefaultJoin;
        }

        private Companion() {
        }
    }

    public /* synthetic */ Stroke(float f10, float f11, int i10, int i11, PathEffect pathEffect, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, i10, i11, pathEffect);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Stroke)) {
            return false;
        }
        Stroke stroke = (Stroke) obj;
        if (this.width == stroke.width && this.miter == stroke.miter && StrokeCap.m2142equalsimpl0(this.cap, stroke.cap) && StrokeJoin.m2152equalsimpl0(this.join, stroke.join) && Intrinsics.areEqual(this.pathEffect, stroke.pathEffect)) {
            return true;
        }
        return false;
    }

    /* renamed from: getCap-KaPHkGw  reason: not valid java name */
    public final int m2399getCapKaPHkGw() {
        return this.cap;
    }

    /* renamed from: getJoin-LxFBmk8  reason: not valid java name */
    public final int m2400getJoinLxFBmk8() {
        return this.join;
    }

    public final float getMiter() {
        return this.miter;
    }

    @Nullable
    public final PathEffect getPathEffect() {
        return this.pathEffect;
    }

    public final float getWidth() {
        return this.width;
    }

    public int hashCode() {
        int i10;
        int hashCode = ((((((Float.hashCode(this.width) * 31) + Float.hashCode(this.miter)) * 31) + StrokeCap.m2143hashCodeimpl(this.cap)) * 31) + StrokeJoin.m2153hashCodeimpl(this.join)) * 31;
        PathEffect pathEffect = this.pathEffect;
        if (pathEffect != null) {
            i10 = pathEffect.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @NotNull
    public String toString() {
        return "Stroke(width=" + this.width + ", miter=" + this.miter + ", cap=" + ((Object) StrokeCap.m2144toStringimpl(this.cap)) + ", join=" + ((Object) StrokeJoin.m2154toStringimpl(this.join)) + ", pathEffect=" + this.pathEffect + ')';
    }

    public /* synthetic */ Stroke(float f10, float f11, int i10, int i11, PathEffect pathEffect, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0.0f : f10, (i12 & 2) != 0 ? 4.0f : f11, (i12 & 4) != 0 ? StrokeCap.Companion.m2146getButtKaPHkGw() : i10, (i12 & 8) != 0 ? StrokeJoin.Companion.m2157getMiterLxFBmk8() : i11, (i12 & 16) != 0 ? null : pathEffect, null);
    }

    private Stroke(float f10, float f11, int i10, int i11, PathEffect pathEffect) {
        super(null);
        this.width = f10;
        this.miter = f11;
        this.cap = i10;
        this.join = i11;
        this.pathEffect = pathEffect;
    }
}
