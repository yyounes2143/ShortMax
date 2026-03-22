package androidx.compose.foundation.lazy.grid;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyGridDsl.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridDslKt$items$8 extends Lambda implements Function2<LazyGridItemSpanScope, Integer, GridItemSpan> {
    final /* synthetic */ T[] $items;
    final /* synthetic */ Function2<LazyGridItemSpanScope, T, GridItemSpan> $span;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridDslKt$items$8(Function2<? super LazyGridItemSpanScope, ? super T, GridItemSpan> function2, T[] tArr) {
        super(2);
        this.$span = function2;
        this.$items = tArr;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ GridItemSpan invoke(LazyGridItemSpanScope lazyGridItemSpanScope, Integer num) {
        return GridItemSpan.m582boximpl(m606invoke_orMbw(lazyGridItemSpanScope, num.intValue()));
    }

    /* renamed from: invoke-_-orMbw  reason: not valid java name */
    public final long m606invoke_orMbw(@NotNull LazyGridItemSpanScope lazyGridItemSpanScope, int i10) {
        Intrinsics.checkNotNullParameter(lazyGridItemSpanScope, "$this$null");
        return this.$span.invoke(lazyGridItemSpanScope, this.$items[i10]).m589unboximpl();
    }
}
