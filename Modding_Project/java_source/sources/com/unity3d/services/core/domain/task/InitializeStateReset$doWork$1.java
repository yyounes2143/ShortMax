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
/* compiled from: InitializeStateReset.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateReset", f = "InitializeStateReset.kt", l = {33}, m = "doWork-gIAlu-s$suspendImpl")
/* loaded from: classes7.dex */
public final class InitializeStateReset$doWork$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InitializeStateReset this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateReset$doWork$1(InitializeStateReset initializeStateReset, c<? super InitializeStateReset$doWork$1> cVar) {
        super(cVar);
        this.this$0 = initializeStateReset;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object m4748doWorkgIAlus$suspendImpl = InitializeStateReset.m4748doWorkgIAlus$suspendImpl(this.this$0, null, this);
        if (m4748doWorkgIAlus$suspendImpl == a.f()) {
            return m4748doWorkgIAlus$suspendImpl;
        }
        return Result.b(m4748doWorkgIAlus$suspendImpl);
    }
}
