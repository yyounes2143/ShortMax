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
/* compiled from: InitializeSDK.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeSDK", f = "InitializeSDK.kt", l = {120}, m = "executeErrorState-BWLJW6A")
/* loaded from: classes7.dex */
public final class InitializeSDK$executeErrorState$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InitializeSDK this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeSDK$executeErrorState$1(InitializeSDK initializeSDK, c<? super InitializeSDK$executeErrorState$1> cVar) {
        super(cVar);
        this.this$0 = initializeSDK;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object m4737executeErrorStateBWLJW6A;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        m4737executeErrorStateBWLJW6A = this.this$0.m4737executeErrorStateBWLJW6A(null, null, null, this);
        if (m4737executeErrorStateBWLJW6A == a.f()) {
            return m4737executeErrorStateBWLJW6A;
        }
        return Result.b(m4737executeErrorStateBWLJW6A);
    }
}
