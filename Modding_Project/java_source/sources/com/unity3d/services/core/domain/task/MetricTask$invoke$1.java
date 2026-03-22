package com.unity3d.services.core.domain.task;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MetricTask.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.MetricTask", f = "MetricTask.kt", l = {24}, m = "invoke-gIAlu-s$suspendImpl")
/* loaded from: classes7.dex */
public final class MetricTask$invoke$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ MetricTask<P, R> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MetricTask$invoke$1(MetricTask<? super P, R> metricTask, c<? super MetricTask$invoke$1> cVar) {
        super(cVar);
        this.this$0 = metricTask;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object m4750invokegIAlus$suspendImpl = MetricTask.m4750invokegIAlus$suspendImpl(this.this$0, null, this);
        if (m4750invokegIAlus$suspendImpl == a.f()) {
            return m4750invokegIAlus$suspendImpl;
        }
        return Result.b(m4750invokegIAlus$suspendImpl);
    }
}
