package com.unity3d.ads.core.domain;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonGetHeaderBiddingToken.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken", f = "CommonGetHeaderBiddingToken.kt", l = {14, 17}, m = "invoke")
/* loaded from: classes7.dex */
public final class CommonGetHeaderBiddingToken$invoke$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CommonGetHeaderBiddingToken this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonGetHeaderBiddingToken$invoke$1(CommonGetHeaderBiddingToken commonGetHeaderBiddingToken, c<? super CommonGetHeaderBiddingToken$invoke$1> cVar) {
        super(cVar);
        this.this$0 = commonGetHeaderBiddingToken;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(0, null, this);
    }
}
