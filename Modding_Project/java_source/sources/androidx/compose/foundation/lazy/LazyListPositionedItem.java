package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyMeasuredItem.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyListPositionedItem implements LazyListItemInfo {
    private final boolean hasAnimations;
    private final int index;
    private final boolean isVertical;
    @NotNull
    private final Object key;
    private final int maxMainAxisOffset;
    private final int minMainAxisOffset;
    private final int offset;
    @NotNull
    private final LazyListItemPlacementAnimator placementAnimator;
    private final int size;
    private final int sizeWithSpacings;
    private final long visualOffset;
    @NotNull
    private final List<LazyListPlaceableWrapper> wrappers;

    public /* synthetic */ LazyListPositionedItem(int i10, int i11, Object obj, int i12, int i13, int i14, int i15, boolean z10, List list, LazyListItemPlacementAnimator lazyListItemPlacementAnimator, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, obj, i12, i13, i14, i15, z10, list, lazyListItemPlacementAnimator, j10);
    }

    @Nullable
    public final FiniteAnimationSpec<IntOffset> getAnimationSpec(int i10) {
        Object parentData = this.wrappers.get(i10).getParentData();
        if (parentData instanceof FiniteAnimationSpec) {
            return (FiniteAnimationSpec) parentData;
        }
        return null;
    }

    public final boolean getHasAnimations() {
        return this.hasAnimations;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo
    public int getIndex() {
        return this.index;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo
    @NotNull
    public Object getKey() {
        return this.key;
    }

    public final int getMainAxisSize(int i10) {
        return getMainAxisSize(this.wrappers.get(i10).getPlaceable());
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo
    public int getOffset() {
        return this.offset;
    }

    /* renamed from: getOffset-Bjo55l4  reason: not valid java name */
    public final long m568getOffsetBjo55l4(int i10) {
        return this.wrappers.get(i10).m567getOffsetnOccac();
    }

    public final int getPlaceablesCount() {
        return this.wrappers.size();
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo
    public int getSize() {
        return this.size;
    }

    public final int getSizeWithSpacings() {
        return this.sizeWithSpacings;
    }

    public final void place(@NotNull Placeable.PlacementScope scope) {
        long m568getOffsetBjo55l4;
        Intrinsics.checkNotNullParameter(scope, "scope");
        int placeablesCount = getPlaceablesCount();
        for (int i10 = 0; i10 < placeablesCount; i10++) {
            Placeable placeable = this.wrappers.get(i10).getPlaceable();
            int mainAxisSize = this.minMainAxisOffset - getMainAxisSize(placeable);
            int i11 = this.maxMainAxisOffset;
            if (getAnimationSpec(i10) != null) {
                m568getOffsetBjo55l4 = this.placementAnimator.m561getAnimatedOffsetYT5a7pE(getKey(), i10, mainAxisSize, i11, m568getOffsetBjo55l4(i10));
            } else {
                m568getOffsetBjo55l4 = m568getOffsetBjo55l4(i10);
            }
            if (this.isVertical) {
                long j10 = this.visualOffset;
                Placeable.PlacementScope.m3380placeWithLayeraW9wM$default(scope, placeable, IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m568getOffsetBjo55l4) + IntOffset.m4167getXimpl(j10), IntOffset.m4168getYimpl(m568getOffsetBjo55l4) + IntOffset.m4168getYimpl(j10)), 0.0f, null, 6, null);
            } else {
                long j11 = this.visualOffset;
                Placeable.PlacementScope.m3379placeRelativeWithLayeraW9wM$default(scope, placeable, IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m568getOffsetBjo55l4) + IntOffset.m4167getXimpl(j11), IntOffset.m4168getYimpl(m568getOffsetBjo55l4) + IntOffset.m4168getYimpl(j11)), 0.0f, null, 6, null);
            }
        }
    }

    private LazyListPositionedItem(int i10, int i11, Object obj, int i12, int i13, int i14, int i15, boolean z10, List<LazyListPlaceableWrapper> list, LazyListItemPlacementAnimator lazyListItemPlacementAnimator, long j10) {
        this.offset = i10;
        this.index = i11;
        this.key = obj;
        this.size = i12;
        this.sizeWithSpacings = i13;
        this.minMainAxisOffset = i14;
        this.maxMainAxisOffset = i15;
        this.isVertical = z10;
        this.wrappers = list;
        this.placementAnimator = lazyListItemPlacementAnimator;
        this.visualOffset = j10;
        int placeablesCount = getPlaceablesCount();
        boolean z11 = false;
        int i16 = 0;
        while (true) {
            if (i16 >= placeablesCount) {
                break;
            } else if (getAnimationSpec(i16) != null) {
                z11 = true;
                break;
            } else {
                i16++;
            }
        }
        this.hasAnimations = z11;
    }

    private final int getMainAxisSize(Placeable placeable) {
        return this.isVertical ? placeable.getHeight() : placeable.getWidth();
    }
}
