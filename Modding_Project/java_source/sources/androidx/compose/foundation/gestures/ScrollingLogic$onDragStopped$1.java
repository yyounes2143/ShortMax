package androidx.compose.foundation.gestures;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.ScrollingLogic", f = "Scrollable.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_AUDIO_DEVICE_TYPE, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_400, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DEMUXER_STALL_500, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_POST_STALL_500, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_ACK_DELAY}, m = "onDragStopped")
/* loaded from: classes.dex */
public final class ScrollingLogic$onDragStopped$1 extends ContinuationImpl {
    float F$0;
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ScrollingLogic this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollingLogic$onDragStopped$1(ScrollingLogic scrollingLogic, c<? super ScrollingLogic$onDragStopped$1> cVar) {
        super(cVar);
        this.this$0 = scrollingLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.onDragStopped(0.0f, this);
    }
}
