package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.ScrollScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: LazyGridState.kt */
@Metadata
@d(c = "androidx.compose.foundation.lazy.grid.LazyGridState$scrollToItem$2", f = "LazyGridState.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class LazyGridState$scrollToItem$2 extends SuspendLambda implements Function2<ScrollScope, c<? super Unit>, Object> {
    final /* synthetic */ int $index;
    final /* synthetic */ int $scrollOffset;
    int label;
    final /* synthetic */ LazyGridState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyGridState$scrollToItem$2(LazyGridState lazyGridState, int i10, int i11, c<? super LazyGridState$scrollToItem$2> cVar) {
        super(2, cVar);
        this.this$0 = lazyGridState;
        this.$index = i10;
        this.$scrollOffset = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new LazyGridState$scrollToItem$2(this.this$0, this.$index, this.$scrollOffset, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull ScrollScope scrollScope, @Nullable c<? super Unit> cVar) {
        return ((LazyGridState$scrollToItem$2) create(scrollScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.label == 0) {
            f.b(obj);
            this.this$0.snapToItemIndexInternal$foundation_release(this.$index, this.$scrollOffset);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
