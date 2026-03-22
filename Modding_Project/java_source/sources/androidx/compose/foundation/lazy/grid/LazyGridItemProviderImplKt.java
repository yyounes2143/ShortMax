package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.Snapshot;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyGridItemProviderImpl.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridItemProviderImplKt {
    private static final int ExtraItemsNearTheSlidingWindow = 200;
    private static final int VisibleItemsSlidingWindowSize = 90;

    /* JADX INFO: Access modifiers changed from: private */
    public static final IntRange calculateNearestItemsRange(int i10) {
        int i11 = VisibleItemsSlidingWindowSize;
        int i12 = (i10 / i11) * i11;
        int i13 = ExtraItemsNearTheSlidingWindow;
        return e.v(Math.max(i12 - i13, 0), i12 + i11 + i13);
    }

    @ExperimentalFoundationApi
    @NotNull
    public static final Map<Object, Integer> generateKeyToIndexMap(@NotNull IntRange range, @NotNull IntervalList<LazyGridIntervalContent> list) {
        Intrinsics.checkNotNullParameter(range, "range");
        Intrinsics.checkNotNullParameter(list, "list");
        final int c10 = range.c();
        if (c10 >= 0) {
            final int min = Math.min(range.d(), list.getSize() - 1);
            if (min < c10) {
                return p0.i();
            }
            final HashMap hashMap = new HashMap();
            list.forEach(c10, min, new Function1<IntervalList.Interval<LazyGridIntervalContent>, Unit>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridItemProviderImplKt$generateKeyToIndexMap$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(IntervalList.Interval<LazyGridIntervalContent> interval) {
                    invoke2(interval);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull IntervalList.Interval<LazyGridIntervalContent> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (it.getValue().getKey() == null) {
                        return;
                    }
                    Function1<Integer, Object> key = it.getValue().getKey();
                    if (key != null) {
                        int max = Math.max(c10, it.getStartIndex());
                        int min2 = Math.min(min, (it.getStartIndex() + it.getSize()) - 1);
                        if (max > min2) {
                            return;
                        }
                        while (true) {
                            hashMap.put(key.invoke(Integer.valueOf(max - it.getStartIndex())), Integer.valueOf(max));
                            if (max == min2) {
                                return;
                            }
                            max++;
                        }
                    } else {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                }
            });
            return hashMap;
        }
        throw new IllegalStateException("Check failed.");
    }

    @Composable
    @ExperimentalFoundationApi
    @NotNull
    public static final LazyGridItemProvider rememberItemProvider(@NotNull LazyGridState state, @NotNull Function1<? super LazyGridScope, Unit> content, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(1895482293);
        final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(content, composer, (i10 >> 3) & 14);
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(state);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            Snapshot createNonObservableSnapshot = Snapshot.Companion.createNonObservableSnapshot();
            try {
                Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
                IntRange calculateNearestItemsRange = calculateNearestItemsRange(state.getFirstVisibleItemIndex());
                createNonObservableSnapshot.restoreCurrent(makeCurrent);
                createNonObservableSnapshot.dispose();
                rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(calculateNearestItemsRange, null, 2, null);
                composer.updateRememberedValue(rememberedValue);
            } catch (Throwable th2) {
                createNonObservableSnapshot.dispose();
                throw th2;
            }
        }
        composer.endReplaceableGroup();
        final MutableState mutableState = (MutableState) rememberedValue;
        EffectsKt.LaunchedEffect(mutableState, new LazyGridItemProviderImplKt$rememberItemProvider$1(state, mutableState, null), composer, 0);
        composer.startReplaceableGroup(1157296644);
        boolean changed2 = composer.changed(mutableState);
        Object rememberedValue2 = composer.rememberedValue();
        if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
            rememberedValue2 = new LazyGridItemProviderImpl(SnapshotStateKt.derivedStateOf(new Function0<LazyGridItemsSnapshot>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridItemProviderImplKt$rememberItemProvider$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final LazyGridItemsSnapshot invoke() {
                    LazyGridScopeImpl lazyGridScopeImpl = new LazyGridScopeImpl();
                    rememberUpdatedState.getValue().invoke(lazyGridScopeImpl);
                    return new LazyGridItemsSnapshot(lazyGridScopeImpl.getIntervals$foundation_release(), lazyGridScopeImpl.getHasCustomSpans$foundation_release(), mutableState.getValue());
                }
            }));
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        LazyGridItemProviderImpl lazyGridItemProviderImpl = (LazyGridItemProviderImpl) rememberedValue2;
        composer.endReplaceableGroup();
        return lazyGridItemProviderImpl;
    }
}
