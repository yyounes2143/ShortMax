package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.domain.task.InitializeStateLoadWeb;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: InitializeSDK.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeSDK$doWork$2$1$webViewData$1", f = "InitializeSDK.kt", l = {84}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class InitializeSDK$doWork$2$1$webViewData$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Object $configResult;
    int label;
    final /* synthetic */ InitializeSDK this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeSDK$doWork$2$1$webViewData$1(InitializeSDK initializeSDK, Object obj, c<? super InitializeSDK$doWork$2$1$webViewData$1> cVar) {
        super(2, cVar);
        this.this$0 = initializeSDK;
        this.$configResult = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new InitializeSDK$doWork$2$1$webViewData$1(this.this$0, this.$configResult, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((InitializeSDK$doWork$2$1$webViewData$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        InitializeStateLoadWeb initializeStateLoadWeb;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            initializeStateLoadWeb = this.this$0.initializeStateLoadWeb;
            Object obj2 = this.$configResult;
            f.b(obj2);
            InitializeStateLoadWeb.Params params = new InitializeStateLoadWeb.Params((Configuration) obj2);
            this.label = 1;
            if (initializeStateLoadWeb.mo4733invokegIAlus(params, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
