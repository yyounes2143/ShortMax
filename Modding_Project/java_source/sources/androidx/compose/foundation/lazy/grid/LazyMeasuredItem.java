package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyMeasuredItem.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyMeasuredItem {
    private final int afterContentPadding;
    private final int beforeContentPadding;
    private final int crossAxisSize;
    private final int index;
    private final boolean isVertical;
    @NotNull
    private final Object key;
    @NotNull
    private final LayoutDirection layoutDirection;
    private final int mainAxisSize;
    private final int mainAxisSizeWithSpacings;
    private final int mainAxisSpacing;
    @NotNull
    private final Placeable[] placeables;
    @NotNull
    private final LazyGridItemPlacementAnimator placementAnimator;
    private final boolean reverseLayout;
    private final long visualOffset;

    public /* synthetic */ LazyMeasuredItem(int i10, Object obj, boolean z10, int i11, int i12, boolean z11, LayoutDirection layoutDirection, int i13, int i14, Placeable[] placeableArr, LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, obj, z10, i11, i12, z11, layoutDirection, i13, i14, placeableArr, lazyGridItemPlacementAnimator, j10);
    }

    public final int getCrossAxisSize() {
        return this.crossAxisSize;
    }

    /* renamed from: getIndex-VZbfaAc  reason: not valid java name */
    public final int m636getIndexVZbfaAc() {
        return this.index;
    }

    @NotNull
    public final Object getKey() {
        return this.key;
    }

    public final int getMainAxisSize() {
        return this.mainAxisSize;
    }

    public final int getMainAxisSizeWithSpacings() {
        return this.mainAxisSizeWithSpacings;
    }

    public final int getMainAxisSpacing() {
        return this.mainAxisSpacing;
    }

    @NotNull
    public final Placeable[] getPlaceables() {
        return this.placeables;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x007f A[SYNTHETIC] */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.foundation.lazy.grid.LazyGridPositionedItem position(int r24, int r25, int r26, int r27, int r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.grid.LazyMeasuredItem.position(int, int, int, int, int, int, int):androidx.compose.foundation.lazy.grid.LazyGridPositionedItem");
    }

    private LazyMeasuredItem(int i10, Object obj, boolean z10, int i11, int i12, boolean z11, LayoutDirection layoutDirection, int i13, int i14, Placeable[] placeableArr, LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator, long j10) {
        this.index = i10;
        this.key = obj;
        this.isVertical = z10;
        this.crossAxisSize = i11;
        this.mainAxisSpacing = i12;
        this.reverseLayout = z11;
        this.layoutDirection = layoutDirection;
        this.beforeContentPadding = i13;
        this.afterContentPadding = i14;
        this.placeables = placeableArr;
        this.placementAnimator = lazyGridItemPlacementAnimator;
        this.visualOffset = j10;
        int i15 = 0;
        for (Placeable placeable : placeableArr) {
            i15 = Math.max(i15, this.isVertical ? placeable.getHeight() : placeable.getWidth());
        }
        this.mainAxisSize = i15;
        this.mainAxisSizeWithSpacings = i15 + this.mainAxisSpacing;
    }
}
