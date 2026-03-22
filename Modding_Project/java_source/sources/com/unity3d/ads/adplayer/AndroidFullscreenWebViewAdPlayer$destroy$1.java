package com.unity3d.ads.adplayer;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidFullscreenWebViewAdPlayer.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer", f = "AndroidFullscreenWebViewAdPlayer.kt", l = {170, 175, 179, 181}, m = "destroy")
/* loaded from: classes7.dex */
public final class AndroidFullscreenWebViewAdPlayer$destroy$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidFullscreenWebViewAdPlayer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidFullscreenWebViewAdPlayer$destroy$1(AndroidFullscreenWebViewAdPlayer androidFullscreenWebViewAdPlayer, c<? super AndroidFullscreenWebViewAdPlayer$destroy$1> cVar) {
        super(cVar);
        this.this$0 = androidFullscreenWebViewAdPlayer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.destroy(this);
    }
}
