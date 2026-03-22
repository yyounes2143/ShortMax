package com.facebook.fresco.vito.options;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoundingOptions.kt */
@Metadata
/* loaded from: classes3.dex */
public final class RoundingOptions {
    public static final float CORNER_RADIUS_UNSET = 0.0f;
    @Nullable
    private final float[] cornerRadii;
    private final float cornerRadius;
    private final boolean isAntiAliased;
    private final boolean isCircular;
    private final boolean isForceRoundAtDecode;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final RoundingOptions AS_CIRCLE = new RoundingOptions(true, 0.0f, null, false, false);
    @NotNull
    private static final RoundingOptions AS_CIRCLE_ANTI_ALIASING = new RoundingOptions(true, 0.0f, null, true, false);

    /* compiled from: RoundingOptions.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ RoundingOptions forCornerRadii$default(Companion companion, float[] fArr, boolean z10, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            return companion.forCornerRadii(fArr, z10);
        }

        @NotNull
        public final RoundingOptions asCircle() {
            return getAS_CIRCLE();
        }

        @NotNull
        public final RoundingOptions forCornerRadii(@NotNull float[] cornerRadii) {
            Intrinsics.checkNotNullParameter(cornerRadii, "cornerRadii");
            return forCornerRadii$default(this, cornerRadii, false, 2, null);
        }

        @NotNull
        public final RoundingOptions forCornerRadiusPx(float f10) {
            return new RoundingOptions(false, f10, null, false, false);
        }

        @NotNull
        public final RoundingOptions getAS_CIRCLE() {
            return RoundingOptions.AS_CIRCLE;
        }

        @NotNull
        public final RoundingOptions getAS_CIRCLE_ANTI_ALIASING() {
            return RoundingOptions.AS_CIRCLE_ANTI_ALIASING;
        }

        private Companion() {
        }

        @NotNull
        public final RoundingOptions asCircle(boolean z10) {
            return z10 ? getAS_CIRCLE_ANTI_ALIASING() : getAS_CIRCLE();
        }

        @NotNull
        public final RoundingOptions forCornerRadii(float f10, float f11, float f12, float f13) {
            return new RoundingOptions(false, 0.0f, new float[]{f10, f10, f11, f11, f12, f12, f13, f13}, false, false);
        }

        @NotNull
        public final RoundingOptions asCircle(boolean z10, boolean z11) {
            return new RoundingOptions(true, 0.0f, null, z10, z11);
        }

        @NotNull
        public final RoundingOptions forCornerRadii(@NotNull float[] cornerRadii, boolean z10) {
            Intrinsics.checkNotNullParameter(cornerRadii, "cornerRadii");
            return new RoundingOptions(false, 0.0f, cornerRadii, z10, false);
        }
    }

    public RoundingOptions(boolean z10, float f10, @Nullable float[] fArr, boolean z11, boolean z12) {
        this.isCircular = z10;
        this.cornerRadius = f10;
        this.cornerRadii = fArr;
        this.isAntiAliased = z11;
        this.isForceRoundAtDecode = z12;
    }

    @NotNull
    public static final RoundingOptions asCircle() {
        return Companion.asCircle();
    }

    public static /* synthetic */ RoundingOptions copy$default(RoundingOptions roundingOptions, boolean z10, float f10, float[] fArr, boolean z11, boolean z12, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = roundingOptions.isCircular;
        }
        if ((i10 & 2) != 0) {
            f10 = roundingOptions.cornerRadius;
        }
        float f11 = f10;
        if ((i10 & 4) != 0) {
            fArr = roundingOptions.cornerRadii;
        }
        float[] fArr2 = fArr;
        if ((i10 & 8) != 0) {
            z11 = roundingOptions.isAntiAliased;
        }
        boolean z13 = z11;
        if ((i10 & 16) != 0) {
            z12 = roundingOptions.isForceRoundAtDecode;
        }
        return roundingOptions.copy(z10, f11, fArr2, z13, z12);
    }

    @NotNull
    public static final RoundingOptions forCornerRadii(float f10, float f11, float f12, float f13) {
        return Companion.forCornerRadii(f10, f11, f12, f13);
    }

    @NotNull
    public static final RoundingOptions forCornerRadiusPx(float f10) {
        return Companion.forCornerRadiusPx(f10);
    }

    public final boolean component1() {
        return this.isCircular;
    }

    public final float component2() {
        return this.cornerRadius;
    }

    @Nullable
    public final float[] component3() {
        return this.cornerRadii;
    }

    public final boolean component4() {
        return this.isAntiAliased;
    }

    public final boolean component5() {
        return this.isForceRoundAtDecode;
    }

    @NotNull
    public final RoundingOptions copy(boolean z10, float f10, @Nullable float[] fArr, boolean z11, boolean z12) {
        return new RoundingOptions(z10, f10, fArr, z11, z12);
    }

    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(RoundingOptions.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.facebook.fresco.vito.options.RoundingOptions");
        RoundingOptions roundingOptions = (RoundingOptions) obj;
        if (this.isCircular == roundingOptions.isCircular && this.cornerRadius == roundingOptions.cornerRadius && Arrays.equals(this.cornerRadii, roundingOptions.cornerRadii) && this.isAntiAliased == roundingOptions.isAntiAliased && this.isForceRoundAtDecode == roundingOptions.isForceRoundAtDecode) {
            return true;
        }
        return false;
    }

    @Nullable
    public final float[] getCornerRadii() {
        return this.cornerRadii;
    }

    public final float getCornerRadius() {
        return this.cornerRadius;
    }

    public final boolean hasRoundedCorners() {
        if (this.cornerRadius == 0.0f && this.cornerRadii == null) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (((((((Boolean.hashCode(this.isCircular) * 31) + Float.hashCode(this.cornerRadius)) * 31) + Arrays.hashCode(this.cornerRadii)) * 31) + Boolean.hashCode(this.isAntiAliased)) * 31) + Boolean.hashCode(this.isForceRoundAtDecode);
    }

    public final boolean isAntiAliased() {
        return this.isAntiAliased;
    }

    public final boolean isCircular() {
        return this.isCircular;
    }

    public final boolean isForceRoundAtDecode() {
        return this.isForceRoundAtDecode;
    }

    @NotNull
    public String toString() {
        boolean z10 = this.isCircular;
        float f10 = this.cornerRadius;
        String arrays = Arrays.toString(this.cornerRadii);
        boolean z11 = this.isAntiAliased;
        boolean z12 = this.isForceRoundAtDecode;
        return "RoundingOptions(isCircular=" + z10 + ", cornerRadius=" + f10 + ", cornerRadii=" + arrays + ", isAntiAliased=" + z11 + ", isForceRoundAtDecode=" + z12 + ")";
    }

    @NotNull
    public static final RoundingOptions asCircle(boolean z10) {
        return Companion.asCircle(z10);
    }

    @NotNull
    public static final RoundingOptions forCornerRadii(@NotNull float[] fArr) {
        return Companion.forCornerRadii(fArr);
    }

    @NotNull
    public static final RoundingOptions asCircle(boolean z10, boolean z11) {
        return Companion.asCircle(z10, z11);
    }

    @NotNull
    public static final RoundingOptions forCornerRadii(@NotNull float[] fArr, boolean z10) {
        return Companion.forCornerRadii(fArr, z10);
    }
}
