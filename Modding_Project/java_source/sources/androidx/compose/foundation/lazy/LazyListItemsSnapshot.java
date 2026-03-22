package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.Lazy_androidKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyListItemProviderImpl.kt */
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public final class LazyListItemsSnapshot {
    @NotNull
    private final List<Integer> headerIndexes;
    @NotNull
    private final IntervalList<LazyListIntervalContent> intervals;
    @NotNull
    private final Map<Object, Integer> keyToIndexMap;

    public LazyListItemsSnapshot(@NotNull IntervalList<LazyListIntervalContent> intervals, @NotNull List<Integer> headerIndexes, @NotNull IntRange nearestItemsRange) {
        Intrinsics.checkNotNullParameter(intervals, "intervals");
        Intrinsics.checkNotNullParameter(headerIndexes, "headerIndexes");
        Intrinsics.checkNotNullParameter(nearestItemsRange, "nearestItemsRange");
        this.intervals = intervals;
        this.headerIndexes = headerIndexes;
        this.keyToIndexMap = LazyListItemProviderImplKt.generateKeyToIndexMap(nearestItemsRange, intervals);
    }

    @Composable
    public final void Item(@NotNull final LazyItemScope scope, final int i10, @Nullable Composer composer, final int i11) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Composer startRestartGroup = composer.startRestartGroup(1922528915);
        IntervalList.Interval<LazyListIntervalContent> interval = this.intervals.get(i10);
        interval.getValue().getItem().invoke(scope, Integer.valueOf(i10 - interval.getStartIndex()), startRestartGroup, Integer.valueOf(i11 & 14));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListItemsSnapshot$Item$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i12) {
                    LazyListItemsSnapshot.this.Item(scope, i10, composer2, i11 | 1);
                }
            });
        }
    }

    @Nullable
    public final Object getContentType(int i10) {
        IntervalList.Interval<LazyListIntervalContent> interval = this.intervals.get(i10);
        return interval.getValue().getType().invoke(Integer.valueOf(i10 - interval.getStartIndex()));
    }

    @NotNull
    public final List<Integer> getHeaderIndexes() {
        return this.headerIndexes;
    }

    public final int getItemsCount() {
        return this.intervals.getSize();
    }

    @NotNull
    public final Object getKey(int i10) {
        Object obj;
        IntervalList.Interval<LazyListIntervalContent> interval = this.intervals.get(i10);
        int startIndex = i10 - interval.getStartIndex();
        Function1<Integer, Object> key = interval.getValue().getKey();
        if (key != null) {
            obj = key.invoke(Integer.valueOf(startIndex));
        } else {
            obj = null;
        }
        if (obj == null) {
            return Lazy_androidKt.getDefaultLazyLayoutKey(i10);
        }
        return obj;
    }

    @NotNull
    public final Map<Object, Integer> getKeyToIndexMap() {
        return this.keyToIndexMap;
    }
}
