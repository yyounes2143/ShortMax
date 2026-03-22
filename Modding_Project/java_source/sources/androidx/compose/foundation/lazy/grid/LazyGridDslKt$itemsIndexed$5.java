package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import at.o;
import at.p;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyGridDsl.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridDslKt$itemsIndexed$5 extends Lambda implements o<LazyGridItemScope, Integer, Composer, Integer, Unit> {
    final /* synthetic */ p<LazyGridItemScope, Integer, T, Composer, Integer, Unit> $itemContent;
    final /* synthetic */ List<T> $items;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridDslKt$itemsIndexed$5(p<? super LazyGridItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, Unit> pVar, List<? extends T> list) {
        super(4);
        this.$itemContent = pVar;
        this.$items = list;
    }

    @Override // at.o
    public /* bridge */ /* synthetic */ Unit invoke(LazyGridItemScope lazyGridItemScope, Integer num, Composer composer, Integer num2) {
        invoke(lazyGridItemScope, num.intValue(), composer, num2.intValue());
        return Unit.f60915a;
    }

    @Composable
    public final void invoke(@NotNull LazyGridItemScope items, int i10, @Nullable Composer composer, int i11) {
        int i12;
        Intrinsics.checkNotNullParameter(items, "$this$items");
        if ((i11 & 14) == 0) {
            i12 = (composer.changed(items) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 112) == 0) {
            i12 |= composer.changed(i10) ? 32 : 16;
        }
        if ((i12 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && composer.getSkipping()) {
            composer.skipToGroupEnd();
        } else {
            this.$itemContent.invoke(items, Integer.valueOf(i10), this.$items.get(i10), composer, Integer.valueOf(i12 & 126));
        }
    }
}
