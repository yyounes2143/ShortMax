package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.Composer;
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
public final class LazyGridIntervalContent {
    @NotNull
    private final o<LazyGridItemScope, Integer, Composer, Integer, Unit> item;
    @Nullable
    private final Function1<Integer, Object> key;
    @NotNull
    private final Function2<LazyGridItemSpanScope, Integer, GridItemSpan> span;
    @NotNull
    private final Function1<Integer, Object> type;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridIntervalContent(@Nullable Function1<? super Integer, ? extends Object> function1, @NotNull Function2<? super LazyGridItemSpanScope, ? super Integer, GridItemSpan> span, @NotNull Function1<? super Integer, ? extends Object> type, @NotNull o<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> item) {
        Intrinsics.checkNotNullParameter(span, "span");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(item, "item");
        this.key = function1;
        this.span = span;
        this.type = type;
        this.item = item;
    }

    @NotNull
    public final o<LazyGridItemScope, Integer, Composer, Integer, Unit> getItem() {
        return this.item;
    }

    @Nullable
    public final Function1<Integer, Object> getKey() {
        return this.key;
    }

    @NotNull
    public final Function2<LazyGridItemSpanScope, Integer, GridItemSpan> getSpan() {
        return this.span;
    }

    @NotNull
    public final Function1<Integer, Object> getType() {
        return this.type;
    }
}
