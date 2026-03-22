package com.unity3d.services.core.domain.task;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitializeSDK.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeSDK", f = "InitializeSDK.kt", l = {111}, m = "handleInitializationException")
/* loaded from: classes7.dex */
public final class InitializeSDK$handleInitializationException$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InitializeSDK this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeSDK$handleInitializationException$1(InitializeSDK initializeSDK, c<? super InitializeSDK$handleInitializationException$1> cVar) {
        super(cVar);
        this.this$0 = initializeSDK;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object handleInitializationException;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        handleInitializationException = this.this$0.handleInitializationException(null, this);
        return handleInitializationException;
    }
}
