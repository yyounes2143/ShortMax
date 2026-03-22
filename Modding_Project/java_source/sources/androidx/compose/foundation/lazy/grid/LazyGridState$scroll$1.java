package androidx.compose.foundation.lazy.grid;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyGridState.kt */
@Metadata
@d(c = "androidx.compose.foundation.lazy.grid.LazyGridState", f = "LazyGridState.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_DELAY_BUFFERING_UPDATE, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME}, m = "scroll")
/* loaded from: classes.dex */
public final class LazyGridState$scroll$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LazyGridState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyGridState$scroll$1(LazyGridState lazyGridState, c<? super LazyGridState$scroll$1> cVar) {
        super(cVar);
        this.this$0 = lazyGridState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.scroll(null, null, this);
    }
}
