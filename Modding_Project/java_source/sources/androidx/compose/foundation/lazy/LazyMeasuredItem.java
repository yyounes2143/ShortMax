package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyMeasuredItem.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyMeasuredItem {
    private final int afterContentPadding;
    private final int beforeContentPadding;
    private final int crossAxisSize;
    @Nullable
    private final Alignment.Horizontal horizontalAlignment;
    private final int index;
    private final boolean isVertical;
    @NotNull
    private final Object key;
    @NotNull
    private final LayoutDirection layoutDirection;
    @NotNull
    private final Placeable[] placeables;
    @NotNull
    private final LazyListItemPlacementAnimator placementAnimator;
    private final boolean reverseLayout;
    private final int size;
    private final int sizeWithSpacings;
    private final int spacing;
    @Nullable
    private final Alignment.Vertical verticalAlignment;
    private final long visualOffset;

    @ExperimentalFoundationApi
    public /* synthetic */ LazyMeasuredItem(int i10, Placeable[] placeableArr, boolean z10, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z11, int i11, int i12, LazyListItemPlacementAnimator lazyListItemPlacementAnimator, int i13, long j10, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, placeableArr, z10, horizontal, vertical, layoutDirection, z11, i11, i12, lazyListItemPlacementAnimator, i13, j10, obj);
    }

    public final int getCrossAxisSize() {
        return this.crossAxisSize;
    }

    public final int getIndex() {
        return this.index;
    }

    @NotNull
    public final Object getKey() {
        return this.key;
    }

    public final int getSize() {
        return this.size;
    }

    public final int getSizeWithSpacings() {
        return this.sizeWithSpacings;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x009d A[SYNTHETIC] */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.foundation.lazy.LazyListPositionedItem position(int r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyMeasuredItem.position(int, int, int):androidx.compose.foundation.lazy.LazyListPositionedItem");
    }

    private LazyMeasuredItem(int i10, Placeable[] placeableArr, boolean z10, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z11, int i11, int i12, LazyListItemPlacementAnimator lazyListItemPlacementAnimator, int i13, long j10, Object obj) {
        this.index = i10;
        this.placeables = placeableArr;
        this.isVertical = z10;
        this.horizontalAlignment = horizontal;
        this.verticalAlignment = vertical;
        this.layoutDirection = layoutDirection;
        this.reverseLayout = z11;
        this.beforeContentPadding = i11;
        this.afterContentPadding = i12;
        this.placementAnimator = lazyListItemPlacementAnimator;
        this.spacing = i13;
        this.visualOffset = j10;
        this.key = obj;
        int i14 = 0;
        int i15 = 0;
        for (Placeable placeable : placeableArr) {
            i14 += this.isVertical ? placeable.getHeight() : placeable.getWidth();
            i15 = Math.max(i15, !this.isVertical ? placeable.getHeight() : placeable.getWidth());
        }
        this.size = i14;
        this.sizeWithSpacings = i14 + this.spacing;
        this.crossAxisSize = i15;
    }
}
