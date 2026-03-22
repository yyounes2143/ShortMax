package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.Composer;
import at.n;
import at.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyGridDsl.kt */
@LazyGridScopeMarker
@Metadata
/* loaded from: classes.dex */
public interface LazyGridScope {
    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void item$default(LazyGridScope lazyGridScope, Object obj, Function1 function1, Object obj2, n nVar, int i10, Object obj3) {
        if (obj3 == null) {
            if ((i10 & 1) != 0) {
                obj = null;
            }
            if ((i10 & 2) != 0) {
                function1 = null;
            }
            if ((i10 & 4) != 0) {
                obj2 = null;
            }
            lazyGridScope.item(obj, function1, obj2, nVar);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: item");
    }

    static /* synthetic */ void items$default(LazyGridScope lazyGridScope, int i10, Function1 function1, Function2 function2, Function1 function12, o oVar, int i11, Object obj) {
        Function1 function13;
        Function2 function22;
        if (obj == null) {
            if ((i11 & 2) != 0) {
                function13 = null;
            } else {
                function13 = function1;
            }
            if ((i11 & 4) != 0) {
                function22 = null;
            } else {
                function22 = function2;
            }
            LazyGridScope$items$1 lazyGridScope$items$1 = function12;
            if ((i11 & 8) != 0) {
                lazyGridScope$items$1 = new Function1() { // from class: androidx.compose.foundation.lazy.grid.LazyGridScope$items$1
                    @Nullable
                    public final Void invoke(int i12) {
                        return null;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                        return invoke(((Number) obj2).intValue());
                    }
                };
            }
            lazyGridScope.items(i10, function13, function22, lazyGridScope$items$1, oVar);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: items");
    }

    void item(@Nullable Object obj, @Nullable Function1<? super LazyGridItemSpanScope, GridItemSpan> function1, @Nullable Object obj2, @NotNull n<? super LazyGridItemScope, ? super Composer, ? super Integer, Unit> nVar);

    void items(int i10, @Nullable Function1<? super Integer, ? extends Object> function1, @Nullable Function2<? super LazyGridItemSpanScope, ? super Integer, GridItemSpan> function2, @NotNull Function1<? super Integer, ? extends Object> function12, @NotNull o<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> oVar);
}
