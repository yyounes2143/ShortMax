package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.ScrollableKt$scrollableNestedScrollConnection$1", f = "Scrollable.kt", l = {477}, m = "onPostFling-RZ2iAVY")
/* loaded from: classes.dex */
public final class ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1 extends ContinuationImpl {
    long J$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ScrollableKt$scrollableNestedScrollConnection$1 this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1(ScrollableKt$scrollableNestedScrollConnection$1 scrollableKt$scrollableNestedScrollConnection$1, c<? super ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1> cVar) {
        super(cVar);
        this.this$0 = scrollableKt$scrollableNestedScrollConnection$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo347onPostFlingRZ2iAVY(0L, 0L, this);
    }
}
