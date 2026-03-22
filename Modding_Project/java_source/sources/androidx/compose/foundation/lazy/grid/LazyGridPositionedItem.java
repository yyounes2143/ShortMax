package androidx.compose.foundation.lazy.grid;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyMeasuredItem.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridPositionedItem implements LazyGridItemInfo {
    private final int column;
    private final boolean hasAnimations;
    private final int index;
    private final boolean isVertical;
    @NotNull
    private final Object key;
    private final int lineMainAxisSize;
    private final int mainAxisSpacing;
    private final int maxMainAxisOffset;
    private final int minMainAxisOffset;
    private final long offset;
    private final long placeableOffset;
    @NotNull
    private final LazyGridItemPlacementAnimator placementAnimator;
    private final int row;
    private final long size;
    private final long visualOffset;
    @NotNull
    private final List<LazyGridPlaceableWrapper> wrappers;

    public /* synthetic */ LazyGridPositionedItem(long j10, long j11, int i10, Object obj, int i11, int i12, long j12, int i13, int i14, int i15, int i16, boolean z10, List list, LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator, long j13, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, i10, obj, i11, i12, j12, i13, i14, i15, i16, z10, list, lazyGridItemPlacementAnimator, j13);
    }

    /* renamed from: getMainAxis--gyyYBs  reason: not valid java name */
    private final int m624getMainAxisgyyYBs(long j10) {
        if (this.isVertical) {
            return IntOffset.m4168getYimpl(j10);
        }
        return IntOffset.m4167getXimpl(j10);
    }

    @Nullable
    public final FiniteAnimationSpec<IntOffset> getAnimationSpec(int i10) {
        Object parentData = this.wrappers.get(i10).getParentData();
        if (parentData instanceof FiniteAnimationSpec) {
            return (FiniteAnimationSpec) parentData;
        }
        return null;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    public int getColumn() {
        return this.column;
    }

    public final int getCrossAxisOffset() {
        if (this.isVertical) {
            return IntOffset.m4167getXimpl(mo611getOffsetnOccac());
        }
        return IntOffset.m4168getYimpl(mo611getOffsetnOccac());
    }

    public final int getCrossAxisSize() {
        if (this.isVertical) {
            return IntSize.m4209getWidthimpl(mo612getSizeYbymL2g());
        }
        return IntSize.m4208getHeightimpl(mo612getSizeYbymL2g());
    }

    public final boolean getHasAnimations() {
        return this.hasAnimations;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    public int getIndex() {
        return this.index;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    @NotNull
    public Object getKey() {
        return this.key;
    }

    public final int getLineMainAxisSize() {
        return this.lineMainAxisSize;
    }

    public final int getLineMainAxisSizeWithSpacings() {
        return this.mainAxisSpacing + this.lineMainAxisSize;
    }

    public final int getMainAxisSize(int i10) {
        return getMainAxisSize(this.wrappers.get(i10).getPlaceable());
    }

    public final int getMainAxisSizeWithSpacings() {
        int m4209getWidthimpl;
        int i10 = this.mainAxisSpacing;
        if (this.isVertical) {
            m4209getWidthimpl = IntSize.m4208getHeightimpl(mo612getSizeYbymL2g());
        } else {
            m4209getWidthimpl = IntSize.m4209getWidthimpl(mo612getSizeYbymL2g());
        }
        return i10 + m4209getWidthimpl;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    /* renamed from: getOffset-nOcc-ac */
    public long mo611getOffsetnOccac() {
        return this.offset;
    }

    /* renamed from: getPlaceableOffset-nOcc-ac  reason: not valid java name */
    public final long m625getPlaceableOffsetnOccac() {
        return this.placeableOffset;
    }

    public final int getPlaceablesCount() {
        return this.wrappers.size();
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    public int getRow() {
        return this.row;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    /* renamed from: getSize-YbymL2g */
    public long mo612getSizeYbymL2g() {
        return this.size;
    }

    public final void place(@NotNull Placeable.PlacementScope scope) {
        long j10;
        Intrinsics.checkNotNullParameter(scope, "scope");
        int placeablesCount = getPlaceablesCount();
        for (int i10 = 0; i10 < placeablesCount; i10++) {
            Placeable placeable = this.wrappers.get(i10).getPlaceable();
            int mainAxisSize = this.minMainAxisOffset - getMainAxisSize(placeable);
            int i11 = this.maxMainAxisOffset;
            if (getAnimationSpec(i10) != null) {
                j10 = this.placementAnimator.m616getAnimatedOffsetYT5a7pE(getKey(), i10, mainAxisSize, i11, this.placeableOffset);
            } else {
                j10 = this.placeableOffset;
            }
            if (m624getMainAxisgyyYBs(j10) > mainAxisSize && m624getMainAxisgyyYBs(j10) < i11) {
                if (this.isVertical) {
                    long j11 = this.visualOffset;
                    Placeable.PlacementScope.m3380placeWithLayeraW9wM$default(scope, placeable, IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(j10) + IntOffset.m4167getXimpl(j11), IntOffset.m4168getYimpl(j10) + IntOffset.m4168getYimpl(j11)), 0.0f, null, 6, null);
                } else {
                    long j12 = this.visualOffset;
                    Placeable.PlacementScope.m3379placeRelativeWithLayeraW9wM$default(scope, placeable, IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(j10) + IntOffset.m4167getXimpl(j12), IntOffset.m4168getYimpl(j10) + IntOffset.m4168getYimpl(j12)), 0.0f, null, 6, null);
                }
            }
        }
    }

    private LazyGridPositionedItem(long j10, long j11, int i10, Object obj, int i11, int i12, long j12, int i13, int i14, int i15, int i16, boolean z10, List<LazyGridPlaceableWrapper> list, LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator, long j13) {
        this.offset = j10;
        this.placeableOffset = j11;
        this.index = i10;
        this.key = obj;
        this.row = i11;
        this.column = i12;
        this.size = j12;
        this.lineMainAxisSize = i13;
        this.mainAxisSpacing = i14;
        this.minMainAxisOffset = i15;
        this.maxMainAxisOffset = i16;
        this.isVertical = z10;
        this.wrappers = list;
        this.placementAnimator = lazyGridItemPlacementAnimator;
        this.visualOffset = j13;
        int placeablesCount = getPlaceablesCount();
        boolean z11 = false;
        int i17 = 0;
        while (true) {
            if (i17 >= placeablesCount) {
                break;
            } else if (getAnimationSpec(i17) != null) {
                z11 = true;
                break;
            } else {
                i17++;
            }
        }
        this.hasAnimations = z11;
    }

    private final int getMainAxisSize(Placeable placeable) {
        return this.isVertical ? placeable.getHeight() : placeable.getWidth();
    }
}
