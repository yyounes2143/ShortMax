package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.domain.task.InitializeStateError;
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
/* compiled from: InitializeStateError.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateError", f = "InitializeStateError.kt", l = {27}, m = "doWork-gIAlu-s")
/* loaded from: classes7.dex */
public final class InitializeStateError$doWork$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InitializeStateError this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateError$doWork$1(InitializeStateError initializeStateError, c<? super InitializeStateError$doWork$1> cVar) {
        super(cVar);
        this.this$0 = initializeStateError;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object m4744doWorkgIAlus = this.this$0.m4744doWorkgIAlus((InitializeStateError.Params) null, (c<? super Result<Unit>>) this);
        if (m4744doWorkgIAlus == a.f()) {
            return m4744doWorkgIAlus;
        }
        return Result.b(m4744doWorkgIAlus);
    }
}
