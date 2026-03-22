package com.unity3d.ads.adplayer;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WebViewAdPlayer.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.WebViewAdPlayer", f = "WebViewAdPlayer.kt", l = {206, 220}, m = "sendEvent")
/* loaded from: classes7.dex */
public final class WebViewAdPlayer$sendEvent$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ WebViewAdPlayer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewAdPlayer$sendEvent$1(WebViewAdPlayer webViewAdPlayer, c<? super WebViewAdPlayer$sendEvent$1> cVar) {
        super(cVar);
        this.this$0 = webViewAdPlayer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object sendEvent;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        sendEvent = this.this$0.sendEvent(null, this);
        return sendEvent;
    }
}
