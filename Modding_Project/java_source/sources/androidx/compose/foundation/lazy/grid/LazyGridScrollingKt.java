package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: LazyGridScrolling.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridScrollingKt {
    private static final boolean DEBUG = false;
    private static final float TargetDistance = Dp.m4049constructorimpl(2500);
    private static final float BoundDistance = Dp.m4049constructorimpl(1500);

    /* JADX INFO: Access modifiers changed from: private */
    public static final int calculateLineAverageMainAxisSize(final List<? extends LazyGridItemInfo> list, final boolean z10) {
        int m4209getWidthimpl;
        Function1<Integer, Integer> function1 = new Function1<Integer, Integer>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridScrollingKt$calculateLineAverageMainAxisSize$lineOf$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                return invoke(num.intValue());
            }

            @NotNull
            public final Integer invoke(int i10) {
                return Integer.valueOf(z10 ? list.get(i10).getRow() : list.get(i10).getColumn());
            }
        };
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < list.size()) {
            int intValue = function1.invoke(Integer.valueOf(i10)).intValue();
            if (intValue == -1) {
                i10++;
            } else {
                int i13 = 0;
                while (i10 < list.size() && function1.invoke(Integer.valueOf(i10)).intValue() == intValue) {
                    if (z10) {
                        m4209getWidthimpl = IntSize.m4208getHeightimpl(list.get(i10).mo612getSizeYbymL2g());
                    } else {
                        m4209getWidthimpl = IntSize.m4209getWidthimpl(list.get(i10).mo612getSizeYbymL2g());
                    }
                    i13 = Math.max(i13, m4209getWidthimpl);
                    i10++;
                }
                i11 += i13;
                i12++;
            }
        }
        return i11 / i12;
    }

    @Nullable
    public static final Object doSmoothScrollToItem(@NotNull LazyGridState lazyGridState, int i10, int i11, int i12, @NotNull c<? super Unit> cVar) {
        if (i10 >= 0.0f) {
            Object scroll$default = ScrollableState.scroll$default(lazyGridState, null, new LazyGridScrollingKt$doSmoothScrollToItem$3(lazyGridState, i10, i12, i11, null), cVar, 1, null);
            if (scroll$default == a.f()) {
                return scroll$default;
            }
            return Unit.f60915a;
        }
        throw new IllegalArgumentException(("Index should be non-negative (" + i10 + ')').toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyGridItemInfo doSmoothScrollToItem$getTargetItem(LazyGridState lazyGridState, int i10) {
        LazyGridItemInfo lazyGridItemInfo;
        List<LazyGridItemInfo> visibleItemsInfo = lazyGridState.getLayoutInfo().getVisibleItemsInfo();
        int size = visibleItemsInfo.size();
        int i11 = 0;
        while (true) {
            if (i11 < size) {
                lazyGridItemInfo = visibleItemsInfo.get(i11);
                if (lazyGridItemInfo.getIndex() == i10) {
                    break;
                }
                i11++;
            } else {
                lazyGridItemInfo = null;
                break;
            }
        }
        return lazyGridItemInfo;
    }

    private static final void debugLog(Function0<String> function0) {
    }
}
