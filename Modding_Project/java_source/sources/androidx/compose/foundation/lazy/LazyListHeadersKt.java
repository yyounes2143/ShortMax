package androidx.compose.foundation.lazy;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyListHeaders.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyListHeadersKt {
    @Nullable
    public static final LazyListPositionedItem findOrComposeLazyListHeader(@NotNull List<LazyListPositionedItem> composedVisibleItems, @NotNull LazyMeasuredItemProvider itemProvider, @NotNull List<Integer> headerIndexes, int i10, int i11, int i12) {
        int i13;
        int i14;
        Intrinsics.checkNotNullParameter(composedVisibleItems, "composedVisibleItems");
        Intrinsics.checkNotNullParameter(itemProvider, "itemProvider");
        Intrinsics.checkNotNullParameter(headerIndexes, "headerIndexes");
        int index = ((LazyListPositionedItem) CollectionsKt.r0(composedVisibleItems)).getIndex();
        int size = headerIndexes.size();
        int i15 = -1;
        int i16 = -1;
        int i17 = 0;
        while (i17 < size && headerIndexes.get(i17).intValue() <= index) {
            i15 = headerIndexes.get(i17).intValue();
            i17++;
            if (i17 >= 0 && i17 <= CollectionsKt.p(headerIndexes)) {
                i14 = headerIndexes.get(i17);
            } else {
                i14 = -1;
            }
            i16 = i14.intValue();
        }
        int size2 = composedVisibleItems.size();
        int i18 = Integer.MIN_VALUE;
        int i19 = Integer.MIN_VALUE;
        int i20 = -1;
        for (int i21 = 0; i21 < size2; i21++) {
            LazyListPositionedItem lazyListPositionedItem = composedVisibleItems.get(i21);
            if (lazyListPositionedItem.getIndex() == i15) {
                i18 = lazyListPositionedItem.getOffset();
                i20 = i21;
            } else if (lazyListPositionedItem.getIndex() == i16) {
                i19 = lazyListPositionedItem.getOffset();
            }
        }
        if (i15 == -1) {
            return null;
        }
        LazyMeasuredItem m577getAndMeasureZjPyQlc = itemProvider.m577getAndMeasureZjPyQlc(DataIndex.m536constructorimpl(i15));
        if (i18 != Integer.MIN_VALUE) {
            i13 = Math.max(-i10, i18);
        } else {
            i13 = -i10;
        }
        if (i19 != Integer.MIN_VALUE) {
            i13 = Math.min(i13, i19 - m577getAndMeasureZjPyQlc.getSize());
        }
        LazyListPositionedItem position = m577getAndMeasureZjPyQlc.position(i13, i11, i12);
        if (i20 != -1) {
            composedVisibleItems.set(i20, position);
        } else {
            composedVisibleItems.add(0, position);
        }
        return position;
    }
}
