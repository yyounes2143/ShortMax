package com.unity3d.ads.adplayer;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidEmbeddableWebViewAdPlayer.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer", f = "AndroidEmbeddableWebViewAdPlayer.kt", l = {125, 128, 130}, m = "destroy")
/* loaded from: classes7.dex */
public final class AndroidEmbeddableWebViewAdPlayer$destroy$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidEmbeddableWebViewAdPlayer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidEmbeddableWebViewAdPlayer$destroy$1(AndroidEmbeddableWebViewAdPlayer androidEmbeddableWebViewAdPlayer, c<? super AndroidEmbeddableWebViewAdPlayer$destroy$1> cVar) {
        super(cVar);
        this.this$0 = androidEmbeddableWebViewAdPlayer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.destroy(this);
    }
}
