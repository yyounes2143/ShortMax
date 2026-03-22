package com.unity3d.services.core.domain.task;

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
/* compiled from: InitializeSDK.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeSDK", f = "InitializeSDK.kt", l = {40}, m = "doWork-gIAlu-s")
/* loaded from: classes7.dex */
public final class InitializeSDK$doWork$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InitializeSDK this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeSDK$doWork$1(InitializeSDK initializeSDK, c<? super InitializeSDK$doWork$1> cVar) {
        super(cVar);
        this.this$0 = initializeSDK;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object m4738doWorkgIAlus = this.this$0.m4738doWorkgIAlus((EmptyParams) null, (c<? super Result<Unit>>) this);
        if (m4738doWorkgIAlus == a.f()) {
            return m4738doWorkgIAlus;
        }
        return Result.b(m4738doWorkgIAlus);
    }
}
