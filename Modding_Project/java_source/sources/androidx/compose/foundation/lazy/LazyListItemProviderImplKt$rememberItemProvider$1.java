package androidx.compose.foundation.lazy;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.IntRange;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyListItemProviderImpl.kt */
@Metadata
@d(c = "androidx.compose.foundation.lazy.LazyListItemProviderImplKt$rememberItemProvider$1", f = "LazyListItemProviderImpl.kt", l = {54}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class LazyListItemProviderImplKt$rememberItemProvider$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ MutableState<IntRange> $nearestItemsRangeState;
    final /* synthetic */ LazyListState $state;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyListItemProviderImplKt$rememberItemProvider$1(LazyListState lazyListState, MutableState<IntRange> mutableState, c<? super LazyListItemProviderImplKt$rememberItemProvider$1> cVar) {
        super(2, cVar);
        this.$state = lazyListState;
        this.$nearestItemsRangeState = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new LazyListItemProviderImplKt$rememberItemProvider$1(this.$state, this.$nearestItemsRangeState, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((LazyListItemProviderImplKt$rememberItemProvider$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            final LazyListState lazyListState = this.$state;
            b snapshotFlow = SnapshotStateKt.snapshotFlow(new Function0<IntRange>() { // from class: androidx.compose.foundation.lazy.LazyListItemProviderImplKt$rememberItemProvider$1.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final IntRange invoke() {
                    IntRange calculateNearestItemsRange;
                    calculateNearestItemsRange = LazyListItemProviderImplKt.calculateNearestItemsRange(LazyListState.this.getFirstVisibleItemIndex());
                    return calculateNearestItemsRange;
                }
            });
            final MutableState<IntRange> mutableState = this.$nearestItemsRangeState;
            kt.c<IntRange> cVar = new kt.c<IntRange>() { // from class: androidx.compose.foundation.lazy.LazyListItemProviderImplKt$rememberItemProvider$1.2
                @Override // kt.c
                public /* bridge */ /* synthetic */ Object emit(IntRange intRange, c cVar2) {
                    return emit2(intRange, (c<? super Unit>) cVar2);
                }

                @Nullable
                /* renamed from: emit  reason: avoid collision after fix types in other method */
                public final Object emit2(@NotNull IntRange intRange, @NotNull c<? super Unit> cVar2) {
                    mutableState.setValue(intRange);
                    return Unit.f60915a;
                }
            };
            this.label = 1;
            if (snapshotFlow.collect(cVar, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
