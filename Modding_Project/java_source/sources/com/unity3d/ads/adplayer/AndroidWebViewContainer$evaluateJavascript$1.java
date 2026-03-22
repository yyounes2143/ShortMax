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
@d(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer", f = "AndroidWebViewContainer.kt", l = {88}, m = "evaluateJavascript")
/* loaded from: classes7.dex */
public final class AndroidWebViewContainer$evaluateJavascript$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidWebViewContainer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidWebViewContainer$evaluateJavascript$1(AndroidWebViewContainer androidWebViewContainer, c<? super AndroidWebViewContainer$evaluateJavascript$1> cVar) {
        super(cVar);
        this.this$0 = androidWebViewContainer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.evaluateJavascript(null, this);
    }
}
