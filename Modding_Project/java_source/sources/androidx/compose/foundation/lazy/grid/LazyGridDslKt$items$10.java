package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import at.o;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyGridDsl.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridDslKt$items$10 extends Lambda implements o<LazyGridItemScope, Integer, Composer, Integer, Unit> {
    final /* synthetic */ o<LazyGridItemScope, T, Composer, Integer, Unit> $itemContent;
    final /* synthetic */ T[] $items;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridDslKt$items$10(o<? super LazyGridItemScope, ? super T, ? super Composer, ? super Integer, Unit> oVar, T[] tArr) {
        super(4);
        this.$itemContent = oVar;
        this.$items = tArr;
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
            this.$itemContent.invoke(items, this.$items[i10], composer, Integer.valueOf(i12 & 14));
        }
    }
}
