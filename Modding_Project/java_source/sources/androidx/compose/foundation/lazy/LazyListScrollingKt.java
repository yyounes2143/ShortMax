package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.ui.unit.Dp;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: LazyListScrolling.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyListScrollingKt {
    private static final boolean DEBUG = false;
    private static final float TargetDistance = Dp.m4049constructorimpl(2500);
    private static final float BoundDistance = Dp.m4049constructorimpl(1500);

    @Nullable
    public static final Object doSmoothScrollToItem(@NotNull LazyListState lazyListState, int i10, int i11, @NotNull c<? super Unit> cVar) {
        if (i10 >= 0.0f) {
            Object scroll$default = ScrollableState.scroll$default(lazyListState, null, new LazyListScrollingKt$doSmoothScrollToItem$3(lazyListState, i10, i11, null), cVar, 1, null);
            if (scroll$default == a.f()) {
                return scroll$default;
            }
            return Unit.f60915a;
        }
        throw new IllegalArgumentException(("Index should be non-negative (" + i10 + ')').toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyListItemInfo doSmoothScrollToItem$getTargetItem(LazyListState lazyListState, int i10) {
        LazyListItemInfo lazyListItemInfo;
        List<LazyListItemInfo> visibleItemsInfo = lazyListState.getLayoutInfo().getVisibleItemsInfo();
        int size = visibleItemsInfo.size();
        int i11 = 0;
        while (true) {
            if (i11 < size) {
                lazyListItemInfo = visibleItemsInfo.get(i11);
                if (lazyListItemInfo.getIndex() == i10) {
                    break;
                }
                i11++;
            } else {
                lazyListItemInfo = null;
                break;
            }
        }
        return lazyListItemInfo;
    }

    private static final void debugLog(Function0<String> function0) {
    }
}
