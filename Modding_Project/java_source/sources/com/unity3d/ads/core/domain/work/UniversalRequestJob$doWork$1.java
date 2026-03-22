package com.unity3d.ads.core.domain.work;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UniversalRequestJob.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.work.UniversalRequestJob", f = "UniversalRequestJob.kt", l = {25, 28, 31}, m = "doWork$suspendImpl")
/* loaded from: classes7.dex */
public final class UniversalRequestJob$doWork$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ UniversalRequestJob this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UniversalRequestJob$doWork$1(UniversalRequestJob universalRequestJob, c<? super UniversalRequestJob$doWork$1> cVar) {
        super(cVar);
        this.this$0 = universalRequestJob;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return UniversalRequestJob.doWork$suspendImpl(this.this$0, this);
    }
}
