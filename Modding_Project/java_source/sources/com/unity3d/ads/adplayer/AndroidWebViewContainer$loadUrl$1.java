package com.unity3d.ads.adplayer;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidWebViewContainer.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer", f = "AndroidWebViewContainer.kt", l = {74, 78, 80}, m = "loadUrl")
/* loaded from: classes7.dex */
public final class AndroidWebViewContainer$loadUrl$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidWebViewContainer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidWebViewContainer$loadUrl$1(AndroidWebViewContainer androidWebViewContainer, c<? super AndroidWebViewContainer$loadUrl$1> cVar) {
        super(cVar);
        this.this$0 = androidWebViewContainer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.loadUrl(null, this);
    }
}
