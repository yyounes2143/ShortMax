package androidx.compose.foundation.gestures;

import androidx.compose.foundation.FocusedBoundsKt;
import androidx.compose.foundation.relocation.BringIntoViewResponder;
import androidx.compose.foundation.relocation.BringIntoViewResponderKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.layout.OnRemeasuredModifier;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Scrollable.kt */
@Metadata
/* loaded from: classes.dex */
final class ContentInViewModifier implements BringIntoViewResponder, OnRemeasuredModifier, OnPlacedModifier {
    @Nullable
    private LayoutCoordinates coordinates;
    @Nullable
    private LayoutCoordinates focusedChild;
    @NotNull
    private final Modifier modifier;
    @Nullable
    private IntSize oldSize;
    @NotNull
    private final Orientation orientation;
    private final boolean reverseDirection;
    @NotNull
    private final g0 scope;
    @NotNull
    private final ScrollableState scrollableState;

    /* compiled from: Scrollable.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Orientation.values().length];
            iArr[Orientation.Vertical.ordinal()] = 1;
            iArr[Orientation.Horizontal.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ContentInViewModifier(@NotNull g0 scope, @NotNull Orientation orientation, @NotNull ScrollableState scrollableState, boolean z10) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(scrollableState, "scrollableState");
        this.scope = scope;
        this.orientation = orientation;
        this.scrollableState = scrollableState;
        this.reverseDirection = z10;
        this.modifier = BringIntoViewResponderKt.bringIntoViewResponder(FocusedBoundsKt.onFocusedBoundsChanged(this, new Function1<LayoutCoordinates, Unit>() { // from class: androidx.compose.foundation.gestures.ContentInViewModifier$modifier$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutCoordinates layoutCoordinates) {
                invoke2(layoutCoordinates);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable LayoutCoordinates layoutCoordinates) {
                ContentInViewModifier.this.focusedChild = layoutCoordinates;
            }
        }), this);
    }

    /* renamed from: computeDestination-O0kMr_c  reason: not valid java name */
    private final Rect m273computeDestinationO0kMr_c(Rect rect, long j10) {
        long m4219toSizeozmzZPI = IntSizeKt.m4219toSizeozmzZPI(j10);
        int i10 = WhenMappings.$EnumSwitchMapping$0[this.orientation.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return rect.translate(relocationDistance(rect.getLeft(), rect.getRight(), Size.m1675getWidthimpl(m4219toSizeozmzZPI)), 0.0f);
            }
            throw new NoWhenBranchMatchedException();
        }
        return rect.translate(0.0f, relocationDistance(rect.getTop(), rect.getBottom(), Size.m1672getHeightimpl(m4219toSizeozmzZPI)));
    }

    /* renamed from: onSizeChanged-O0kMr_c  reason: not valid java name */
    private final void m274onSizeChangedO0kMr_c(LayoutCoordinates layoutCoordinates, long j10) {
        Rect localBoundingBoxOf;
        if (this.orientation == Orientation.Horizontal) {
            if (IntSize.m4209getWidthimpl(layoutCoordinates.mo3337getSizeYbymL2g()) >= IntSize.m4209getWidthimpl(j10)) {
                return;
            }
        } else if (IntSize.m4208getHeightimpl(layoutCoordinates.mo3337getSizeYbymL2g()) >= IntSize.m4208getHeightimpl(j10)) {
            return;
        }
        LayoutCoordinates layoutCoordinates2 = this.focusedChild;
        if (layoutCoordinates2 != null && (localBoundingBoxOf = layoutCoordinates.localBoundingBoxOf(layoutCoordinates2, false)) != null) {
            Rect m1646Recttz77jQw = RectKt.m1646Recttz77jQw(Offset.Companion.m1622getZeroF1C5BW0(), IntSizeKt.m4219toSizeozmzZPI(j10));
            Rect m273computeDestinationO0kMr_c = m273computeDestinationO0kMr_c(localBoundingBoxOf, layoutCoordinates.mo3337getSizeYbymL2g());
            boolean overlaps = m1646Recttz77jQw.overlaps(localBoundingBoxOf);
            boolean areEqual = Intrinsics.areEqual(m273computeDestinationO0kMr_c, localBoundingBoxOf);
            if (overlaps && !areEqual) {
                g.d(this.scope, null, null, new ContentInViewModifier$onSizeChanged$1(this, localBoundingBoxOf, m273computeDestinationO0kMr_c, null), 3, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object performBringIntoView(Rect rect, Rect rect2, c<? super Unit> cVar) {
        float top;
        float top2;
        int i10 = WhenMappings.$EnumSwitchMapping$0[this.orientation.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                top = rect.getLeft();
                top2 = rect2.getLeft();
            } else {
                throw new NoWhenBranchMatchedException();
            }
        } else {
            top = rect.getTop();
            top2 = rect2.getTop();
        }
        float f10 = top - top2;
        if (this.reverseDirection) {
            f10 = -f10;
        }
        Object animateScrollBy$default = ScrollExtensionsKt.animateScrollBy$default(this.scrollableState, f10, null, cVar, 2, null);
        if (animateScrollBy$default == a.f()) {
            return animateScrollBy$default;
        }
        return Unit.f60915a;
    }

    private final float relocationDistance(float f10, float f11, float f12) {
        if ((f10 >= 0.0f && f11 <= f12) || (f10 < 0.0f && f11 > f12)) {
            return 0.0f;
        }
        float f13 = f11 - f12;
        if (Math.abs(f10) >= Math.abs(f13)) {
            return f13;
        }
        return f10;
    }

    @Override // androidx.compose.foundation.relocation.BringIntoViewResponder
    @Nullable
    public Object bringChildIntoView(@NotNull Rect rect, @NotNull c<? super Unit> cVar) {
        Object performBringIntoView = performBringIntoView(rect, calculateRectForParent(rect), cVar);
        if (performBringIntoView == a.f()) {
            return performBringIntoView;
        }
        return Unit.f60915a;
    }

    @Override // androidx.compose.foundation.relocation.BringIntoViewResponder
    @NotNull
    public Rect calculateRectForParent(@NotNull Rect localRect) {
        Intrinsics.checkNotNullParameter(localRect, "localRect");
        IntSize intSize = this.oldSize;
        if (intSize != null) {
            return m273computeDestinationO0kMr_c(localRect, intSize.m4213unboximpl());
        }
        throw new IllegalStateException("Expected BringIntoViewRequester to not be used before parents are placed.");
    }

    @NotNull
    public final Modifier getModifier() {
        return this.modifier;
    }

    @Override // androidx.compose.ui.layout.OnPlacedModifier
    public void onPlaced(@NotNull LayoutCoordinates coordinates) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        this.coordinates = coordinates;
    }

    @Override // androidx.compose.ui.layout.OnRemeasuredModifier
    /* renamed from: onRemeasured-ozmzZPI  reason: not valid java name */
    public void mo275onRemeasuredozmzZPI(long j10) {
        LayoutCoordinates layoutCoordinates = this.coordinates;
        IntSize intSize = this.oldSize;
        if (intSize != null && !IntSize.m4207equalsimpl0(intSize.m4213unboximpl(), j10) && layoutCoordinates != null && layoutCoordinates.isAttached()) {
            m274onSizeChangedO0kMr_c(layoutCoordinates, intSize.m4213unboximpl());
        }
        this.oldSize = IntSize.m4201boximpl(j10);
    }
}
