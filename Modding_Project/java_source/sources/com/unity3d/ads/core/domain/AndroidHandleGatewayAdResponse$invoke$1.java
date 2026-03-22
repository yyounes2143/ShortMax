package com.unity3d.ads.core.domain;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidHandleGatewayAdResponse.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse", f = "AndroidHandleGatewayAdResponse.kt", l = {97, 114, 145, MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION, 192, 218}, m = "invoke")
/* loaded from: classes7.dex */
public final class AndroidHandleGatewayAdResponse$invoke$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    Object L$8;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidHandleGatewayAdResponse this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidHandleGatewayAdResponse$invoke$1(AndroidHandleGatewayAdResponse androidHandleGatewayAdResponse, c<? super AndroidHandleGatewayAdResponse$invoke$1> cVar) {
        super(cVar);
        this.this$0 = androidHandleGatewayAdResponse;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(null, null, null, null, null, null, false, this);
    }
}
