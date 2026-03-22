package androidx.compose.ui;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
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
public final class BiasAbsoluteAlignment implements Alignment {
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
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            return a.c(((i11 - i10) / 2.0f) * (1 + this.bias));
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

    public BiasAbsoluteAlignment(float f10, float f11) {
        this.horizontalBias = f10;
        this.verticalBias = f11;
    }

    private final float component1() {
        return this.horizontalBias;
    }

    private final float component2() {
        return this.verticalBias;
    }

    public static /* synthetic */ BiasAbsoluteAlignment copy$default(BiasAbsoluteAlignment biasAbsoluteAlignment, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = biasAbsoluteAlignment.horizontalBias;
        }
        if ((i10 & 2) != 0) {
            f11 = biasAbsoluteAlignment.verticalBias;
        }
        return biasAbsoluteAlignment.copy(f10, f11);
    }

    @Override // androidx.compose.ui.Alignment
    /* renamed from: align-KFBX0sM */
    public long mo1514alignKFBX0sM(long j10, long j11, @NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        long IntSize = IntSizeKt.IntSize(IntSize.m4209getWidthimpl(j11) - IntSize.m4209getWidthimpl(j10), IntSize.m4208getHeightimpl(j11) - IntSize.m4208getHeightimpl(j10));
        float f10 = 1;
        return IntOffsetKt.IntOffset(a.c((IntSize.m4209getWidthimpl(IntSize) / 2.0f) * (this.horizontalBias + f10)), a.c((IntSize.m4208getHeightimpl(IntSize) / 2.0f) * (f10 + this.verticalBias)));
    }

    @NotNull
    public final BiasAbsoluteAlignment copy(float f10, float f11) {
        return new BiasAbsoluteAlignment(f10, f11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BiasAbsoluteAlignment)) {
            return false;
        }
        BiasAbsoluteAlignment biasAbsoluteAlignment = (BiasAbsoluteAlignment) obj;
        if (Intrinsics.areEqual((Object) Float.valueOf(this.horizontalBias), (Object) Float.valueOf(biasAbsoluteAlignment.horizontalBias)) && Intrinsics.areEqual((Object) Float.valueOf(this.verticalBias), (Object) Float.valueOf(biasAbsoluteAlignment.verticalBias))) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (Float.hashCode(this.horizontalBias) * 31) + Float.hashCode(this.verticalBias);
    }

    @NotNull
    public String toString() {
        return "BiasAbsoluteAlignment(horizontalBias=" + this.horizontalBias + ", verticalBias=" + this.verticalBias + ')';
    }
}
