package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.domain.task.BaseParams;
import com.unity3d.services.core.domain.task.BaseTask;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseTask.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.BaseTask$DefaultImpls", f = "BaseTask.kt", l = {11}, m = "invoke-gIAlu-s")
/* loaded from: classes7.dex */
public final class BaseTask$invoke$1<P extends BaseParams, R> extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseTask$invoke$1(c<? super BaseTask$invoke$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object m4734invokegIAlus = BaseTask.DefaultImpls.m4734invokegIAlus(null, null, this);
        if (m4734invokegIAlus == a.f()) {
            return m4734invokegIAlus;
        }
        return Result.b(m4734invokegIAlus);
    }
}
