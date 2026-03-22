package com.unity3d.ads.core.domain.events;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GetOperativeEventApi.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.events.GetOperativeEventApi", f = "GetOperativeEventApi.kt", l = {21}, m = "invoke")
/* loaded from: classes7.dex */
public final class GetOperativeEventApi$invoke$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ GetOperativeEventApi this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetOperativeEventApi$invoke$1(GetOperativeEventApi getOperativeEventApi, c<? super GetOperativeEventApi$invoke$1> cVar) {
        super(cVar);
        this.this$0 = getOperativeEventApi;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(null, null, null, null, null, null, this);
    }
}
