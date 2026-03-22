package androidx.compose.foundation.gestures;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DragGestureDetector.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLUSH_SEEK}, m = "awaitHorizontalDragOrCancellation-rnUCldI")
/* loaded from: classes.dex */
public final class DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1(c<? super DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DragGestureDetectorKt.m282awaitHorizontalDragOrCancellationrnUCldI(null, 0L, this);
    }
}
