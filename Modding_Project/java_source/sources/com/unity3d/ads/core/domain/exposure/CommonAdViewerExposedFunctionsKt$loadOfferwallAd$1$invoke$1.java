package com.unity3d.ads.core.domain.exposure;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonAdViewerExposedFunctions.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1", f = "CommonAdViewerExposedFunctions.kt", l = {408}, m = "invoke")
/* loaded from: classes7.dex */
public final class CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1 this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1(CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1 commonAdViewerExposedFunctionsKt$loadOfferwallAd$1, c<? super CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1> cVar) {
        super(cVar);
        this.this$0 = commonAdViewerExposedFunctionsKt$loadOfferwallAd$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke2((Object[]) null, (c<? super Unit>) this);
    }
}
