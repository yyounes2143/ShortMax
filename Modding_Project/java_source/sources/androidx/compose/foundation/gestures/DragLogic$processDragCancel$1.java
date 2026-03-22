package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Draggable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.DragLogic", f = "Draggable.kt", l = {408, 411}, m = "processDragCancel")
/* loaded from: classes.dex */
public final class DragLogic$processDragCancel$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DragLogic this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragLogic$processDragCancel$1(DragLogic dragLogic, c<? super DragLogic$processDragCancel$1> cVar) {
        super(cVar);
        this.this$0 = dragLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.processDragCancel(null, this);
    }
}
