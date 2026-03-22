package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.domain.task.InitializeStateComplete;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitializeStateComplete.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateComplete", f = "InitializeStateComplete.kt", l = {21}, m = "doWork-gIAlu-s")
/* loaded from: classes7.dex */
public final class InitializeStateComplete$doWork$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InitializeStateComplete this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateComplete$doWork$1(InitializeStateComplete initializeStateComplete, c<? super InitializeStateComplete$doWork$1> cVar) {
        super(cVar);
        this.this$0 = initializeStateComplete;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object m4739doWorkgIAlus = this.this$0.m4739doWorkgIAlus((InitializeStateComplete.Params) null, (c<? super Result<Unit>>) this);
        if (m4739doWorkgIAlus == a.f()) {
            return m4739doWorkgIAlus;
        }
        return Result.b(m4739doWorkgIAlus);
    }
}
