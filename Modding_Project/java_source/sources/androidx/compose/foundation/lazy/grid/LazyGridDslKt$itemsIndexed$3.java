package androidx.compose.foundation.lazy.grid;

import at.n;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyGridDsl.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridDslKt$itemsIndexed$3 extends Lambda implements Function2<LazyGridItemSpanScope, Integer, GridItemSpan> {
    final /* synthetic */ List<T> $items;
    final /* synthetic */ n<LazyGridItemSpanScope, Integer, T, GridItemSpan> $span;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridDslKt$itemsIndexed$3(n<? super LazyGridItemSpanScope, ? super Integer, ? super T, GridItemSpan> nVar, List<? extends T> list) {
        super(2);
        this.$span = nVar;
        this.$items = list;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ GridItemSpan invoke(LazyGridItemSpanScope lazyGridItemSpanScope, Integer num) {
        return GridItemSpan.m582boximpl(m607invoke_orMbw(lazyGridItemSpanScope, num.intValue()));
    }

    /* renamed from: invoke-_-orMbw  reason: not valid java name */
    public final long m607invoke_orMbw(@NotNull LazyGridItemSpanScope lazyGridItemSpanScope, int i10) {
        Intrinsics.checkNotNullParameter(lazyGridItemSpanScope, "$this$null");
        return this.$span.invoke(lazyGridItemSpanScope, Integer.valueOf(i10), this.$items.get(i10)).m589unboximpl();
    }
}
