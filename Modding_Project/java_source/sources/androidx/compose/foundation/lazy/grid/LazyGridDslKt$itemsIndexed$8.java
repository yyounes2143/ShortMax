package androidx.compose.foundation.lazy.grid;

import at.n;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyGridDsl.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridDslKt$itemsIndexed$8 extends Lambda implements Function2<LazyGridItemSpanScope, Integer, GridItemSpan> {
    final /* synthetic */ T[] $items;
    final /* synthetic */ n<LazyGridItemSpanScope, Integer, T, GridItemSpan> $span;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridDslKt$itemsIndexed$8(n<? super LazyGridItemSpanScope, ? super Integer, ? super T, GridItemSpan> nVar, T[] tArr) {
        super(2);
        this.$span = nVar;
        this.$items = tArr;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ GridItemSpan invoke(LazyGridItemSpanScope lazyGridItemSpanScope, Integer num) {
        return GridItemSpan.m582boximpl(m608invoke_orMbw(lazyGridItemSpanScope, num.intValue()));
    }

    /* renamed from: invoke-_-orMbw  reason: not valid java name */
    public final long m608invoke_orMbw(@NotNull LazyGridItemSpanScope lazyGridItemSpanScope, int i10) {
        Intrinsics.checkNotNullParameter(lazyGridItemSpanScope, "$this$null");
        return this.$span.invoke(lazyGridItemSpanScope, Integer.valueOf(i10), this.$items[i10]).m589unboximpl();
    }
}
