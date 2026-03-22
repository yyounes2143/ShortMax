package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.domain.task.InitializeStateLoadWeb;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitializeStateLoadWeb.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateLoadWeb", f = "InitializeStateLoadWeb.kt", l = {39}, m = "doWork-gIAlu-s")
/* loaded from: classes7.dex */
public final class InitializeStateLoadWeb$doWork$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InitializeStateLoadWeb this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateLoadWeb$doWork$1(InitializeStateLoadWeb initializeStateLoadWeb, c<? super InitializeStateLoadWeb$doWork$1> cVar) {
        super(cVar);
        this.this$0 = initializeStateLoadWeb;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object m4746doWorkgIAlus = this.this$0.m4746doWorkgIAlus((InitializeStateLoadWeb.Params) null, (c<? super Result<InitializeStateLoadWeb.LoadWebResult>>) this);
        if (m4746doWorkgIAlus == a.f()) {
            return m4746doWorkgIAlus;
        }
        return Result.b(m4746doWorkgIAlus);
    }
}
