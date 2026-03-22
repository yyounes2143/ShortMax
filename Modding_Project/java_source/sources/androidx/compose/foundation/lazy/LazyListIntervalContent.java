package androidx.compose.foundation.lazy;

import androidx.compose.runtime.Composer;
import at.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyListScopeImpl.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyListIntervalContent {
    @NotNull
    private final o<LazyItemScope, Integer, Composer, Integer, Unit> item;
    @Nullable
    private final Function1<Integer, Object> key;
    @NotNull
    private final Function1<Integer, Object> type;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyListIntervalContent(@Nullable Function1<? super Integer, ? extends Object> function1, @NotNull Function1<? super Integer, ? extends Object> type, @NotNull o<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> item) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(item, "item");
        this.key = function1;
        this.type = type;
        this.item = item;
    }

    @NotNull
    public final o<LazyItemScope, Integer, Composer, Integer, Unit> getItem() {
        return this.item;
    }

    @Nullable
    public final Function1<Integer, Object> getKey() {
        return this.key;
    }

    @NotNull
    public final Function1<Integer, Object> getType() {
        return this.type;
    }
}
