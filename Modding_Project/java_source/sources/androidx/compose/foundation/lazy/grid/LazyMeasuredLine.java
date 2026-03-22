package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyMeasuredLine.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyMeasuredLine {
    private final int crossAxisSpacing;
    private final int index;
    private final boolean isVertical;
    @NotNull
    private final LazyMeasuredItem[] items;
    @NotNull
    private final LayoutDirection layoutDirection;
    private final int mainAxisSize;
    private final int mainAxisSizeWithSpacings;
    private final int mainAxisSpacing;
    private final int slotsPerLine;
    @NotNull
    private final List<GridItemSpan> spans;

    public /* synthetic */ LazyMeasuredLine(int i10, LazyMeasuredItem[] lazyMeasuredItemArr, List list, boolean z10, int i11, LayoutDirection layoutDirection, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, lazyMeasuredItemArr, list, z10, i11, layoutDirection, i12, i13);
    }

    /* renamed from: getIndex-hA7yfN8  reason: not valid java name */
    public final int m639getIndexhA7yfN8() {
        return this.index;
    }

    @NotNull
    public final LazyMeasuredItem[] getItems() {
        return this.items;
    }

    public final int getMainAxisSize() {
        return this.mainAxisSize;
    }

    public final int getMainAxisSizeWithSpacings() {
        return this.mainAxisSizeWithSpacings;
    }

    public final boolean isEmpty() {
        if (this.items.length == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<LazyGridPositionedItem> position(int i10, int i11, int i12) {
        int i13;
        int i14;
        LazyMeasuredItem[] lazyMeasuredItemArr = this.items;
        ArrayList arrayList = new ArrayList(lazyMeasuredItemArr.length);
        int length = lazyMeasuredItemArr.length;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i15 < length) {
            LazyMeasuredItem lazyMeasuredItem = lazyMeasuredItemArr[i15];
            int i19 = i16 + 1;
            int m586getCurrentLineSpanimpl = GridItemSpan.m586getCurrentLineSpanimpl(this.spans.get(i16).m589unboximpl());
            if (this.layoutDirection == LayoutDirection.Rtl) {
                i13 = (this.slotsPerLine - i17) - m586getCurrentLineSpanimpl;
            } else {
                i13 = i17;
            }
            boolean z10 = this.isVertical;
            if (z10) {
                i14 = this.index;
            } else {
                i14 = i13;
            }
            if (!z10) {
                i13 = this.index;
            }
            LazyGridPositionedItem position = lazyMeasuredItem.position(i10, i18, i11, i12, i14, i13, this.mainAxisSize);
            i18 += lazyMeasuredItem.getCrossAxisSize() + this.crossAxisSpacing;
            i17 += m586getCurrentLineSpanimpl;
            arrayList.add(position);
            i15++;
            i16 = i19;
        }
        return arrayList;
    }

    private LazyMeasuredLine(int i10, LazyMeasuredItem[] lazyMeasuredItemArr, List<GridItemSpan> list, boolean z10, int i11, LayoutDirection layoutDirection, int i12, int i13) {
        this.index = i10;
        this.items = lazyMeasuredItemArr;
        this.spans = list;
        this.isVertical = z10;
        this.slotsPerLine = i11;
        this.layoutDirection = layoutDirection;
        this.mainAxisSpacing = i12;
        this.crossAxisSpacing = i13;
        int i14 = 0;
        for (LazyMeasuredItem lazyMeasuredItem : lazyMeasuredItemArr) {
            i14 = Math.max(i14, lazyMeasuredItem.getMainAxisSize());
        }
        this.mainAxisSize = i14;
        this.mainAxisSizeWithSpacings = i14 + this.mainAxisSpacing;
    }
}
