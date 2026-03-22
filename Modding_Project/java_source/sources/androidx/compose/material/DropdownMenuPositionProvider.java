package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Menu.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class DropdownMenuPositionProvider implements PopupPositionProvider {
    private final long contentOffset;
    @NotNull
    private final Density density;
    @NotNull
    private final Function2<IntRect, IntRect, Unit> onPositionCalculated;

    public /* synthetic */ DropdownMenuPositionProvider(long j10, Density density, Function2 function2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, density, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: copy-rOJDEFc$default  reason: not valid java name */
    public static /* synthetic */ DropdownMenuPositionProvider m1064copyrOJDEFc$default(DropdownMenuPositionProvider dropdownMenuPositionProvider, long j10, Density density, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = dropdownMenuPositionProvider.contentOffset;
        }
        if ((i10 & 2) != 0) {
            density = dropdownMenuPositionProvider.density;
        }
        if ((i10 & 4) != 0) {
            function2 = dropdownMenuPositionProvider.onPositionCalculated;
        }
        return dropdownMenuPositionProvider.m1066copyrOJDEFc(j10, density, function2);
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* renamed from: calculatePosition-llwVHH4 */
    public long mo809calculatePositionllwVHH4(@NotNull IntRect anchorBounds, long j10, @NotNull LayoutDirection layoutDirection, long j11) {
        Sequence m10;
        Object obj;
        Object obj2;
        Intrinsics.checkNotNullParameter(anchorBounds, "anchorBounds");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        int mo336roundToPx0680j_4 = this.density.mo336roundToPx0680j_4(MenuKt.getMenuVerticalMargin());
        int mo336roundToPx0680j_42 = this.density.mo336roundToPx0680j_4(DpOffset.m4110getXD9Ej5fM(this.contentOffset));
        int mo336roundToPx0680j_43 = this.density.mo336roundToPx0680j_4(DpOffset.m4112getYD9Ej5fM(this.contentOffset));
        int left = anchorBounds.getLeft() + mo336roundToPx0680j_42;
        int right = (anchorBounds.getRight() - mo336roundToPx0680j_42) - IntSize.m4209getWidthimpl(j11);
        int m4209getWidthimpl = IntSize.m4209getWidthimpl(j10) - IntSize.m4209getWidthimpl(j11);
        if (layoutDirection == LayoutDirection.Ltr) {
            Integer valueOf = Integer.valueOf(left);
            Integer valueOf2 = Integer.valueOf(right);
            if (anchorBounds.getLeft() < 0) {
                m4209getWidthimpl = 0;
            }
            m10 = j.m(valueOf, valueOf2, Integer.valueOf(m4209getWidthimpl));
        } else {
            Integer valueOf3 = Integer.valueOf(right);
            Integer valueOf4 = Integer.valueOf(left);
            if (anchorBounds.getRight() <= IntSize.m4209getWidthimpl(j10)) {
                m4209getWidthimpl = 0;
            }
            m10 = j.m(valueOf3, valueOf4, Integer.valueOf(m4209getWidthimpl));
        }
        Iterator it = m10.iterator();
        while (true) {
            obj = null;
            if (it.hasNext()) {
                obj2 = it.next();
                int intValue = ((Number) obj2).intValue();
                if (intValue >= 0 && intValue + IntSize.m4209getWidthimpl(j11) <= IntSize.m4209getWidthimpl(j10)) {
                    break;
                }
            } else {
                obj2 = null;
                break;
            }
        }
        Integer num = (Integer) obj2;
        if (num != null) {
            right = num.intValue();
        }
        int max = Math.max(anchorBounds.getBottom() + mo336roundToPx0680j_43, mo336roundToPx0680j_4);
        int top = (anchorBounds.getTop() - mo336roundToPx0680j_43) - IntSize.m4208getHeightimpl(j11);
        Iterator it2 = j.m(Integer.valueOf(max), Integer.valueOf(top), Integer.valueOf(anchorBounds.getTop() - (IntSize.m4208getHeightimpl(j11) / 2)), Integer.valueOf((IntSize.m4208getHeightimpl(j10) - IntSize.m4208getHeightimpl(j11)) - mo336roundToPx0680j_4)).iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            int intValue2 = ((Number) next).intValue();
            if (intValue2 >= mo336roundToPx0680j_4 && intValue2 + IntSize.m4208getHeightimpl(j11) <= IntSize.m4208getHeightimpl(j10) - mo336roundToPx0680j_4) {
                obj = next;
                break;
            }
        }
        Integer num2 = (Integer) obj;
        if (num2 != null) {
            top = num2.intValue();
        }
        this.onPositionCalculated.invoke(anchorBounds, new IntRect(right, top, IntSize.m4209getWidthimpl(j11) + right, IntSize.m4208getHeightimpl(j11) + top));
        return IntOffsetKt.IntOffset(right, top);
    }

    /* renamed from: component1-RKDOV3M  reason: not valid java name */
    public final long m1065component1RKDOV3M() {
        return this.contentOffset;
    }

    @NotNull
    public final Density component2() {
        return this.density;
    }

    @NotNull
    public final Function2<IntRect, IntRect, Unit> component3() {
        return this.onPositionCalculated;
    }

    @NotNull
    /* renamed from: copy-rOJDEFc  reason: not valid java name */
    public final DropdownMenuPositionProvider m1066copyrOJDEFc(long j10, @NotNull Density density, @NotNull Function2<? super IntRect, ? super IntRect, Unit> onPositionCalculated) {
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(onPositionCalculated, "onPositionCalculated");
        return new DropdownMenuPositionProvider(j10, density, onPositionCalculated, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DropdownMenuPositionProvider)) {
            return false;
        }
        DropdownMenuPositionProvider dropdownMenuPositionProvider = (DropdownMenuPositionProvider) obj;
        if (DpOffset.m4109equalsimpl0(this.contentOffset, dropdownMenuPositionProvider.contentOffset) && Intrinsics.areEqual(this.density, dropdownMenuPositionProvider.density) && Intrinsics.areEqual(this.onPositionCalculated, dropdownMenuPositionProvider.onPositionCalculated)) {
            return true;
        }
        return false;
    }

    /* renamed from: getContentOffset-RKDOV3M  reason: not valid java name */
    public final long m1067getContentOffsetRKDOV3M() {
        return this.contentOffset;
    }

    @NotNull
    public final Density getDensity() {
        return this.density;
    }

    @NotNull
    public final Function2<IntRect, IntRect, Unit> getOnPositionCalculated() {
        return this.onPositionCalculated;
    }

    public int hashCode() {
        return (((DpOffset.m4114hashCodeimpl(this.contentOffset) * 31) + this.density.hashCode()) * 31) + this.onPositionCalculated.hashCode();
    }

    @NotNull
    public String toString() {
        return "DropdownMenuPositionProvider(contentOffset=" + ((Object) DpOffset.m4117toStringimpl(this.contentOffset)) + ", density=" + this.density + ", onPositionCalculated=" + this.onPositionCalculated + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DropdownMenuPositionProvider(long j10, Density density, Function2<? super IntRect, ? super IntRect, Unit> function2) {
        this.contentOffset = j10;
        this.density = density;
        this.onPositionCalculated = function2;
    }

    public /* synthetic */ DropdownMenuPositionProvider(long j10, Density density, Function2 function2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, density, (i10 & 4) != 0 ? new Function2<IntRect, IntRect, Unit>() { // from class: androidx.compose.material.DropdownMenuPositionProvider.1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull IntRect intRect, @NotNull IntRect intRect2) {
                Intrinsics.checkNotNullParameter(intRect, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(intRect2, "<anonymous parameter 1>");
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(IntRect intRect, IntRect intRect2) {
                invoke2(intRect, intRect2);
                return Unit.f60915a;
            }
        } : function2, null);
    }
}
