package androidx.compose.foundation.layout;

import android.graphics.Insets;
import androidx.annotation.RequiresApi;
import androidx.compose.foundation.layout.WindowInsetsSides;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: WindowInsetsConnection.android.kt */
@RequiresApi(30)
@Metadata
/* loaded from: classes.dex */
interface SideCalculator {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: WindowInsetsConnection.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        private static final SideCalculator$Companion$LeftSideCalculator$1 LeftSideCalculator = new SideCalculator() { // from class: androidx.compose.foundation.layout.SideCalculator$Companion$LeftSideCalculator$1
            @Override // androidx.compose.foundation.layout.SideCalculator
            @NotNull
            public Insets adjustInsets(@NotNull Insets oldInsets, int i10) {
                int i11;
                int i12;
                int i13;
                Insets of2;
                Intrinsics.checkNotNullParameter(oldInsets, "oldInsets");
                i11 = oldInsets.top;
                i12 = oldInsets.right;
                i13 = oldInsets.bottom;
                of2 = Insets.of(i10, i11, i12, i13);
                Intrinsics.checkNotNullExpressionValue(of2, "of(newValue, oldInsets.t….right, oldInsets.bottom)");
                return of2;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            /* renamed from: consumedOffsets-MK-Hz9U */
            public long mo469consumedOffsetsMKHz9U(long j10) {
                return androidx.compose.ui.geometry.OffsetKt.Offset(Offset.m1606getXimpl(j10), 0.0f);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            /* renamed from: consumedVelocity-QWom1Mo */
            public long mo470consumedVelocityQWom1Mo(long j10, float f10) {
                return VelocityKt.Velocity(Velocity.m4274getXimpl(j10) - f10, 0.0f);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public int valueOf(@NotNull Insets insets) {
                int i10;
                Intrinsics.checkNotNullParameter(insets, "insets");
                i10 = insets.left;
                return i10;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public float motionOf(float f10, float f11) {
                return f10;
            }
        };
        @NotNull
        private static final SideCalculator$Companion$TopSideCalculator$1 TopSideCalculator = new SideCalculator() { // from class: androidx.compose.foundation.layout.SideCalculator$Companion$TopSideCalculator$1
            @Override // androidx.compose.foundation.layout.SideCalculator
            @NotNull
            public Insets adjustInsets(@NotNull Insets oldInsets, int i10) {
                int i11;
                int i12;
                int i13;
                Insets of2;
                Intrinsics.checkNotNullParameter(oldInsets, "oldInsets");
                i11 = oldInsets.left;
                i12 = oldInsets.right;
                i13 = oldInsets.bottom;
                of2 = Insets.of(i11, i10, i12, i13);
                Intrinsics.checkNotNullExpressionValue(of2, "of(oldInsets.left, newVa….right, oldInsets.bottom)");
                return of2;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            /* renamed from: consumedOffsets-MK-Hz9U */
            public long mo469consumedOffsetsMKHz9U(long j10) {
                return androidx.compose.ui.geometry.OffsetKt.Offset(0.0f, Offset.m1607getYimpl(j10));
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            /* renamed from: consumedVelocity-QWom1Mo */
            public long mo470consumedVelocityQWom1Mo(long j10, float f10) {
                return VelocityKt.Velocity(0.0f, Velocity.m4275getYimpl(j10) - f10);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public int valueOf(@NotNull Insets insets) {
                int i10;
                Intrinsics.checkNotNullParameter(insets, "insets");
                i10 = insets.top;
                return i10;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public float motionOf(float f10, float f11) {
                return f11;
            }
        };
        @NotNull
        private static final SideCalculator$Companion$RightSideCalculator$1 RightSideCalculator = new SideCalculator() { // from class: androidx.compose.foundation.layout.SideCalculator$Companion$RightSideCalculator$1
            @Override // androidx.compose.foundation.layout.SideCalculator
            @NotNull
            public Insets adjustInsets(@NotNull Insets oldInsets, int i10) {
                int i11;
                int i12;
                int i13;
                Insets of2;
                Intrinsics.checkNotNullParameter(oldInsets, "oldInsets");
                i11 = oldInsets.left;
                i12 = oldInsets.top;
                i13 = oldInsets.bottom;
                of2 = Insets.of(i11, i12, i10, i13);
                Intrinsics.checkNotNullExpressionValue(of2, "of(oldInsets.left, oldIn…wValue, oldInsets.bottom)");
                return of2;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            /* renamed from: consumedOffsets-MK-Hz9U */
            public long mo469consumedOffsetsMKHz9U(long j10) {
                return androidx.compose.ui.geometry.OffsetKt.Offset(Offset.m1606getXimpl(j10), 0.0f);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            /* renamed from: consumedVelocity-QWom1Mo */
            public long mo470consumedVelocityQWom1Mo(long j10, float f10) {
                return VelocityKt.Velocity(Velocity.m4274getXimpl(j10) + f10, 0.0f);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public float motionOf(float f10, float f11) {
                return -f10;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public int valueOf(@NotNull Insets insets) {
                int i10;
                Intrinsics.checkNotNullParameter(insets, "insets");
                i10 = insets.right;
                return i10;
            }
        };
        @NotNull
        private static final SideCalculator$Companion$BottomSideCalculator$1 BottomSideCalculator = new SideCalculator() { // from class: androidx.compose.foundation.layout.SideCalculator$Companion$BottomSideCalculator$1
            @Override // androidx.compose.foundation.layout.SideCalculator
            @NotNull
            public Insets adjustInsets(@NotNull Insets oldInsets, int i10) {
                int i11;
                int i12;
                int i13;
                Insets of2;
                Intrinsics.checkNotNullParameter(oldInsets, "oldInsets");
                i11 = oldInsets.left;
                i12 = oldInsets.top;
                i13 = oldInsets.right;
                of2 = Insets.of(i11, i12, i13, i10);
                Intrinsics.checkNotNullExpressionValue(of2, "of(oldInsets.left, oldIn…ldInsets.right, newValue)");
                return of2;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            /* renamed from: consumedOffsets-MK-Hz9U */
            public long mo469consumedOffsetsMKHz9U(long j10) {
                return androidx.compose.ui.geometry.OffsetKt.Offset(0.0f, Offset.m1607getYimpl(j10));
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            /* renamed from: consumedVelocity-QWom1Mo */
            public long mo470consumedVelocityQWom1Mo(long j10, float f10) {
                return VelocityKt.Velocity(0.0f, Velocity.m4275getYimpl(j10) + f10);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public float motionOf(float f10, float f11) {
                return -f11;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public int valueOf(@NotNull Insets insets) {
                int i10;
                Intrinsics.checkNotNullParameter(insets, "insets");
                i10 = insets.bottom;
                return i10;
            }
        };

        private Companion() {
        }

        @NotNull
        /* renamed from: chooseCalculator-ni1skBw  reason: not valid java name */
        public final SideCalculator m471chooseCalculatorni1skBw(int i10, @NotNull LayoutDirection layoutDirection) {
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            WindowInsetsSides.Companion companion = WindowInsetsSides.Companion;
            if (WindowInsetsSides.m514equalsimpl0(i10, companion.m529getLeftJoeWqyM())) {
                return LeftSideCalculator;
            }
            if (WindowInsetsSides.m514equalsimpl0(i10, companion.m532getTopJoeWqyM())) {
                return TopSideCalculator;
            }
            if (WindowInsetsSides.m514equalsimpl0(i10, companion.m530getRightJoeWqyM())) {
                return RightSideCalculator;
            }
            if (WindowInsetsSides.m514equalsimpl0(i10, companion.m526getBottomJoeWqyM())) {
                return BottomSideCalculator;
            }
            if (WindowInsetsSides.m514equalsimpl0(i10, companion.m531getStartJoeWqyM())) {
                if (layoutDirection == LayoutDirection.Ltr) {
                    return LeftSideCalculator;
                }
                return RightSideCalculator;
            } else if (WindowInsetsSides.m514equalsimpl0(i10, companion.m527getEndJoeWqyM())) {
                if (layoutDirection == LayoutDirection.Ltr) {
                    return RightSideCalculator;
                }
                return LeftSideCalculator;
            } else {
                throw new IllegalStateException("Only Left, Top, Right, Bottom, Start and End are allowed");
            }
        }
    }

    @NotNull
    Insets adjustInsets(@NotNull Insets insets, int i10);

    /* renamed from: consumedOffsets-MK-Hz9U  reason: not valid java name */
    long mo469consumedOffsetsMKHz9U(long j10);

    /* renamed from: consumedVelocity-QWom1Mo  reason: not valid java name */
    long mo470consumedVelocityQWom1Mo(long j10, float f10);

    default float hideMotion(float f10, float f11) {
        return kotlin.ranges.e.i(motionOf(f10, f11), 0.0f);
    }

    float motionOf(float f10, float f11);

    default float showMotion(float f10, float f11) {
        return kotlin.ranges.e.d(motionOf(f10, f11), 0.0f);
    }

    int valueOf(@NotNull Insets insets);
}
