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
@d(c = "androidx.compose.foundation.gestures.DraggableKt", f = "Draggable.kt", l = {315, 324, 333, 335}, m = "awaitDownAndSlop")
/* loaded from: classes.dex */
public final class DraggableKt$awaitDownAndSlop$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DraggableKt$awaitDownAndSlop$1(c<? super DraggableKt$awaitDownAndSlop$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object awaitDownAndSlop;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        awaitDownAndSlop = DraggableKt.awaitDownAndSlop(null, null, null, null, null, this);
        return awaitDownAndSlop;
    }
}
