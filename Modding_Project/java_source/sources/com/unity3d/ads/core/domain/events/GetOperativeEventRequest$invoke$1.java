package com.unity3d.ads.core.domain.events;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GetOperativeEventRequest.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.events.GetOperativeEventRequest", f = "GetOperativeEventRequest.kt", l = {37}, m = "invoke")
/* loaded from: classes7.dex */
public final class GetOperativeEventRequest$invoke$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ GetOperativeEventRequest this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetOperativeEventRequest$invoke$1(GetOperativeEventRequest getOperativeEventRequest, c<? super GetOperativeEventRequest$invoke$1> cVar) {
        super(cVar);
        this.this$0 = getOperativeEventRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(null, null, null, null, null, null, this);
    }
}
