package com.moloco.sdk.publisher;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.publisher.Moloco", f = "Moloco.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_PACKET_RECV_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_VIDEO_FIRSTSEG_CONNECT_TIME}, m = "clearState$moloco_sdk_release")
/* loaded from: classes6.dex */
public final class Moloco$clearState$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Moloco this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Moloco$clearState$1(Moloco moloco, rs.c<? super Moloco$clearState$1> cVar) {
        super(cVar);
        this.this$0 = moloco;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.clearState$moloco_sdk_release(this);
    }
}
