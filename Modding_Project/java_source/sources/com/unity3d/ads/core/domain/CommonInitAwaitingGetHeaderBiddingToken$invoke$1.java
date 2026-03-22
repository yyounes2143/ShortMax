package com.unity3d.ads.core.domain;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonInitAwaitingGetHeaderBiddingToken.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken", f = "CommonInitAwaitingGetHeaderBiddingToken.kt", l = {54, 66}, m = "invoke")
/* loaded from: classes7.dex */
public final class CommonInitAwaitingGetHeaderBiddingToken$invoke$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CommonInitAwaitingGetHeaderBiddingToken this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonInitAwaitingGetHeaderBiddingToken$invoke$1(CommonInitAwaitingGetHeaderBiddingToken commonInitAwaitingGetHeaderBiddingToken, c<? super CommonInitAwaitingGetHeaderBiddingToken$invoke$1> cVar) {
        super(cVar);
        this.this$0 = commonInitAwaitingGetHeaderBiddingToken;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(0, null, null, this);
    }
}
