package androidx.compose.foundation.lazy;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.ranges.d;
import kotlin.ranges.e;
/* compiled from: LazyListMeasure.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyListMeasureKt {
    private static final List<LazyListPositionedItem> calculateItemsOffsets(List<LazyMeasuredItem> list, List<LazyMeasuredItem> list2, List<LazyMeasuredItem> list3, int i10, int i11, int i12, int i13, int i14, boolean z10, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, boolean z11, Density density) {
        int i15;
        boolean z12;
        if (z10) {
            i15 = i11;
        } else {
            i15 = i10;
        }
        if (i12 < Math.min(i15, i13)) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z12 && i14 != 0) {
            throw new IllegalStateException("Check failed.");
        }
        ArrayList arrayList = new ArrayList(list.size() + list2.size() + list3.size());
        if (z12) {
            if (list2.isEmpty() && list3.isEmpty()) {
                int size = list.size();
                int[] iArr = new int[size];
                for (int i16 = 0; i16 < size; i16++) {
                    iArr[i16] = list.get(calculateItemsOffsets$reverseAware(i16, z11, size)).getSize();
                }
                int[] iArr2 = new int[size];
                for (int i17 = 0; i17 < size; i17++) {
                    iArr2[i17] = 0;
                }
                if (z10) {
                    if (vertical != null) {
                        vertical.arrange(density, i15, iArr, iArr2);
                    } else {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                } else if (horizontal != null) {
                    horizontal.arrange(density, i15, iArr, LayoutDirection.Ltr, iArr2);
                } else {
                    throw new IllegalArgumentException("Required value was null.");
                }
                d n02 = n.n0(iArr2);
                if (z11) {
                    n02 = e.t(n02);
                }
                int c10 = n02.c();
                int d10 = n02.d();
                int e10 = n02.e();
                if ((e10 > 0 && c10 <= d10) || (e10 < 0 && d10 <= c10)) {
                    while (true) {
                        int i18 = iArr2[c10];
                        LazyMeasuredItem lazyMeasuredItem = list.get(calculateItemsOffsets$reverseAware(c10, z11, size));
                        if (z11) {
                            i18 = (i15 - i18) - lazyMeasuredItem.getSize();
                        }
                        arrayList.add(lazyMeasuredItem.position(i18, i10, i11));
                        if (c10 == d10) {
                            break;
                        }
                        c10 += e10;
                    }
                }
            } else {
                throw new IllegalArgumentException("Failed requirement.");
            }
        } else {
            int size2 = list2.size();
            int i19 = i14;
            for (int i20 = 0; i20 < size2; i20++) {
                LazyMeasuredItem lazyMeasuredItem2 = list2.get(i20);
                i19 -= lazyMeasuredItem2.getSizeWithSpacings();
                arrayList.add(lazyMeasuredItem2.position(i19, i10, i11));
            }
            int size3 = list.size();
            int i21 = i14;
            for (int i22 = 0; i22 < size3; i22++) {
                LazyMeasuredItem lazyMeasuredItem3 = list.get(i22);
                arrayList.add(lazyMeasuredItem3.position(i21, i10, i11));
                i21 += lazyMeasuredItem3.getSizeWithSpacings();
            }
            int size4 = list3.size();
            for (int i23 = 0; i23 < size4; i23++) {
                LazyMeasuredItem lazyMeasuredItem4 = list3.get(i23);
                arrayList.add(lazyMeasuredItem4.position(i21, i10, i11));
                i21 += lazyMeasuredItem4.getSizeWithSpacings();
            }
        }
        return arrayList;
    }

    private static final int calculateItemsOffsets$reverseAware(int i10, boolean z10, int i11) {
        if (z10) {
            return (i11 - i10) - 1;
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ef  */
    @org.jetbrains.annotations.NotNull
    /* renamed from: measureLazyList-7Xnphek  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.foundation.lazy.LazyListMeasureResult m566measureLazyList7Xnphek(int r32, @org.jetbrains.annotations.NotNull androidx.compose.foundation.lazy.LazyMeasuredItemProvider r33, int r34, int r35, int r36, int r37, int r38, float r39, long r40, boolean r42, @org.jetbrains.annotations.NotNull java.util.List<java.lang.Integer> r43, @org.jetbrains.annotations.Nullable androidx.compose.foundation.layout.Arrangement.Vertical r44, @org.jetbrains.annotations.Nullable androidx.compose.foundation.layout.Arrangement.Horizontal r45, boolean r46, @org.jetbrains.annotations.NotNull androidx.compose.ui.unit.Density r47, @org.jetbrains.annotations.NotNull androidx.compose.foundation.lazy.LazyListItemPlacementAnimator r48, @org.jetbrains.annotations.NotNull androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo r49, @org.jetbrains.annotations.NotNull at.n<? super java.lang.Integer, ? super java.lang.Integer, ? super kotlin.jvm.functions.Function1<? super androidx.compose.ui.layout.Placeable.PlacementScope, kotlin.Unit>, ? extends androidx.compose.ui.layout.MeasureResult> r50) {
        /*
            Method dump skipped, instructions count: 904
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListMeasureKt.m566measureLazyList7Xnphek(int, androidx.compose.foundation.lazy.LazyMeasuredItemProvider, int, int, int, int, int, float, long, boolean, java.util.List, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.Arrangement$Horizontal, boolean, androidx.compose.ui.unit.Density, androidx.compose.foundation.lazy.LazyListItemPlacementAnimator, androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo, at.n):androidx.compose.foundation.lazy.LazyListMeasureResult");
    }

    private static final int measureLazyList_7Xnphek$endIndex(LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo, int i10) {
        return Math.min(lazyListBeyondBoundsInfo.getEnd(), i10 - 1);
    }

    private static final int measureLazyList_7Xnphek$startIndex(LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo, int i10) {
        return Math.min(lazyListBeyondBoundsInfo.getStart(), i10 - 1);
    }
}
