package androidx.compose.foundation.gestures;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapGestureDetector.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE}, m = "waitForUpOrCancellation")
/* loaded from: classes.dex */
public final class TapGestureDetectorKt$waitForUpOrCancellation$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TapGestureDetectorKt$waitForUpOrCancellation$1(c<? super TapGestureDetectorKt$waitForUpOrCancellation$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return TapGestureDetectorKt.waitForUpOrCancellation(null, this);
    }
}
