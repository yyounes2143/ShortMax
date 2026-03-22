package com.unity3d.services;

import com.unity3d.ads.core.configuration.AlternativeFlowReader;
import com.unity3d.ads.core.domain.InitializeBoldSDK;
import com.unity3d.services.core.domain.task.EmptyParams;
import com.unity3d.services.core.domain.task.InitializeSDK;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnityAdsSDK.kt */
@Metadata
@d(c = "com.unity3d.services.UnityAdsSDK$initialize$1", f = "UnityAdsSDK.kt", l = {87, 89}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnityAdsSDK$initialize$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ i<AlternativeFlowReader> $alternativeFlowReader$delegate;
    final /* synthetic */ g0 $initScope;
    final /* synthetic */ i<InitializeBoldSDK> $initializeBoldSDK$delegate;
    final /* synthetic */ i<InitializeSDK> $initializeSDK$delegate;
    final /* synthetic */ String $source;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UnityAdsSDK$initialize$1(String str, g0 g0Var, i<? extends AlternativeFlowReader> iVar, i<? extends InitializeBoldSDK> iVar2, i<InitializeSDK> iVar3, c<? super UnityAdsSDK$initialize$1> cVar) {
        super(2, cVar);
        this.$source = str;
        this.$initScope = g0Var;
        this.$alternativeFlowReader$delegate = iVar;
        this.$initializeBoldSDK$delegate = iVar2;
        this.$initializeSDK$delegate = iVar3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new UnityAdsSDK$initialize$1(this.$source, this.$initScope, this.$alternativeFlowReader$delegate, this.$initializeBoldSDK$delegate, this.$initializeSDK$delegate, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((UnityAdsSDK$initialize$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        AlternativeFlowReader initialize$lambda$1;
        InitializeSDK initialize$lambda$2;
        InitializeBoldSDK initialize$lambda$3;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    ((Result) obj).n();
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
            }
        } else {
            f.b(obj);
            initialize$lambda$1 = UnityAdsSDK.initialize$lambda$1(this.$alternativeFlowReader$delegate);
            if (initialize$lambda$1.invoke()) {
                initialize$lambda$3 = UnityAdsSDK.initialize$lambda$3(this.$initializeBoldSDK$delegate);
                String str = this.$source;
                this.label = 1;
                if (initialize$lambda$3.invoke(str, this) == f10) {
                    return f10;
                }
            } else {
                initialize$lambda$2 = UnityAdsSDK.initialize$lambda$2(this.$initializeSDK$delegate);
                EmptyParams emptyParams = EmptyParams.INSTANCE;
                this.label = 2;
                if (initialize$lambda$2.mo4733invokegIAlus(emptyParams, this) == f10) {
                    return f10;
                }
            }
        }
        kotlinx.coroutines.i.e(this.$initScope, null, 1, null);
        return Unit.f60915a;
    }
}
