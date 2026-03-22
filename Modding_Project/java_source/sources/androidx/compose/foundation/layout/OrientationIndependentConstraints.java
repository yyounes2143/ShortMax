package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RowColumnImpl.kt */
@Metadata
/* loaded from: classes.dex */
public final class OrientationIndependentConstraints {
    private final int crossAxisMax;
    private final int crossAxisMin;
    private final int mainAxisMax;
    private final int mainAxisMin;

    public /* synthetic */ OrientationIndependentConstraints(long j10, LayoutOrientation layoutOrientation, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, layoutOrientation);
    }

    public static /* synthetic */ OrientationIndependentConstraints copy$default(OrientationIndependentConstraints orientationIndependentConstraints, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = orientationIndependentConstraints.mainAxisMin;
        }
        if ((i14 & 2) != 0) {
            i11 = orientationIndependentConstraints.mainAxisMax;
        }
        if ((i14 & 4) != 0) {
            i12 = orientationIndependentConstraints.crossAxisMin;
        }
        if ((i14 & 8) != 0) {
            i13 = orientationIndependentConstraints.crossAxisMax;
        }
        return orientationIndependentConstraints.copy(i10, i11, i12, i13);
    }

    public final int component1() {
        return this.mainAxisMin;
    }

    public final int component2() {
        return this.mainAxisMax;
    }

    public final int component3() {
        return this.crossAxisMin;
    }

    public final int component4() {
        return this.crossAxisMax;
    }

    @NotNull
    public final OrientationIndependentConstraints copy(int i10, int i11, int i12, int i13) {
        return new OrientationIndependentConstraints(i10, i11, i12, i13);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrientationIndependentConstraints)) {
            return false;
        }
        OrientationIndependentConstraints orientationIndependentConstraints = (OrientationIndependentConstraints) obj;
        if (this.mainAxisMin == orientationIndependentConstraints.mainAxisMin && this.mainAxisMax == orientationIndependentConstraints.mainAxisMax && this.crossAxisMin == orientationIndependentConstraints.crossAxisMin && this.crossAxisMax == orientationIndependentConstraints.crossAxisMax) {
            return true;
        }
        return false;
    }

    public final int getCrossAxisMax() {
        return this.crossAxisMax;
    }

    public final int getCrossAxisMin() {
        return this.crossAxisMin;
    }

    public final int getMainAxisMax() {
        return this.mainAxisMax;
    }

    public final int getMainAxisMin() {
        return this.mainAxisMin;
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.mainAxisMin) * 31) + Integer.hashCode(this.mainAxisMax)) * 31) + Integer.hashCode(this.crossAxisMin)) * 31) + Integer.hashCode(this.crossAxisMax);
    }

    public final int maxHeight(@NotNull LayoutOrientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        if (orientation == LayoutOrientation.Horizontal) {
            return this.crossAxisMax;
        }
        return this.mainAxisMax;
    }

    public final int maxWidth(@NotNull LayoutOrientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        if (orientation == LayoutOrientation.Horizontal) {
            return this.mainAxisMax;
        }
        return this.crossAxisMax;
    }

    @NotNull
    public final OrientationIndependentConstraints stretchCrossAxis() {
        int i10;
        int i11 = this.mainAxisMin;
        int i12 = this.mainAxisMax;
        int i13 = this.crossAxisMax;
        if (i13 != Integer.MAX_VALUE) {
            i10 = i13;
        } else {
            i10 = this.crossAxisMin;
        }
        return new OrientationIndependentConstraints(i11, i12, i10, i13);
    }

    /* renamed from: toBoxConstraints-OenEA2s  reason: not valid java name */
    public final long m439toBoxConstraintsOenEA2s(@NotNull LayoutOrientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        if (orientation == LayoutOrientation.Horizontal) {
            return ConstraintsKt.Constraints(this.mainAxisMin, this.mainAxisMax, this.crossAxisMin, this.crossAxisMax);
        }
        return ConstraintsKt.Constraints(this.crossAxisMin, this.crossAxisMax, this.mainAxisMin, this.mainAxisMax);
    }

    @NotNull
    public String toString() {
        return "OrientationIndependentConstraints(mainAxisMin=" + this.mainAxisMin + ", mainAxisMax=" + this.mainAxisMax + ", crossAxisMin=" + this.crossAxisMin + ", crossAxisMax=" + this.crossAxisMax + ')';
    }

    public OrientationIndependentConstraints(int i10, int i11, int i12, int i13) {
        this.mainAxisMin = i10;
        this.mainAxisMax = i11;
        this.crossAxisMin = i12;
        this.crossAxisMax = i13;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private OrientationIndependentConstraints(long r5, androidx.compose.foundation.layout.LayoutOrientation r7) {
        /*
            r4 = this;
            androidx.compose.foundation.layout.LayoutOrientation r0 = androidx.compose.foundation.layout.LayoutOrientation.Horizontal
            if (r7 != r0) goto L9
            int r1 = androidx.compose.ui.unit.Constraints.m4007getMinWidthimpl(r5)
            goto Ld
        L9:
            int r1 = androidx.compose.ui.unit.Constraints.m4006getMinHeightimpl(r5)
        Ld:
            if (r7 != r0) goto L14
            int r2 = androidx.compose.ui.unit.Constraints.m4005getMaxWidthimpl(r5)
            goto L18
        L14:
            int r2 = androidx.compose.ui.unit.Constraints.m4004getMaxHeightimpl(r5)
        L18:
            if (r7 != r0) goto L1f
            int r3 = androidx.compose.ui.unit.Constraints.m4006getMinHeightimpl(r5)
            goto L23
        L1f:
            int r3 = androidx.compose.ui.unit.Constraints.m4007getMinWidthimpl(r5)
        L23:
            if (r7 != r0) goto L2a
            int r5 = androidx.compose.ui.unit.Constraints.m4004getMaxHeightimpl(r5)
            goto L2e
        L2a:
            int r5 = androidx.compose.ui.unit.Constraints.m4005getMaxWidthimpl(r5)
        L2e:
            r4.<init>(r1, r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.OrientationIndependentConstraints.<init>(long, androidx.compose.foundation.layout.LayoutOrientation):void");
    }
}
