package com.unity3d.ads.adplayer;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WebViewAdPlayer.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.WebViewAdPlayer", f = "WebViewAdPlayer.kt", l = {178, 179, MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY}, m = "requestShow")
/* loaded from: classes7.dex */
public final class WebViewAdPlayer$requestShow$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ WebViewAdPlayer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewAdPlayer$requestShow$1(WebViewAdPlayer webViewAdPlayer, c<? super WebViewAdPlayer$requestShow$1> cVar) {
        super(cVar);
        this.this$0 = webViewAdPlayer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.requestShow(null, this);
    }
}
