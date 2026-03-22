package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.domain.task.InitializeStateLoadCache;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitializeStateLoadCache.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateLoadCache", f = "InitializeStateLoadCache.kt", l = {32}, m = "doWork-gIAlu-s")
/* loaded from: classes7.dex */
public final class InitializeStateLoadCache$doWork$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InitializeStateLoadCache this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateLoadCache$doWork$1(InitializeStateLoadCache initializeStateLoadCache, c<? super InitializeStateLoadCache$doWork$1> cVar) {
        super(cVar);
        this.this$0 = initializeStateLoadCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object m4745doWorkgIAlus = this.this$0.m4745doWorkgIAlus((InitializeStateLoadCache.Params) null, (c<? super Result<InitializeStateLoadCache.LoadCacheResult>>) this);
        if (m4745doWorkgIAlus == a.f()) {
            return m4745doWorkgIAlus;
        }
        return Result.b(m4745doWorkgIAlus);
    }
}
