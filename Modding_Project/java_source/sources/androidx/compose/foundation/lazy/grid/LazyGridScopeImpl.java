package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import at.n;
import at.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyGridScopeImpl.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridScopeImpl implements LazyGridScope {
    private boolean hasCustomSpans;
    @NotNull
    private final MutableIntervalList<LazyGridIntervalContent> intervals = new MutableIntervalList<>();
    @NotNull
    private final Function2<LazyGridItemSpanScope, Integer, GridItemSpan> DefaultSpan = new Function2<LazyGridItemSpanScope, Integer, GridItemSpan>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridScopeImpl$DefaultSpan$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ GridItemSpan invoke(LazyGridItemSpanScope lazyGridItemSpanScope, Integer num) {
            return GridItemSpan.m582boximpl(m626invoke_orMbw(lazyGridItemSpanScope, num.intValue()));
        }

        /* renamed from: invoke-_-orMbw  reason: not valid java name */
        public final long m626invoke_orMbw(@NotNull LazyGridItemSpanScope lazyGridItemSpanScope, int i10) {
            Intrinsics.checkNotNullParameter(lazyGridItemSpanScope, "$this$null");
            return LazyGridSpanKt.GridItemSpan(1);
        }
    };

    public final boolean getHasCustomSpans$foundation_release() {
        return this.hasCustomSpans;
    }

    @NotNull
    public final MutableIntervalList<LazyGridIntervalContent> getIntervals$foundation_release() {
        return this.intervals;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridScope
    public void item(@Nullable final Object obj, @Nullable final Function1<? super LazyGridItemSpanScope, GridItemSpan> function1, @Nullable final Object obj2, @NotNull final n<? super LazyGridItemScope, ? super Composer, ? super Integer, Unit> content) {
        Function1<Integer, Object> function12;
        Function2<LazyGridItemSpanScope, Integer, GridItemSpan> function2;
        Intrinsics.checkNotNullParameter(content, "content");
        MutableIntervalList<LazyGridIntervalContent> mutableIntervalList = this.intervals;
        if (obj != null) {
            function12 = new Function1<Integer, Object>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridScopeImpl$item$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @NotNull
                public final Object invoke(int i10) {
                    return obj;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                    return invoke(num.intValue());
                }
            };
        } else {
            function12 = null;
        }
        if (function1 != null) {
            function2 = new Function2<LazyGridItemSpanScope, Integer, GridItemSpan>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridScopeImpl$item$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ GridItemSpan invoke(LazyGridItemSpanScope lazyGridItemSpanScope, Integer num) {
                    return GridItemSpan.m582boximpl(m627invoke_orMbw(lazyGridItemSpanScope, num.intValue()));
                }

                /* renamed from: invoke-_-orMbw  reason: not valid java name */
                public final long m627invoke_orMbw(@NotNull LazyGridItemSpanScope lazyGridItemSpanScope, int i10) {
                    Intrinsics.checkNotNullParameter(lazyGridItemSpanScope, "$this$null");
                    return function1.invoke(lazyGridItemSpanScope).m589unboximpl();
                }
            };
        } else {
            function2 = this.DefaultSpan;
        }
        mutableIntervalList.addInterval(1, new LazyGridIntervalContent(function12, function2, new Function1<Integer, Object>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridScopeImpl$item$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                return invoke(num.intValue());
            }

            @Nullable
            public final Object invoke(int i10) {
                return obj2;
            }
        }, ComposableLambdaKt.composableLambdaInstance(-1504808184, true, new o<LazyGridItemScope, Integer, Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridScopeImpl$item$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(4);
            }

            @Override // at.o
            public /* bridge */ /* synthetic */ Unit invoke(LazyGridItemScope lazyGridItemScope, Integer num, Composer composer, Integer num2) {
                invoke(lazyGridItemScope, num.intValue(), composer, num2.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(@NotNull LazyGridItemScope $receiver, int i10, @Nullable Composer composer, int i11) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                if ((i11 & 14) == 0) {
                    i11 |= composer.changed($receiver) ? 4 : 2;
                }
                if ((i11 & 651) == 130 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                } else {
                    content.invoke($receiver, composer, Integer.valueOf(i11 & 14));
                }
            }
        })));
        if (function1 != null) {
            this.hasCustomSpans = true;
        }
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridScope
    public void items(int i10, @Nullable Function1<? super Integer, ? extends Object> function1, @Nullable Function2<? super LazyGridItemSpanScope, ? super Integer, GridItemSpan> function2, @NotNull Function1<? super Integer, ? extends Object> contentType, @NotNull o<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> itemContent) {
        Function2<? super LazyGridItemSpanScope, ? super Integer, GridItemSpan> function22;
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        MutableIntervalList<LazyGridIntervalContent> mutableIntervalList = this.intervals;
        if (function2 == null) {
            function22 = this.DefaultSpan;
        } else {
            function22 = function2;
        }
        mutableIntervalList.addInterval(i10, new LazyGridIntervalContent(function1, function22, contentType, itemContent));
        if (function2 != null) {
            this.hasCustomSpans = true;
        }
    }

    public final void setHasCustomSpans$foundation_release(boolean z10) {
        this.hasCustomSpans = z10;
    }
}
