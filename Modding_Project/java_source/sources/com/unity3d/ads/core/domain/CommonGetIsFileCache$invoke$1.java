package com.unity3d.ads.core.domain;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonGetIsFileCache.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.CommonGetIsFileCache", f = "CommonGetIsFileCache.kt", l = {18}, m = "invoke")
/* loaded from: classes7.dex */
public final class CommonGetIsFileCache$invoke$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CommonGetIsFileCache this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonGetIsFileCache$invoke$1(CommonGetIsFileCache commonGetIsFileCache, c<? super CommonGetIsFileCache$invoke$1> cVar) {
        super(cVar);
        this.this$0 = commonGetIsFileCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(null, this);
    }
}
