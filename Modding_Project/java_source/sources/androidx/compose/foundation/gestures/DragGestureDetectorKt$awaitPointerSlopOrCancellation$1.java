package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DragGestureDetector.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", l = {103, 132}, m = "awaitPointerSlopOrCancellation-gDDlDlE")
/* loaded from: classes.dex */
public final class DragGestureDetectorKt$awaitPointerSlopOrCancellation$1 extends ContinuationImpl {
    float F$0;
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DragGestureDetectorKt$awaitPointerSlopOrCancellation$1(c<? super DragGestureDetectorKt$awaitPointerSlopOrCancellation$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DragGestureDetectorKt.m285awaitPointerSlopOrCancellationgDDlDlE(null, 0L, 0, null, this);
    }
}
