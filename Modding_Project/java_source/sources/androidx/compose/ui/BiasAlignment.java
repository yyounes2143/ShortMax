package androidx.compose.ui;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import bt.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Alignment.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class BiasAlignment implements Alignment {
    private final float horizontalBias;
    private final float verticalBias;

    /* compiled from: Alignment.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class Horizontal implements Alignment.Horizontal {
        private final float bias;

        public Horizontal(float f10) {
            this.bias = f10;
        }

        private final float component1() {
            return this.bias;
        }

        public static /* synthetic */ Horizontal copy$default(Horizontal horizontal, float f10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = horizontal.bias;
            }
            return horizontal.copy(f10);
        }

        @Override // androidx.compose.ui.Alignment.Horizontal
        public int align(int i10, int i11, @NotNull LayoutDirection layoutDirection) {
            float f10;
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            float f11 = (i11 - i10) / 2.0f;
            if (layoutDirection == LayoutDirection.Ltr) {
                f10 = this.bias;
            } else {
                f10 = (-1) * this.bias;
            }
            return a.c(f11 * (1 + f10));
        }

        @NotNull
        public final Horizontal copy(float f10) {
            return new Horizontal(f10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Horizontal) && Intrinsics.areEqual((Object) Float.valueOf(this.bias), (Object) Float.valueOf(((Horizontal) obj).bias))) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Float.hashCode(this.bias);
        }

        @NotNull
        public String toString() {
            return "Horizontal(bias=" + this.bias + ')';
        }
    }

    /* compiled from: Alignment.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class Vertical implements Alignment.Vertical {
        private final float bias;

        public Vertical(float f10) {
            this.bias = f10;
        }

        private final float component1() {
            return this.bias;
        }

        public static /* synthetic */ Vertical copy$default(Vertical vertical, float f10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = vertical.bias;
            }
            return vertical.copy(f10);
        }

        @Override // androidx.compose.ui.Alignment.Vertical
        public int align(int i10, int i11) {
            return a.c(((i11 - i10) / 2.0f) * (1 + this.bias));
        }

        @NotNull
        public final Vertical copy(float f10) {
            return new Vertical(f10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Vertical) && Intrinsics.areEqual((Object) Float.valueOf(this.bias), (Object) Float.valueOf(((Vertical) obj).bias))) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Float.hashCode(this.bias);
        }

        @NotNull
        public String toString() {
            return "Vertical(bias=" + this.bias + ')';
        }
    }

    public BiasAlignment(float f10, float f11) {
        this.horizontalBias = f10;
        this.verticalBias = f11;
    }

    public static /* synthetic */ BiasAlignment copy$default(BiasAlignment biasAlignment, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = biasAlignment.horizontalBias;
        }
        if ((i10 & 2) != 0) {
            f11 = biasAlignment.verticalBias;
        }
        return biasAlignment.copy(f10, f11);
    }

    @Override // androidx.compose.ui.Alignment
    /* renamed from: align-KFBX0sM */
    public long mo1514alignKFBX0sM(long j10, long j11, @NotNull LayoutDirection layoutDirection) {
        float f10;
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        float m4209getWidthimpl = (IntSize.m4209getWidthimpl(j11) - IntSize.m4209getWidthimpl(j10)) / 2.0f;
        float m4208getHeightimpl = (IntSize.m4208getHeightimpl(j11) - IntSize.m4208getHeightimpl(j10)) / 2.0f;
        if (layoutDirection == LayoutDirection.Ltr) {
            f10 = this.horizontalBias;
        } else {
            f10 = (-1) * this.horizontalBias;
        }
        float f11 = 1;
        return IntOffsetKt.IntOffset(a.c(m4209getWidthimpl * (f10 + f11)), a.c(m4208getHeightimpl * (f11 + this.verticalBias)));
    }

    public final float component1() {
        return this.horizontalBias;
    }

    public final float component2() {
        return this.verticalBias;
    }

    @NotNull
    public final BiasAlignment copy(float f10, float f11) {
        return new BiasAlignment(f10, f11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BiasAlignment)) {
            return false;
        }
        BiasAlignment biasAlignment = (BiasAlignment) obj;
        if (Intrinsics.areEqual((Object) Float.valueOf(this.horizontalBias), (Object) Float.valueOf(biasAlignment.horizontalBias)) && Intrinsics.areEqual((Object) Float.valueOf(this.verticalBias), (Object) Float.valueOf(biasAlignment.verticalBias))) {
            return true;
        }
        return false;
    }

    public final float getHorizontalBias() {
        return this.horizontalBias;
    }

    public final float getVerticalBias() {
        return this.verticalBias;
    }

    public int hashCode() {
        return (Float.hashCode(this.horizontalBias) * 31) + Float.hashCode(this.verticalBias);
    }

    @NotNull
    public String toString() {
        return "BiasAlignment(horizontalBias=" + this.horizontalBias + ", verticalBias=" + this.verticalBias + ')';
    }
}
