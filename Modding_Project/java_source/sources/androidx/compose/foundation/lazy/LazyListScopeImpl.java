package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import at.n;
import at.o;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyListScopeImpl.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyListScopeImpl implements LazyListScope {
    @Nullable
    private List<Integer> _headerIndexes;
    @NotNull
    private final MutableIntervalList<LazyListIntervalContent> _intervals;
    @NotNull
    private final IntervalList<LazyListIntervalContent> intervals;

    public LazyListScopeImpl() {
        MutableIntervalList<LazyListIntervalContent> mutableIntervalList = new MutableIntervalList<>();
        this._intervals = mutableIntervalList;
        this.intervals = mutableIntervalList;
    }

    @NotNull
    public final List<Integer> getHeaderIndexes() {
        List<Integer> list = this._headerIndexes;
        if (list == null) {
            return CollectionsKt.n();
        }
        return list;
    }

    @NotNull
    public final IntervalList<LazyListIntervalContent> getIntervals() {
        return this.intervals;
    }

    @Override // androidx.compose.foundation.lazy.LazyListScope
    public void item(@Nullable final Object obj, @Nullable final Object obj2, @NotNull final n<? super LazyItemScope, ? super Composer, ? super Integer, Unit> content) {
        Function1<Integer, Object> function1;
        Intrinsics.checkNotNullParameter(content, "content");
        MutableIntervalList<LazyListIntervalContent> mutableIntervalList = this._intervals;
        if (obj != null) {
            function1 = new Function1<Integer, Object>() { // from class: androidx.compose.foundation.lazy.LazyListScopeImpl$item$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                    return invoke(num.intValue());
                }

                @NotNull
                public final Object invoke(int i10) {
                    return obj;
                }
            };
        } else {
            function1 = null;
        }
        mutableIntervalList.addInterval(1, new LazyListIntervalContent(function1, new Function1<Integer, Object>() { // from class: androidx.compose.foundation.lazy.LazyListScopeImpl$item$2
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
        }, ComposableLambdaKt.composableLambdaInstance(-735119482, true, new o<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListScopeImpl$item$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(4);
            }

            @Override // at.o
            public /* bridge */ /* synthetic */ Unit invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
                invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(@NotNull LazyItemScope $receiver, int i10, @Nullable Composer composer, int i11) {
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
    }

    @Override // androidx.compose.foundation.lazy.LazyListScope
    public void items(int i10, @Nullable Function1<? super Integer, ? extends Object> function1, @NotNull Function1<? super Integer, ? extends Object> contentType, @NotNull o<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        this._intervals.addInterval(i10, new LazyListIntervalContent(function1, contentType, itemContent));
    }

    @Override // androidx.compose.foundation.lazy.LazyListScope
    @ExperimentalFoundationApi
    public void stickyHeader(@Nullable Object obj, @Nullable Object obj2, @NotNull n<? super LazyItemScope, ? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        List list = this._headerIndexes;
        if (list == null) {
            list = new ArrayList();
            this._headerIndexes = list;
        }
        list.add(Integer.valueOf(this._intervals.getSize()));
        item(obj, obj2, content);
    }
}
