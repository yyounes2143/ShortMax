package androidx.compose.runtime;

import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Recomposer.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.Recomposer", f = "Recomposer.kt", l = {AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, MediaPlayer.MEDIA_PLAYER_OPTION_SINGLE_MEDIA_CODEC}, m = "runFrameLoop")
/* loaded from: classes.dex */
public final class Recomposer$runFrameLoop$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Recomposer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recomposer$runFrameLoop$1(Recomposer recomposer, rs.c<? super Recomposer$runFrameLoop$1> cVar) {
        super(cVar);
        this.this$0 = recomposer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object runFrameLoop;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        runFrameLoop = this.this$0.runFrameLoop(null, null, this);
        return runFrameLoop;
    }
}
