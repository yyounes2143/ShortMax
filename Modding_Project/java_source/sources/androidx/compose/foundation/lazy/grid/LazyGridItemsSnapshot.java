package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.Lazy_androidKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyGridItemProviderImpl.kt */
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public final class LazyGridItemsSnapshot {
    private final boolean hasCustomSpans;
    @NotNull
    private final IntervalList<LazyGridIntervalContent> intervals;
    @NotNull
    private final Map<Object, Integer> keyToIndexMap;
    @NotNull
    private final LazyGridSpanLayoutProvider spanLayoutProvider;

    public LazyGridItemsSnapshot(@NotNull IntervalList<LazyGridIntervalContent> intervals, boolean z10, @NotNull IntRange nearestItemsRange) {
        Intrinsics.checkNotNullParameter(intervals, "intervals");
        Intrinsics.checkNotNullParameter(nearestItemsRange, "nearestItemsRange");
        this.intervals = intervals;
        this.hasCustomSpans = z10;
        this.spanLayoutProvider = new LazyGridSpanLayoutProvider(this);
        this.keyToIndexMap = LazyGridItemProviderImplKt.generateKeyToIndexMap(nearestItemsRange, intervals);
    }

    @Composable
    public final void Item(final int i10, @Nullable Composer composer, final int i11) {
        Composer startRestartGroup = composer.startRestartGroup(-405085610);
        IntervalList.Interval<LazyGridIntervalContent> interval = this.intervals.get(i10);
        interval.getValue().getItem().invoke(LazyGridItemScopeImpl.INSTANCE, Integer.valueOf(i10 - interval.getStartIndex()), startRestartGroup, 6);
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridItemsSnapshot$Item$1
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
                    LazyGridItemsSnapshot.this.Item(i10, composer2, i11 | 1);
                }
            });
        }
    }

    @Nullable
    public final Object getContentType(int i10) {
        IntervalList.Interval<LazyGridIntervalContent> interval = this.intervals.get(i10);
        return interval.getValue().getType().invoke(Integer.valueOf(i10 - interval.getStartIndex()));
    }

    public final boolean getHasCustomSpans() {
        return this.hasCustomSpans;
    }

    public final int getItemsCount() {
        return this.intervals.getSize();
    }

    @NotNull
    public final Object getKey(int i10) {
        Object obj;
        IntervalList.Interval<LazyGridIntervalContent> interval = this.intervals.get(i10);
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

    /* renamed from: getSpan-_-orMbw  reason: not valid java name */
    public final long m617getSpan_orMbw(@NotNull LazyGridItemSpanScope getSpan, int i10) {
        Intrinsics.checkNotNullParameter(getSpan, "$this$getSpan");
        IntervalList.Interval<LazyGridIntervalContent> interval = this.intervals.get(i10);
        return interval.getValue().getSpan().invoke(getSpan, Integer.valueOf(i10 - interval.getStartIndex())).m589unboximpl();
    }

    @NotNull
    public final LazyGridSpanLayoutProvider getSpanLayoutProvider() {
        return this.spanLayoutProvider;
    }
}
