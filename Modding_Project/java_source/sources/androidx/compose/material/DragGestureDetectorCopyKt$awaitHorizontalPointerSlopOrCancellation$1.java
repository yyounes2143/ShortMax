package androidx.compose.material;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DragGestureDetectorCopy.kt */
@Metadata
@d(c = "androidx.compose.material.DragGestureDetectorCopyKt", f = "DragGestureDetectorCopy.kt", l = {123, 161}, m = "awaitHorizontalPointerSlopOrCancellation-gDDlDlE")
/* loaded from: classes.dex */
public final class DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1 extends ContinuationImpl {
    float F$0;
    float F$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1(c<? super DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DragGestureDetectorCopyKt.m1044awaitHorizontalPointerSlopOrCancellationgDDlDlE(null, 0L, 0, null, this);
    }
}
